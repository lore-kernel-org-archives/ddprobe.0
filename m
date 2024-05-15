Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58007620
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715732543; cv=none; b=uZNf30cdmzd2jFMqrkn6L90rQIo7KoOHsw/WT+naCFXDu1d7JDRlBomFPAyQpi4b5PbrebGnOb3x5CqUNmG/H8VJz2/R58WLV4gbVKmLaIa9FxZ7hZv1ZmPDFSYfPIltUz/Lnoi2ki5l2+KjNHZGmCMUPoeZEA2sHljbsn6iVkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715732543; c=relaxed/simple;
	bh=WgZ/kI/sF6sKZS8Tf29pHXnKHJHszg8U101C+9N7Ujo=;
	h=To:Subject:From:Message-Id:Date; b=hwgotKiNtImipEX3MOqcQS89EBPjQirDtg9//zKzsqv8CPylBCPnTa7IB2OJqftwy+c/OkFNCBMdgQi0J0KhGsxAYIY+srZFTIiWhzxKMCc4T+Gj700meqDfIvG/Ui7miaQ9LDlpLSSWB5CynMuovaNPn0hzsiH/ncAeNdEBB3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sym/S7FA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sym/S7FA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF21EC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715732542;
	bh=WgZ/kI/sF6sKZS8Tf29pHXnKHJHszg8U101C+9N7Ujo=;
	h=To:Subject:From:Date:From;
	b=sym/S7FAhjPtBq869D1FCpydvHXp/WyeUrlt/JpSAYJPw3H4YzofuVBNVkk15cntM
	 KPAwkm2nq8DLGrpfg9IAarYge11cmXQA9tM3EV5z+AQsOVvBVC4zbO26oTczAG63yF
	 i3R8ttfM0cIFdOoglWCSAfe5/xtxmqYRhiBstDu438m92I97MfS+dr7hTqzzRhdKBF
	 +CPtBhV4Vyaoci+IOazI3CFCjFCJVTSUf4NLFJq8E8HkAxiaI3yvbMdiiILU6E1GPe
	 4icdzlzrx0VN/Kk4GQi+P0bDmJ/L0+Rp37yFylcbM58YAxzeK2xQEJIbKRDwQU/CQZ
	 evk0s0ARgynJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD301C04FFE
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171573254276.25109.3128968011337029955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48978ce7b4cfb1dfe1df66449b461dddce63e7bad934213127d5c07e31699ebf
Date: Wed, 15 May 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715732542
