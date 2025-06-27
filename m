Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301BDBE4A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751028594; cv=none; b=Uy/CRg5sBoItLx9cCSg8wMpVrJ1o4j/0FNvSmKkci5W8Wb7GSToMaYzsq6ndBrc+yyDZgolDMP7MpIIxf453bwPzMHPYxeANVhQWmmCBR48/EbeHfrVCwnMv8hRGcNb5Bla5QsUvI6EpaQuaxa6hKDfw9iGhpWWR4HboqrucSaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751028594; c=relaxed/simple;
	bh=BSM7FZFNxE8r1AjwKaWe7Q0LGOfy3udAorWFUG/eAgs=;
	h=To:Subject:From:Message-Id:Date; b=R73rM+2loiZ4L1bZhVL4QerPZEX6iOFBhnkm9Q8uvl3mcaoetogalDb5KpFOhP/2WRcTz7oMdfXRrWOAtTyJmpYnngrm//MMwuSUdjsVfMwvMAHTTnlnHrF/f66xX2dX7TBLsoZizNcA19nxPGCekz68HCR3T/vYezkqmdiu3tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stlAM8SF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stlAM8SF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751028593;
	bh=BSM7FZFNxE8r1AjwKaWe7Q0LGOfy3udAorWFUG/eAgs=;
	h=To:Subject:From:Date:From;
	b=stlAM8SFhdG3cnr1y1uZfVWE93J25dNYSLnoDrc9GPkbM5Vwfr+FHHbXU7L/o1wl/
	 et35cBcLG9CyUjEzXwGVHJfVa3FOMwthUuDhIaBV3hBdNRq/ZATfOpWv4TJqbIVqxy
	 X3czZjC3tvkzhx7QFSgI+JK0yxLQLxu/jAYoHn0cQWfJL8dLuNTFonz4JMKhMccMME
	 k51IQBmlnpgAounVcas8TR5FUhJNsGhnFxJ/it/v+5FSFFXtpG5Yi6GdA1QMheyRAm
	 bfAZR1PzEmuzZBXpzb6C4ZzXPOlv2PBEJnabVJbfgSTK/PfSFljkUYUjDyvqZm6NtI
	 +MX4jygQqNbtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078AC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102859358.22336.7960337813206407084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a6965945084f3d4bb459b7120f733e9397d1eeee6968d38deafa40a7dac712
Date: Fri, 27 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751028593
