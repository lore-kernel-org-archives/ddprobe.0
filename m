Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3367E9
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749466194; cv=none; b=h509douazy3y0l6+QRfdMhhlOr83JlZdZhkGiDgv/1r1VEWLYNPmoCsPRvDQXRDY5cx9usorlQwHmjNXqttLX5nb1hJzM7zvoZfMYWihqDGlNK66PwxZXy9YyNEMbOk9kt1Nxb79Cnvya2SJpwvS+5OVrzIhVnyCdiSnwKPERmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749466194; c=relaxed/simple;
	bh=wzjP6LBrb+yFuVy82Zrn9/MFiDnFHqgEnqit955VMcg=;
	h=To:Subject:From:Message-Id:Date; b=m7eGlGDcMgRnKEua/mVbGHASA7VBPY3FiMquvG9FnvQ1TBRrA8TyULWu5EVZJIRzdXbhKq2Cp10c7rhnOZqXHTMqetTFoCY8+vvpjjUla+dB43lJLuTj5jV95sz5yv5jPQlDMIzw3NIKc/IDsz4etn9HQp44FqDRynnPToXVqmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Impij75J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Impij75J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749466193;
	bh=wzjP6LBrb+yFuVy82Zrn9/MFiDnFHqgEnqit955VMcg=;
	h=To:Subject:From:Date:From;
	b=Impij75JCgF9aZWIzM1am2gx9ZYFyHH4/LgY+9PZTKRKOrfOH8dEI8Gzt4GwZgYmc
	 BZaenonSDN7JE2xj7sUYwVlFK5h+hCfBrHPsr/EiGhSuYUXM6IpEAVOHVgm6dm+m05
	 9YdAi7zveMbQaFJzyvtUpdDRZt/jMAe3+DzVFuBtVUWT0NnCJ0N0+8glYqwGScVU2f
	 vDmN5xCt2IIqMZwFCaTgtE7S8zNfnfQmWLbt9zjH6E0YXWbWHuWOIqT1CuNWSogN41
	 opDzMRb2s/pHEzv5YOLAOO9SwKf9WxLzuZzBjKOT0setBo48v9VC/bt9uzU7fueJYV
	 OqA5Piv2/1ViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5DC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946619357.31511.13815613886233095155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48f3408fc72a2cb08aee5330ad5fa1b47e020e0bfcdad71b2dbed79e5563ea9
Date: Mon, 09 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749466193
