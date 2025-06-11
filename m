Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D5D2F4305
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749683394; cv=none; b=QVykhhHW5oRBjLjy0BUhCH0zC963QCtkpjxM9TzFtM2q0kjyuvSUpbr3MJ5X8p+rmSyFA5ig/R/sbAf69V7lsnsP2vqkJJI5J+gxmx+ZP/VEkQZrdq/7NydkOOMZI/m9/9QNMZ3PEYL1KoU5fvpLBsNIfPstZwtyQqWCiDfAAqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749683394; c=relaxed/simple;
	bh=cJrHSE/C06q+tcFdulHwa4okJ4f/LJ4f8Ky+7bYLNN0=;
	h=To:Subject:From:Message-Id:Date; b=OZWdjkO9isecdSdi/i+lIMVfajTTeVOrsTMrZtWrBtHE7gmGZB/1l4ZMSmVWqaJ/w0w8dkqQYwVkbcfd3Br7vDxJQ9flUhkr+amqPPqYjahqRHbZ0PpVjxXmRkYf/S5xkkxXANAtzyx/shtTC5Lwt9qe5UC9CUyXTVpuoPmC4TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uA0ypr14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uA0ypr14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D0C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749683393;
	bh=cJrHSE/C06q+tcFdulHwa4okJ4f/LJ4f8Ky+7bYLNN0=;
	h=To:Subject:From:Date:From;
	b=uA0ypr143Avqu/qPwnaL8Bm9c5va+0zQ02Ja7mvdqld2yRuoV6vVCJvHmCUrtcDnQ
	 pUOx7LG+PFF2dMfDtBx9CLXCXh3ZLBLzYNg3kpKxiGfz7s3wiXb/boUNHnnwddzHBJ
	 eOBXxQqAvKHLecPC3anj4ICMVaYlKYerjCBI/Yb4N5oX67QvrIXAV17Fxhtcy2kUlc
	 xSTJLYXQ8UJ13yrSegZjN93gh7nuBRH+ZaRCTrFKM1aY1J476752lyvMJbgHzRVF4q
	 oc71Bfr8q+h+SiPQ2T5goCac9g9tBRR0hOvlOPV2iSy22gWWodUC07fYu4RrRuFn+p
	 6GjxWa7rkt++A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921DAC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968339358.3638.16760029598422669409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0067960bbc7d0d283c25d3edb9a75378b980e8c8fffc1e6a1a1cf8813029f807
Date: Wed, 11 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749683393
