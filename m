Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F8F18DB1A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780027354; cv=none; b=n96a9G1EmtWSpYTyuh/WqEvrl/BnnwvdIeGsa9FaJZqlLRqcaej8fMLYhW+/zhEX3cbUSAVI+XRe9wXX5I44rZBFpOMberD7wLF9CQK5YmWy+ptFhf3mZ63BdSD/YSXAMDyJEZRioipNWaiQAsxkuTwF/W+3FRLNAB6BB9uow8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780027354; c=relaxed/simple;
	bh=QVPWRsNgPrIDpNovfzMrgkNJ8jyrh/I3XB/Knvf0xeY=;
	h=To:Subject:From:Message-Id:Date; b=WDjMM62bbR6XaKaavnwrfRs97ms0ab406F8Dy6lUOw3DBz/SjRL2/77ld7gYgUEUbjD5SSFrtQeFaLaBxJvJMPNUdtC7a6rI0XLrVx0wRt62FWWI6Wv2/NZUKMA+MqlpH03iVrAvPEhkEAcJaeaeH8G92O4y1i/v8BAET4AzivU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DboqxvS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DboqxvS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CD1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780027353;
	bh=QVPWRsNgPrIDpNovfzMrgkNJ8jyrh/I3XB/Knvf0xeY=;
	h=To:Subject:From:Date:From;
	b=DboqxvS8jxPpSDW7/c8P1Tn1eTECEt/CrSitbl6Zet4MuJ5B43ogvCUUPWw1d040g
	 KE2LkemDwvEA4foMfLV0dI2ZYSYKY22Pn3hMhlrtqEcvLHQnJNjRDPQHnnCreVvDl1
	 ER6gffyEFkTNb3C/0Nq9atWT7PMmrBA2x41WherXhwRgKCJ1PW3txygjb90x52ZOxn
	 mZ7LQHsu4hJ2u586Q5+SwU3JP7iLvUk8+M2Md0Oy7Pc3fyOVGR+DJOj/jL2026GjX9
	 wgnBtV2z/VX9dEtPq8YvJOuygbYzlaEDeirhKo4V5G5KmrX6fAOH3GHj985MVvOqsm
	 oF4MjyDyTb2jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC093CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 04:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002735368.3247.2758659202752349653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b57d5fd0e075dc68a4ad9b91577c0e179bbdd8e50cae683ae657b5131a60b19
Date: Fri, 29 May 2026 04:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780027353
