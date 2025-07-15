Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEFC2D6614
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752574194; cv=none; b=FuT0qzzGcU669mg4YHP1xcR4tBubNH3csGxDj45ap9gLl2GaJaQx0aOMqSq4SmNhMkTvINDcktMGUtGscmmsmRYeSxbtDlYvjVu5r2KiMuCT0pIoNbcOMweT14edGZ/H1m0uJFc7WiE6R40UJpeMhXPWYraS9jBvKmohw3hJ4b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752574194; c=relaxed/simple;
	bh=PApXHhBAfw4xj3UcACEvJ3nGP3x1UySJD4ivlYgIvMk=;
	h=To:Subject:From:Message-Id:Date; b=oFmxG/+0bBjPThh9w1AjTf2yefcPqn7u8rBACIOz6mEN9IElH0+UXixg+O5+j2NwMXUxXrdGg+cyB0TM9Yx6Y/Y/SV7LNY7C+IXam6py4NTrwrdndNDo8CYxi8Hoby6jFJtCC1QijlA/YBQCPU8f8qiJt1Vc/scaoTVxbeENP7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsV3MtTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsV3MtTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62EAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752574193;
	bh=PApXHhBAfw4xj3UcACEvJ3nGP3x1UySJD4ivlYgIvMk=;
	h=To:Subject:From:Date:From;
	b=fsV3MtTlAJ82+xuf9ljCYJOUvlDW13oH30X6XDX6mTZQFCGR+ca+f9vwWKlx3j/tH
	 c87K6vMqzdUtHiL/fivWuD2D0HHEqZbwTscddy+4qrYJjXnNiJUeJW/nuVwUHX83gG
	 Lv//c0bECbMLR1q5H196TNjj00yIpspnYN+cDkm40BhE36kkj58s5p/qNRAunoJyN0
	 m63LGqecvUB81P1Kzm5lXyH9GyUA8NQPJ/iXZTDuxcRLRwnVgXHFNu7rru4SZTZkRJ
	 uQUv8vhO5O0InrTluR4veb0SObNOEvxXISD1dZDax3/aNAJRcFbo3ddNN8xNg9CAzD
	 9tydewRrQWGPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AF9C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257419358.5223.17045665100295489447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d889f1c03b05b06733d3ce7cbb35484f324f66914681ba88ae6ed44554261de7
Date: Tue, 15 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752574193
