Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415E21FAC4D
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742646594; cv=none; b=somlZ5qY6cxSdapxQx1/gubnWBpjouNjbABKoKhOqz2jIGFGLS8L9liknuq2pg7cELFJ7NiTcKZg6Aws6p0/4yKNVPkvTX1+8xvB9+7K7Zp7nayoAdca+yi2lXXDoR8acXMUpXijE3MiM8adPEus4VC5MBTtQrtHdia4+slm6/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742646594; c=relaxed/simple;
	bh=bQAPGYk8gznyefVdUb7w9k5AOjb1H8C1UGN/qrJxQrM=;
	h=To:Subject:From:Message-Id:Date; b=CNZdrSNyee2R6Mt6eR9FL8QK8Mtd1LlASZgnZWfMVJoc0LaJlud6jLif5m+IS0TRJezk4/9HZhAm4bW6tBJlBsQHWU19J3VfZhQMRPbCOmg/6/o2IXXILyDTJ6Pe/khZVYFEwDf672ujh+g/xjE/+jhUnHd3jmaXlVJCAz9L8jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klffdmm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klffdmm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D38C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742646593;
	bh=bQAPGYk8gznyefVdUb7w9k5AOjb1H8C1UGN/qrJxQrM=;
	h=To:Subject:From:Date:From;
	b=klffdmm/FKNFarpTupmHKXCgyRsynAYUhqALBg3CMezBe13ZS1JoABQJrt5mn3LFR
	 WoVVtVAixADLVSBgnU2VNqSwdNg7+HUW+r/O8FAzjSJ3AAbXOM5oNklyG88lae//1i
	 FTlvZIO2h3n2ImAGhvplHBCyPZd+Ub2QN5Ck6PzUoqi3aN2EXaQUrK3CqZIaN9TMf/
	 ELGLATJDZH5xse0VIz53Pph8hawcKoPBMqu3DgjU0uq33auZEBNCw+86Bh1tXy+n8G
	 nVv1oXXNL4U+a0uTTk3abEKAU50a91tXBzOIIG7U6zIWVI2JhAc2w9tvnXHOsgwa+D
	 Sl2fRxncL2Ojw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30F8C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264659362.28799.16154147270274755749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3113519f651eddd29821b3c1f59a45db72e5a5ad0db2fc9601cfcb8afafc9c32
Date: Sat, 22 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742646593
