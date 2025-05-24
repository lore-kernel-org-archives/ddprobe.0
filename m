Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612BC46B8
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748045394; cv=none; b=l2DLbi7MBuEQgfnUseQmptnL+wonvGq1sAZXlkIjpug9jBfi4aC7dTEtGKRqRTUwgkvihQGNnSTpDqckhk+6vyv0/PcPoy8JuJCA68z+LhNlj6xGzgoJTGyJx8/qVL04DrRPwubZ3ZuwWHeSvBYWg7u9pN5eluSqw/2iR1xB1Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748045394; c=relaxed/simple;
	bh=wi5HV5IwyW/tDnu09iel97fYLwPCDvnitkRgqaxMDjs=;
	h=To:Subject:From:Message-Id:Date; b=j2H3NiOWNI36MNGGxxuri1MhTZGyQFQ5m0LXRAHhA6I/y3xQynusqb2ZlI7N9XavZ/ql2/Ct8GA6Nc40dl5lUVDbb4EsID8Le5ygirc3bxXAm5Qw4UJp/fEeEdRGpfnZ+X5NAE/65zSeTs/GENVFrct8AKFKeBYxrKo05cxqA9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQwjKfuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQwjKfuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6019C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748045393;
	bh=wi5HV5IwyW/tDnu09iel97fYLwPCDvnitkRgqaxMDjs=;
	h=To:Subject:From:Date:From;
	b=bQwjKfuNZt1c3nlwSN/H0I00MdNnr3TmcaR3uBtYG2j/NwWP5PR9JknLs/OHyvt/e
	 iJc6SkbLdOpz4Ua5U73xjXwg4Blb3IjuekGbxammlg/oUrTYbqKpPX1slIJY9cf8Jq
	 zYP/9teUaPmnryQ/hF6Q6bQEak+GGizrqmrqx7zxlFNDk7NQAcIVJKHCFBr0FxseFC
	 iLcjY2IQU/MOI53ZFviGw2YuW8njydH5CdbA21Vg1IqD/KBUd3buGlUQPB3M4pGYHW
	 mKbbj4g49rN4OEaSeZFp8JHfB/2C/cXrSM3XRqaH5s0a2Qpo+tfAUwUyKuQBFXtB6S
	 cIvf2l5WG+77Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDEC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804539357.6158.16253871887520506582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b70c0225568744eb9378225536462162ecb0c7be3479bdbfbd729b0b0c7e1d
Date: Sat, 24 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748045393
