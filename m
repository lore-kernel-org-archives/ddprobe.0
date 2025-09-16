Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8C3238140
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017394; cv=none; b=CRuFGShguL6kKVLx+RthoIjxgvUsbuahCiA4Z4z3WI13prsCE8yaxZXhDf5TJwNYtu4ov3XKaFLNzF8w6OA4yfnzT+O4l0u6ZuMkZJfPihb6C055lzBiC/ICJ6w5D0fnnOJ7OTuibzh8SPsI7rH2kKFmNeAEUVrEt3ZLZP+N9hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017394; c=relaxed/simple;
	bh=y0i4bh+n15FGq6zFylprfwAWSaPd0izLFjLP8n5jVFs=;
	h=To:Subject:From:Message-Id:Date; b=Puapm75YEmsPEJr7I9XqIgPJ4gZmfRm1l2ZFlevOY4lKZbnpX/sVoR3Bylm5zi2Purhahmelteu8CAhSTIiXKIC1Wsx4ju7q0CYZ9ntnc9ytT3lMqYYjqYzLAqiLvqkTrmotsc5gUQipVKS3IN/CfX4iwE5VM7b2irfZaCjsef8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKoPU9gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKoPU9gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D63C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758017393;
	bh=y0i4bh+n15FGq6zFylprfwAWSaPd0izLFjLP8n5jVFs=;
	h=To:Subject:From:Date:From;
	b=nKoPU9gpq+paLbHotAUT54KLKAOSeIEbiHCm83Bxe/S3lMqIGRdQafKsyH9TKkFIm
	 hq0yFsLOZGWIzGsYil1wRw41yfU1ivXryaoWtqvQfxLjsc5Ilp+XRu+sPg7xy0Kw2G
	 z/qX/ehKdAtsZwwgkP7CvFuPocr4vm2IWrpkq0fzNu0SU4cTn+rvGduGUvPNypOzuk
	 hzz/obrOLrN9PhBdl7/cER7ox14Apz+spzVxFjLobROVMNib/GwYo45t/fR1wTYwBL
	 io8YUP4ehs0Dt0PfJhF6lZwAr8Bt8G2M4OXgJ0hYw78bWVTbzkXnMTXuOqg06Cleqn
	 HqRQ+e57tmAvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5DCAC59A
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801739357.3710.4069537809230801729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b200ad454d79dc22c1346c4356b837d81003f92fe18b1e5d493aa5f7369f2d1c
Date: Tue, 16 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758017393
