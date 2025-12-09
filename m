Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCC22773DE
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765314174; cv=none; b=LToMNvnd7n0Kn/sNhlB8jeIp25N3Asg7ozHEV2It+RVyaSuHIJmBzFO6DxFGeGy9FctzHJXJS2F0iyErrFWTrLJ4TtA2drtugPVZDfokp3XQF0RqwGkqeWB61HJUmxu26/JeZSk/dnxbcfYT6S3LxGcl2AnYXCwXfSnjm1lISG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765314174; c=relaxed/simple;
	bh=zuZL2dcOrGb8P7xLnU0wF9d47tAWRD8d46yzizyhlWg=;
	h=To:Subject:From:Message-Id:Date; b=oDZWtlLPCTCjT9Xr1+MQ/3XT0hPvASTK3nE/ywNB7tRXhz+R3Xt6GGILKuSkHfvkAAgtfhh57u+LoOeqUBcIWf4Kq9gXiSZ4QGrmUHha8K7hsuF/GZZoVhQt6hSNK9JROD6FA+gYKfLGTC/Bla00EhTdZrnvUczNV56A7uPMCXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEDVWkXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEDVWkXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD87AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765314173;
	bh=zuZL2dcOrGb8P7xLnU0wF9d47tAWRD8d46yzizyhlWg=;
	h=To:Subject:From:Date:From;
	b=eEDVWkXM1wHlvdZShiFqUKZ9TRC1o5THaEmYEvGllqNRzo+Q31hEChUTD66sxYtCI
	 iTHC5ztY+VcxYucoz1VRzwvolkusaItgo+DGuYfHpAxKx1VJYo9rm/E2AP26ItjCFx
	 zfzACbzL3gPp1TTVS1JKaBEDibxTMsPXIaf1WLGNxwkCaXAjsMSXlqPZspOLhcopHI
	 jRahgXLh31pYsPJiO0BoJu2s4OsKtdVh5AHW8AOQYz2F8FSMimLqsr43+JG6H61XWn
	 kZRAVLkqQIi73XIHASRzx70qR4+t9gGES/3pULYS0uFHmD5QEu56Y91CsYSdoIx7sw
	 nNFZ/GNwWXr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1E6D3B996
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531417362.13683.17119794281681616567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8a9ed4a50c773cccc504c07509862036b50b2f4cce6cbf0661c48ad3193c70
Date: Tue, 09 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765314173
