Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B15A1F2BAD
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775919454; cv=none; b=b5DLsGp9oloIweFPGYnXEWJ94soMlQ49TH2ugHccwg5qJeVZbEDv89l2xIPQEQabLyKwtGk/ub3TRTL0wbrdEcbbqqhqAaXJXHZqyAqcD6FwJ5d66pUnrgnTJ6ZeAfv3doO82on4jAWEsisvCV6LqyIR8wvtOgXTDEXSfCCQwOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775919454; c=relaxed/simple;
	bh=qITlq/epUkkT3hKBtmSVOg9bByN2Qj50ckkHM5Q78SU=;
	h=To:Subject:From:Message-Id:Date; b=qc2Hu8KHRcV8X2JtlP3PT9ebUMF95NboeEBaP9IlSIc0ptbiG5kzu9RfrzssiE2limhGBF3mJkcUbZl+m2fbxrGSjkbxUXJ8WfL+Bl9oVxzs9VFZdffTMG9WDXccP47sfGp5muT57xJrx3mM3vs/Y/yjmgi95K7JSiE82+jMnjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=my5TKrnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="my5TKrnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8939C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775919453;
	bh=qITlq/epUkkT3hKBtmSVOg9bByN2Qj50ckkHM5Q78SU=;
	h=To:Subject:From:Date:From;
	b=my5TKrnSPwFp5es83+AAJre2LDajbfSxp+MH26edlVsUI8mp78Y3DK/2gr3iiU1mx
	 yOgrSQTTJ2R43QvXXDmX9NZ9TnDBURWz/YeFSlH4+6Pip7Aa/507s85RzdqMGXb682
	 vBqqho7gbk1NsL2LZf5pnlZXcyVnPKXwQWNgu+W5ur8gfj6RFzBsdhlqFiHVLvp2uC
	 jWe+Vsl+vA7K5QovxI5NTsHu5gy0UWBSQrwTXA9m0Ffh3ud6EsFGdzx0MICGdS/jb6
	 yvbv9+5yy63NX+Hm4Jp+RcLPcmkjnPYY1vWm04gr1a2bkk2KeNc0SUlm874/gyzP3K
	 5cv7M6Q2banRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3DAF3ED4F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591945368.625.814689253359664680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5fa501257d4b10dd2889f7fc241bba4ee41d91716ad91965e611a29b958fed1
Date: Sat, 11 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775919453
