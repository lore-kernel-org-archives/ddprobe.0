Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8952153FB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762814994; cv=none; b=XdfTtR8glBJDc0h216RryBrCnJurlAd1Yp5xi1TBSS4DoSZtKZ8ZkX0Kh7UbuXa1XsTWczSt8ctrlCz8pkVZptHHr/zAbBnxXBQtB4qjC94Efs1x4YAUIZK6vUhCYlB95y0jVEglFKZVJsipjesA1pPhZiCuS4L7L51ZT4T3CIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762814994; c=relaxed/simple;
	bh=JMFrJGvnDFOHenFQrn1TUytKchegvYQgY0ByC1DWGd4=;
	h=To:Subject:From:Message-Id:Date; b=nLZY1GCYJnwgKyEJb9MeT2gKkAotxn6SMsggC5xYxUuPKPMJp4sM6Sot3EmA0M45FnNpAMlZtaicZjkudCC54akuYaLPKybhdSBGze1B7tzJTsjV6Am2U/0M3a7QhchKgtzP4fuZBjTcUKTFnntOvXkeGsuPXPMKrxypc08pEMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4xs84V4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4xs84V4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D149C19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762814993;
	bh=JMFrJGvnDFOHenFQrn1TUytKchegvYQgY0ByC1DWGd4=;
	h=To:Subject:From:Date:From;
	b=D4xs84V4CU4FrdHsUpPghvFUsI4uKxQ8gU/Cuw0Q1fFoXj07NietoBJaedUiLYIe6
	 VxzmLzL2ILPXBBEYRssCjOQdrKarRd2DQC+xMAVqRdUWvWZv/4ZFXq9Y743luPjn8+
	 +YH6P78D8ymr8TRR7WMY3MYLFi71+6PLm0WdhZWAoaoNLZhQfbsSO++15xkH5fVU+K
	 vl9KDkBBKRWL4tQx/Rde/WJhA+GKQ0jYgsEphLtwTiZzgUEAAllX2yzMrGTDoYUqmg
	 khmjSWm1xB017y3ZGtkxfRKqXWnC+jNgxtdl471tgF5yrXvS3CPiL4IEd+JT+JoOJW
	 4Y3WhKJjJOu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB3CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281499357.29245.8586436417731432255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ec6ac9680f3d32cad943ef6755ef4601a4361a5deeb96a363d4acca6aeb29a
Date: Mon, 10 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762814993
