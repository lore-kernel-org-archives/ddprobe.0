Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309651AAE13
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562754; cv=none; b=f8IX925Dx0D03Dn1+iiCdCFV2qrMhaKAwxSGucxuykvHahIacjn8smFI1YOmHnV95CzHtWPEtGKfvfdGP6q87Q3Yn6U/J6q8rbW+UOGjJiUq8ddYKLBGIRNKAMBorZGuIdM07CzedFpMUKXAMHaFgOHkIZEai0fPQrAbCHcYvh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562754; c=relaxed/simple;
	bh=RUl4o8XTKLR+Tnmsno6kNx9qb6IBLiyXS+7ldo+51eo=;
	h=To:Subject:From:Message-Id:Date; b=DQpTtUaufBd9i77GA3HIzdygz190CK6GDHjgKRayBWgQJPsMl1CkCQ1Df7md05lo4k0IguXfPuoi3OTEfWVGbOQrVBeFHtO6XzPdCcGemN9tzKJ2aekEWPQBeOn88iPcVL5k+3+Rqs9yuZ2aOCEIzeQiQMrq52wheVEoKsEqr8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VApO4Si9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VApO4Si9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F39C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735562753;
	bh=RUl4o8XTKLR+Tnmsno6kNx9qb6IBLiyXS+7ldo+51eo=;
	h=To:Subject:From:Date:From;
	b=VApO4Si9HIZTLdV/014FQzNer93nMfImgRegaKyithJCgtkIOl2LTFXmC0yLzHdom
	 QORkdHw48rapesfP6AaA/ym24ARNIJNoEVAwTkUtFlh+gEpvh2lN2KgbBH5wHCix80
	 +Yz1jU64Y5d/Lpa3i+7jAsD6W5uuc3N6951XsxgUcJr+X/DZUBfX7+XicV51o5r2kg
	 WAyd3snnaf4QpWYn7cXx/ZOz2rb0blGNNg7uTdHzx/HF2UMx4ArRkz8VyGMxfM0X2o
	 5LXnl2o4QPB4ObGT9l/QP73V4tNSFkuHVL2Ye5cWf+2up3PY9wPPXSuzkiaGD0j4Wb
	 4L5dNwlkydD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9A8E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173556275361.26535.9521854239838985489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd88abf96eaa6d7b612332ba5a372397265da9d2767f0eff57a72194613cf946
Date: Mon, 30 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735562753
