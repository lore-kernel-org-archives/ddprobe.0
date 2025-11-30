Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E74C1FD4
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764478374; cv=none; b=g8WzHLYcl8HV/g1HZHJkM6K9y57h/4fmrobqEPTSpvJPyRN1VyfRsrlLCOzUwlsT3x6n9p7CUWRNl/J1+S3+0kJAjLgGD6tzEeNUwVowDlAW5eMuiW8RFLjOSrnTmAv0ZqKwBGRibzKw6L0bxxNJ+v+eHQh8IJU/mOpwz8WMiVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764478374; c=relaxed/simple;
	bh=hAxfX/K13uzonTZfqda5acnFKiIadzm7XeRNyjxbih4=;
	h=To:Subject:From:Message-Id:Date; b=XyJ9WxiB+1MegGqjB072O5XoQQX0EahSH0d0BkpxsYkdV45LlKf4sx0e6H+5Np9sfDPA6/ZSTopuMhDvRHG/mmtLTfBBHgt945Ggo0ZbRBAmTVqgM/ua+cj2t9l1FEtafoWJLHc9NC51+zUQGGHwzRSf3DT+H1JlV/s3b47qezc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhsdT3qS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhsdT3qS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5AEC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764478373;
	bh=hAxfX/K13uzonTZfqda5acnFKiIadzm7XeRNyjxbih4=;
	h=To:Subject:From:Date:From;
	b=fhsdT3qSadoQwlc+HrM0qfy1pPIKxuhGVa3RG66iWnp3Fzn1/f2Yon4Tv4VUHoKMz
	 N4d6gvCAonJpyZqhGV0O6n+IDlpjIyHLkSu9X5QAx2gZXinevxamw4r38mM6RZ+37L
	 /j5AR6PiLowycrztjtFhomUdhJ5it5cfYpulYQEgL+puRJet+vV71Ezp5sPrBZNVGU
	 WvJF2jzTmIvHVFwvXGdWuK3iBHjxOw/WV1UieQrZaI2HAoOUwQnk9ukpUrVEgjHB06
	 CWhQo6csD1BWmggZ6lzlSvbCR51dnY2aNYnOBDUhtB63/BbRp8fmdSQAR84ov4tb+o
	 Tf+sDBY/jNxig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF10CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447837360.17472.4235242850004919028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d702a0cd486ae4516e58d70b72276d50b0d74f4aa9e39086f01efd2131399a
Date: Sun, 30 Nov 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764478373
