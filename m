Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCB73624AB
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782113194; cv=none; b=NTjIMyJIoBBw1iF0lZ0vvJPEtoHqRdId5clZ8i227p11Y6wQle60cXrgDQuFfoGp21nStqWQmaTQB5Ktlj/i8zg48y3d1jD4nnm69J7BOptkinMhWZ2O50fiN2cOnNsBBilxCUC2fFQ3vKFCq/tpFAve7A4zWDbZNBSv599cEHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782113194; c=relaxed/simple;
	bh=4LdN3AV9GD/LOQN1UdSNX7QVxWPCUk4289rRBkS7r8Q=;
	h=To:Subject:From:Message-Id:Date; b=cOwKdCbJOyO9qPVwKCC5cB5DzlRl10p0ENbCT28LUFS3hMZNptjXIUosDYE+rir4Pkf4bcQMXMMse8m5Zh4Ztaf+OV7WwH82EYimSlNUGeZaz3Yb3ItU4dNw6+JORdDxRxxyH6FzIBtKJAdoSz0gEWcf5z85xFrmbr0oX9mVVrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9W4mfGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9W4mfGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3E0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782113193;
	bh=4LdN3AV9GD/LOQN1UdSNX7QVxWPCUk4289rRBkS7r8Q=;
	h=To:Subject:From:Date:From;
	b=G9W4mfGjrcQHwsQ/19+e3tv6n/REXZSgFCbZ9gPhHIE6z9vAcyPCih7ERsxZyYP2A
	 6YhL7UH7JFefHcka3rI//Sfl8fBvDU2xYuVGXAsQ4yACXIGuDJAJCi2nW62r5wZ/Wo
	 VzX5AcNH8V4SjPTXFenNekN7agU3+bneSIxgxDO8TrnGPmUFFRYakyXRlYkdNKr59W
	 aptf9VaH4Wgdfr5NRQIbwBzOVDJnoDtG3u1XgfzoR7BKnFaD1uqHOEblhY4NuwEekc
	 HI97eMeWy2RpObPMwea0SDzGBjKpKb61zK+6lXr2gYZHEtA3ToPJBK8GLbNAiqg8Ml
	 YWuH/RnHKOCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA68DCDB471
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211319374.10106.13854966208265866046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d90d30e644200b8dcaf8c49ad3e5539d829829e7f79d5adfe8852c4990fe6c3
Date: Mon, 22 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782113193
