Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7E71F9ABB
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730913954; cv=none; b=VOV6rYb7z76rFeJizXUJTRbLoHowltGXWdDyXFpixqxRUWz3JmJ8HTom1F9VTDWQttnHX+Nf0gDLv1am192wcvMuwZXl/a6yRRgd2uYbin1ELhY3do6xwrTp+W6bjuM5k3HjB9GpyzoZNJ3qCvfICoKwN/NvQH6gD9IVb8c0B9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730913954; c=relaxed/simple;
	bh=/NMbi0OFprGOknBAdZx0EiHKrR0nykUtVFy4olTktH8=;
	h=To:Subject:From:Message-Id:Date; b=PXC5CYtpLEztwVkdPKndkUkk/35hREjBYikgOjFJUN07Es6/4V0KJqg20q3sdfu939jf5l/PHfv5U27VJ9ghPGQ1MHEEM2o5uFb21JwTbXDcZAwBA0QfXpcqOnbNpjbLnmMRHnpS5XqHAVARsWPbhCmV3jzQQA4fV1ElUwGJ0+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUnHNyMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUnHNyMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD0C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730913953;
	bh=/NMbi0OFprGOknBAdZx0EiHKrR0nykUtVFy4olTktH8=;
	h=To:Subject:From:Date:From;
	b=aUnHNyMa4KIM82R5lTHfsDbOFsVYR8tkEMc6XqZAZEDr4vJ3DCvCh8ph+v+n0+kw8
	 uqJYcqK2JLlE6QECs7l/rDW5euB/eCL8VF+y1+fDZS+R2jDH4hJz7gRJju4xUURCWt
	 feb3psSTjDcJFeE3DRpJKU8vU5Rf43NP6qAFu0L3eu/+Zy7mntCPy6329T8TQS9F35
	 iEBF18kEb4XCeGNG/V99sv7PuneBA0ppbHVQ0ggBNRfKB0FpZnxt/fML3/6jyG/W42
	 6CrqM9a/PK3K2BoCSHfCZ87RbzqpCtCnzxKuTwMJIfAT1cR3ngcuauhd033uIzAwwp
	 2yUYk9TYf+mxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BCD59F55
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091395357.24621.11635830524751224275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b51be36424e0266e280f77f3da726ea2ae3452c61757a22182cdbab5d97e6b
Date: Wed, 06 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730913953
