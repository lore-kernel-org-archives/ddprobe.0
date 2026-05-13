Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0908A478E5A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778685034; cv=none; b=WdRXseFBiE6rbPijuIm3LnawgwKdE5OhRD5b/mspKMHyLNpPWyFSMHE6xHJ8wWt4JKZMRqE/Hj/0lKK2q8R9DENGLhE4ohaMoMoJ6DHw3R2/CSHtvPolFMnRMWqTHR0wUYK6X3pukjyBBC4vDG2cJQMqXB6+NDqavVJJ6HNxPcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778685034; c=relaxed/simple;
	bh=f5ok+Sy5HLdhtCG8RYZG62oJouE+qWp21g0VbnAoxd8=;
	h=To:Subject:From:Message-Id:Date; b=tKnPx6gELsqR0aWx8XoHsj4Z6kctIfyd3VmWZT7eW1U3h6eDTILRdHXR/qNFAtn18t4EJJyG53WXaeBMNOZSGt6n2lMYDWt6mJeBRET10svW85EzbTZghZK3HEXIQxWiGdRBhBKw7CgCWc3NssVne3REWWxDqFet71IQIWAuR/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bu9A9bdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bu9A9bdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B888DC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778685033;
	bh=f5ok+Sy5HLdhtCG8RYZG62oJouE+qWp21g0VbnAoxd8=;
	h=To:Subject:From:Date:From;
	b=Bu9A9bdPCPFLWZ3zD5y2g6lrFVBsh/v4GGbsVZTd2M7/GQ6WiqODmu17I5WE3nmCm
	 EpVEZK4G1QjmRSOk0KEsUravxP20KMtCXpFw8pd1dppe/TV3GMH3VMeZZH29SbESK9
	 Em76MwB4kZdJA0gtNdkPyNMkNAXEny/I/gap8vCa8Qj1zIUQSAIMJew176gYTHPDZB
	 Fva4Yf+a7ukstvLxlrTvjFe3iX4owseQJQIGe6jaYx9ee/EE7LiYRaSpfUt3cORtFh
	 yUyt/aY1JHLL2O3J8KUOHU3vrbVE8s45EczrMy7Xz8s45SapdE8ypuZVgmMF1hfklf
	 p0rePxBOQUSYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE6ECD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868503369.4249.12345266166974834909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b68ba01e4dfd764ec53f57105c030a675e4e968119ec3d14ef1c6352fbe1203
Date: Wed, 13 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778685033
