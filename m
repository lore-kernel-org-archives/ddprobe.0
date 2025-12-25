Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FF0212566
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766685834; cv=none; b=g1SNUGShjEanTuKxFoRxChSg2LnxuTj3WbIIalf7YAC9nDu8/FaljIY530y31uMeKl5UkkzcoheAwmLDVNxcFfVkGZmv/rKXM4stLbeyzMB4VSgrWscVeM9kyJpvQyye3jA4+DbFz77rFH8KOqL1aJqlkNtxv5G9afZ6Md0+3L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766685834; c=relaxed/simple;
	bh=j0WLQTbHKAwU6v1NZwSjZurnYz/OwxkISHTACMm0WzU=;
	h=To:Subject:From:Message-Id:Date; b=RU3qnBnsM+pGV0E6sWjw8NfoIwarsRUAUsQY/Hphg2EggQtKXJcphl0DPwQMEnhBXhIbw74iKDZJfd7TibhcRmPyFoI6Vxs4VLqw+iLh3+azCChqxcQ43N0Tyt6VsscZoSVyv9KkxKFutOeCkC2fh4fwIedaq7tGsR51nAAMMWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDaacefc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDaacefc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AC4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766685833;
	bh=j0WLQTbHKAwU6v1NZwSjZurnYz/OwxkISHTACMm0WzU=;
	h=To:Subject:From:Date:From;
	b=HDaacefcAyA5LWJMM7uu4DHStV2EHwPRMlm1ZC9Md9sjncHoQn6lbn+oRn/HlWLP9
	 yGjR3EFu4XppgIL3KJ5S80yN+iAoPITzPWuMuyr+mbFLarWyHYirRdGvadNAFJ4f2B
	 Glen5xY+Q0/vfIrBO7ZlIOAZs0mBIalC4kyKlKdAIa78fryqWpiUSSz33+C/1ZExfp
	 9ACdXzdbJ7vpUtFHEuE2B4qTJzcSPC9yG4hHCVijgw3WDalKkWiPmAVnfFyQ/ggYzL
	 +rp9jymiZiWOPbn9my9eVQl1/xZVXuVtACPamKXhvwlO/u7dK4mLH2Cs36/QNdL3Zs
	 94xHxiSsRbP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EADDE7AD4A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668583361.19228.17544084109119740941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22021240a215f7ae0c3fa4aef66c5acdc225cbd83abce52f69f5a4ef8545cba
Date: Thu, 25 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766685833
