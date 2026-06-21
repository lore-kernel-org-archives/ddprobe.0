Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992E0377003
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782080194; cv=none; b=GENmwzqc3NqePqOC4oPkgWavTqfkeTS1+TA8IM95QyBO9FlC2iPf2LG5sliUPO+iyAcx6vRHswtS3Z62SL/9qkMshVoVf02x/P1SWnbRGKdStDiNJMFB5nJ2zUgmfkt0bg992AZ+cblzyawarNQrQhtTFeBkCactboeDMQP088c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782080194; c=relaxed/simple;
	bh=eGaZpqagN7j5YXWHnNt+YYuJK5S2RYJJ1ce/tOCWenc=;
	h=To:Subject:From:Message-Id:Date; b=L8CKt2ul/9OaQ4kFX6UXI58ygtyi13y9E1TpB2BFICbElH06xrW4xJag6n3VfO3gClsew70zUbUmvUdgmKaWdQhxhy7/le4VdjocEo0xduzHjKSQNgjFLto9g4FZKjpYb+60PfIBeBVn6zLyrVI1Dc80YmKyiqsarYD7KL/+RqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtpJ6We2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtpJ6We2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B3EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782080193;
	bh=eGaZpqagN7j5YXWHnNt+YYuJK5S2RYJJ1ce/tOCWenc=;
	h=To:Subject:From:Date:From;
	b=PtpJ6We2oCCbs+kNFP29kNhuZLz8oa6cm1qlMn2a1PGkccRu8n0NvzEb6Y13sxAzu
	 BVCMuzBK57Z53W7hMCSQ3fAHGfWziRfjct56Qt38YeBEtCX4ekSZZai8Lfa0p7zzMi
	 4BVwki9t21E4cfSKz2GbsRONjd54MSR6K/LvdTIMuJTbtYl1w+7NT9tgYx6Kpqz6g1
	 WmBOI8yBDfHAvBYpnQIdAJsCF79JtX4dJKf2uM7eq9JevAjhbXxlkN0jnHOMOoQJId
	 jSUVK9+sXtf+eV2glKh+nuPdAOBWH71Z39Z2sJ93qxjw0WcIO2ARdXG7MvDEnaQ3fW
	 sR0VRYmP7eLYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA383CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208019368.24845.1078678137408392177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749dc9c10d85d37bfb3c5cc226575309509a98d3227a66f928483c67d11fb4f7
Date: Sun, 21 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782080193
