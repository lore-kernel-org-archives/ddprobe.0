Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468B828EA47
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744320594; cv=none; b=Ly5VjkAV3sh4eh+91yESH4Z+nt49/WK0R2Mp0+nAjYWvLjcc4xyXOQ+tfJYx8eVKD0c6NAnaECcwVsqurWvY5AgJ9opTRHmESwazQd3LYj+m4+a7o0PBO3MocrvbSBaADNX1GUqniZS2WRWtCxzU6NTO0xE5uH0/EsruA8OieGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744320594; c=relaxed/simple;
	bh=32f13D0YETFSJmcAXn2YGd6BX0+05isNgwQvZ7kBDuc=;
	h=To:Subject:From:Message-Id:Date; b=ja6DadN7Kd/9Q0L6qSf9OHo+GHdbyzw0/4X+HoW5m3SNLRKXnHQGhJx9i0e6WgTgwVOMgp1nP7ek5YMWhc6A93U0+HQQyuNego3SRNkW2SG+/k/4dibweNdC6jjbUn6zuQ1Mjw14Naaqns/rqeHdskSl+cPZgQH1XPa8HQPjGpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZESkFHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZESkFHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB606C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744320593;
	bh=32f13D0YETFSJmcAXn2YGd6BX0+05isNgwQvZ7kBDuc=;
	h=To:Subject:From:Date:From;
	b=VZESkFHkYjOQZRIPhyoHWj148hqN8481XctMrCM+hRq8uA0X4NumTny6+L1oU0I2l
	 aEI8Ql+EyuyAmirDM3qp6owXaiAvuiRSqpKjOBHvSv4HxS3asKJUGHVZ8ziRbt6LDI
	 qLqDTPdmBokksBQ66jPsucnvzaGUrwvH14EQDuIrxBvDt/yl2NIrvLtujItkZWbgfC
	 uARmnRjtJbZy4PgvuuWBCzyd67hQIiNkpfkWXZjrlcpIfM1uPiOmlkDXK7mMqXyP9Y
	 qf0O1JJdVqUV51CUPVNfRROo4KlL8Y4DGRZe5PIZ6TQChUtvP3tGGM77dKBUanNufb
	 qnvAtbAjl3Neg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F81C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432059358.9339.13693346550679628527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b515b1a9fa7ba0c1995c94f44d6224d422114f0fef309a0798a1f5921c745338
Date: Thu, 10 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744320593
