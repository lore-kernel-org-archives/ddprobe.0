Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0FB28C84D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751322594; cv=none; b=O5Lpd6qa5FfhufEsXpKL0zu5lUcNtCpggZYYS9z79uJr8DHqLDaJunhD3UwlGJgGqMX967cojeDow6ObEGJcvhJypB7eww5dX/sk03XZyNx1JfRxWLGlRQUs2nvdERYgsP9pvV4tM1L574yCQ31D1JrOoXH0xc+6SZQEKng/geg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751322594; c=relaxed/simple;
	bh=iXCVehcKSMHLYi5pk46g53g4Q2jvAHdxfmj/mropc1I=;
	h=To:Subject:From:Message-Id:Date; b=dpbYW8s0YsWoU0rImfc+RykOjth1WambhJM5Radim+ueDCjfFW6SLBp3l3q6pv0BbJh1i19F/cYSQNf2bfHU37jq9vBeJZEQuksgHGd30h2IQ7oAKvDvMvFZiD9ODFS+58q2ZVkMjrd0Cx1a4gF0fGqOKIOFDyL8xvd0oLui9f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GseoE9ZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GseoE9ZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1108C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751322593;
	bh=iXCVehcKSMHLYi5pk46g53g4Q2jvAHdxfmj/mropc1I=;
	h=To:Subject:From:Date:From;
	b=GseoE9ZEG95p8X017ZqQt86PZyrTDKpW7gHD6RCPUDk9uqUzWbzIx2FweD8L2xdpU
	 37MdOnQe2vkR8DC7bLkslVo6PYoKOKjYOKzIEIidmyQ8rpzxXN/A1nuom431bt98qP
	 bdRWPxQPmZvbuKSnlH9RtpEhgzhrQpU7OaSdNQPE3MWqRi0Yqu/YJu6n1S+PRP2oNN
	 rP9rbq2i8JfGzzbbDDKDMflQ92HhwHQ8VpybuPFXFjDrFWkkjRvf/Gp35q0epdLLnQ
	 4e8OYf8DH/7NY+9aYgRd0HXGBxvvHyA/9GyiqKQE9fDaW6p3W/4GBQ5K6UhhlDay3u
	 esjuSEXanVvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9124FC83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132259358.17721.2373394632146383678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd67832bb15594b11521c8517dfcd9d951139ea22ca0f9e5923cce005bb8deee
Date: Mon, 30 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751322593
