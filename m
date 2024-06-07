Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E57B18732D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717765643; cv=none; b=PxxcKOmFaT13LgROhTPSPwLtvKOLubgzmQvPt9+h1z//TfWx48txbzsfH1iJQHTP3T6AHyFQeVkvXTI19YxWwakZDSdD70Jer9SoqHAS6O93lmslM1kcefVHU/s86QcCMRSjO+k7Qs++5Ulwj+z5bn+cWQH7AHRWMTYpTIApAvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717765643; c=relaxed/simple;
	bh=fgYhiTZFC/Pl9AR+F757vkkQ8whqvDxhTLkuabz7rXQ=;
	h=To:Subject:From:Message-Id:Date; b=W2Fa2RFxydjMnVBdr3JZd1gCIH0fZfgYd7tKJyFTibTCCRD2cv3xc6Anp7OaaKfS0+TN5t0y1LzUvk81HpoS+zIo9bmbfR/5SNWWlcQ7HQNMtb+1S6gQe7L2t4OFQCHawcBWBgCOgwV/Jr/oTFBkaTESnZY6yPbw/uZd/GrNJVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sClvV3fL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sClvV3fL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB02DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717765642;
	bh=fgYhiTZFC/Pl9AR+F757vkkQ8whqvDxhTLkuabz7rXQ=;
	h=To:Subject:From:Date:From;
	b=sClvV3fLGnYoIlvF1/4OwPNRS4PugMOUzTWuavIEeBWCC1DSFRLiHDG/WezSQvukh
	 bqcEEhS+6s2O1+L2CFli0T/0X6klbTj9GAmID7bEaapgmJVlHzqEomiRMwyxo1Pdb2
	 HN4Or7mdl/DkoHG4ZF948rbEOi6Sk4E9kOgxysujAZKI6fUU2y3smdh8svc93gRE6B
	 /cGHNxeDQhms2hBOFMPstWa70csTxXvEEGPhChLHoKPg7CYJ4G1bfoLoAe7+fNCwIx
	 qWaxSkHtUDVVAqkbxmq8yaAVEkIFqX92WZWXNB5teMdT8XTHZH0XJgxaIS5WCmCYcU
	 YnGmabwlhQu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14F3C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776564278.22160.12709029425996763624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4fbdbe3b3f6a60b2d26f2add6f38e52b482ede3e5097193f0f1e376c22f4e4
Date: Fri, 07 Jun 2024 13:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717765642
