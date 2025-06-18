Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF6F285077
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750289994; cv=none; b=Q/KLuI23vtlXIk/UOWfjjgbR4NLH73CqvBMJ+jz9Zoncebl25w2YxTSfHEMbS0OCiV9scllralxtxqG5gfBOaKuzpow0Ng/IKsST8rN+LPBzwNmsTNIJYWHy7IhQ/ddI1RWapDuZm08clOLyR2NP7jwvssCPbcsmaMNda1pNKtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750289994; c=relaxed/simple;
	bh=2v8LhLcjHGp3A7qfByHc+pyvXgvNYAoPHgjapcROtVw=;
	h=To:Subject:From:Message-Id:Date; b=qnMecTdDxA7tNtfBL8J3cZ/CFNnpGyKUnC8VS5G0Kb1Sp85LxU2XD/j36giAQd8KSNpYkCF/QuTChbcv4VWbaqzkQ9am/7ikgyoFpWtDzLd1Nj5+n0vEyvyqSg8T2l9HAXUrprkb42ni5Pd/sLe2GBjhcPEBALJc9kRbNdGfsNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqOdDi8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqOdDi8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3010C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750289993;
	bh=2v8LhLcjHGp3A7qfByHc+pyvXgvNYAoPHgjapcROtVw=;
	h=To:Subject:From:Date:From;
	b=OqOdDi8VoZ3Bmu5J6fj+b4bsza24xr8az6dRXPDvp3XEK8xrJJ+h+9gRXqt+Dvjww
	 waCyxc2mkdc/rMfFMMBz2v07pxQf8C53NF0wNa0nE2yL4GtSFlSij2EcsKaadqLDxV
	 9IJhaNonSwQaNC3qHNR5jwZc5fXxNrGRWClrTOIEUKWMuJ0uhwCEth52F4Wn+Ia6oH
	 JzRhW7h103ZAYcbnYonciKBUnkSPBQUdlgFmaCp8wj8nn9pAFnPbiDjx6u0BZzx0Nr
	 Fzno2T4uiLpfy9Ymwn0lYq7nagiVJG1v/VgvMyO0RC6SpgTO5tPKbl4EhBv/YzRJDV
	 AduRik1KZyn+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F027C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028999357.21186.5620882855256263321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe29a0ab3d770572ba7b6fcbabfcea3ae73fe2a50a9bf6784bf57bae1a638e69
Date: Wed, 18 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750289993
