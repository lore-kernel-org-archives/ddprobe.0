Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6211F76035
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742201995; cv=none; b=KIrgpEZTYa2iK6+PEP3YdMy0LfbctbW4P66MmDCOubs8hQJBy6ryiRdQK3LA8Oinag9jz289mAYGZ8gdGITGScRa7SXUt/YVIcCdnsJdVyTDZ5xI/Lur0i5Qru8bFX9eg0RDZohfZVBFmDalEHSbyiCZzNiRAzp29zAB2wR9yiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742201995; c=relaxed/simple;
	bh=3uvnc/nnJwUfwUBhNx0scmINQpcXbJPHBPdnRkOmCWQ=;
	h=To:Subject:From:Message-Id:Date; b=puBbhv4U4zwGinnFI2sIDFBv2JWtrISXhZUhyVWTvrpVV76kfD4g5NlppvGL+hUMt3+fqfVy2n8S1fw9TQcnKQ949HFbDhsiy9Bl7BJBo28sutoHvdTGeM38tslVWQyGuyX55Ojw5TPSc0gDDm3WOfdCBry1rn9AmPidYpb/MoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOgaEQrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOgaEQrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16D7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742201993;
	bh=3uvnc/nnJwUfwUBhNx0scmINQpcXbJPHBPdnRkOmCWQ=;
	h=To:Subject:From:Date:From;
	b=gOgaEQrAoBIFEBHDELr5UIwbKshimaE5iEBKpY0q1YYNuy16eFMob+yob2O+2Hhhq
	 KZ+yDV3ZPJzBiKHyfyRT6OSzpgTC5UIKqvfMj/0tvuhuUJCB7Ck0hvmFFtIBoysfn4
	 KKf/W7SSnggZ+kTelBZA0mvXyp10u1Xee1XxxZICJXWH2WiXz6TVTjXswccZxaCt6W
	 AkxaZscH4ChAVBwQjSp9WYzISGP37Hh0RwaQkwNpWcT8YFuSbgZWyDIdZiqCm3Z4kf
	 qRxeG9o+4opxDt7TQvT61zdnGr7/I5B3fgeuxB6AdsQOlvd2i42TQDOcdXtSYENvYZ
	 OUkwqV6OzIBAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4384C35FF3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220199363.26993.1617401029151214180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9c7be4076fef801d3bbfde7facec5016ac6e0f1805846eef63d1ac2a006438
Date: Mon, 17 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742201993
