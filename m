Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0B3281532
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779556354; cv=none; b=b1Nlyw4z17UcZFxJH46gWaQwdtWTfcxuVKZnnpG5gFAAsp/poltrb1VFNlwkBc3ZLQVfZ2uWAXqFFeYZvRR3/yibAtj4+8m6/Oqg2DFfQxbScrzOa13l1vjDN+ciFMKq33APPxnewOVvZtBN+B1AmJ1QCA27Eqf9n5gfLGVJ368=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779556354; c=relaxed/simple;
	bh=v3geQFS3oaXW6Y8pNHLKux7z0rU8vTMHm3p4V5PkZGw=;
	h=To:Subject:From:Message-Id:Date; b=uCa4QK9ZIQSIL/XMO1+GeCpFT7o6luYjt3r6pxPqKsi6vFgtMyL+5WEQzFyv035WqJDb7asqw1WBugqhObowZLGYx91y6+Notb1plpxKLNXszW/8ibOnVS64orcnWyzvhljmjjXVD/gcrkLQ4P2GbOhoNQL4reIW4ITYlveKAsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skxbaNYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skxbaNYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEFAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779556353;
	bh=v3geQFS3oaXW6Y8pNHLKux7z0rU8vTMHm3p4V5PkZGw=;
	h=To:Subject:From:Date:From;
	b=skxbaNYBY4vl1AHnllTTFtS8sOz4lpkNs2Nsdj0xTqc/koSBPwVp+zvNAzlGkY/Ju
	 xodKb4rkbAVjvNp8xgHIQYSeA8h/0rGRdtfLkPIU+fQLU0UwEf1evFgEwR45La8GFb
	 6BE3GR48s67XaBQdIGpJHHNi8NhDXDkYthxrpBl07gHfYRsYFAps06k0modEGrFCzK
	 iAzDo/Kyn7KcJk0koNz0NBAK7kz5wcy+2CBinmHe9DBw8pFWTyCcdGaT0eBy7Dh3yY
	 SIIx716iR4UxDsdCNVsNszwVoHd5GLJxCrICJ8a8nxkPfZF6432dnXjX3bNoIxBX58
	 IWSDSa0Ojs6lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE26FCD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955635369.8547.14611730658028637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfda8ed20595100ce0dcfacf0b76bac23caa13c6401905d82965dd4f97d3e46
Date: Sat, 23 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779556353
