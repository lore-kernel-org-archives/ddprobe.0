Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CB32111
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750296594; cv=none; b=BmiuKJNA39morg442kXf4/Soi6GxCcbFimJxSblsxcbkILTVrfw3d/vvfdaGuBL68uXXXtjVplewRjWY5f96v5TWRSVEJDjbBN9tTjS8VHEpgc6+2/RKbYDSKBtxcnvNcLZ+jp1AY42Wr7lrhB+BhL1t7Q3nQ40UIK1E46SGvv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750296594; c=relaxed/simple;
	bh=AMYNYXi3a29qMnFRpcnWpE2Wxs2pdmH6D/ISfPddgzY=;
	h=To:Subject:From:Message-Id:Date; b=lIEmhZ5hm5uynGD3/z+P/zWRO7XIxwcOE0WRBXLkmIyuOZIasO6I+/VCKfF3oDP6dWMyqIMZkg2kqxfB8nWFt0b8lzUhbROb/JR/3S3r0E+NEAe1QUmA1Cssi+dE8jn+XYH6MyOHehzkbQu4pzbPaxkAkfWVyCJ8yENQt//vu98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWULqyYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWULqyYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A930EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750296593;
	bh=AMYNYXi3a29qMnFRpcnWpE2Wxs2pdmH6D/ISfPddgzY=;
	h=To:Subject:From:Date:From;
	b=sWULqyYJgEoOmeR9SVRFIpEmxQpOkxESGmr+GlbhMEu+P4XEpu+2mbAVZ/oMPL92g
	 hCpqxNANU/WVVhCWRG+OW5oC7k/d6w11Tio0Wz2JQaVjfaDfBssR4n1Utac/T8sD+2
	 rEqvj1IvvZ7V3M1ycQ+TymXfX3syb6rUvJn+BqOl6/ppAr7riLCZOyigAwzaTOSfiR
	 xPqLYYnN345GictRE8Xb+GEI8YHsL4Vhu+TqOMRXOuFyL+iUt59DgjxiXXrnQFJ4gU
	 Fq0nagVx4xz2xw2k0yQ676K74yl0Ufw3GwjgH6GRbg/ZsV5DY+fMENUf/uORQHyTfH
	 MICX4xBdix4Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DADC71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029659359.20287.644900600874678289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983f5014f753d7204adea4cb52d7930fe75272eef9e99d807822b23f2d000ab9
Date: Thu, 19 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750296593
