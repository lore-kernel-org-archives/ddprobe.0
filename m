Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2844F1DE3AD
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745444994; cv=none; b=uAE+wjmMPTioHHlSEep4RPlICgDWGTvJVTQr/Jl0Eufr7vlTlv5VRQ9KTyeClRfq10oViXBj1rde7qGQza1nCEI0juPxndFjcsQhqg4iSx4vk6A7VHhpo6sei2ieVYSvJtpIBfe6KjdHQ63PtYlNsIwfZa2ld3Kz5DAW51T5kPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745444994; c=relaxed/simple;
	bh=2R4L78vFhfMHWzUN/ocj0k4/s8ZUhB+xoMqNTO/Tj8k=;
	h=To:Subject:From:Message-Id:Date; b=fJ4wQ/Rr+iS7Csc46wye35adnaQjMcCrFkQq2dFJxAid7EZNMTykhHxHnVxhFIbmASkN8agW8PILSM8crIqmss1lUoaMd7uJiQ/njn/RH30aGd7tTLPtkeKLjO3c/BgeXIYa5RGvBkDZYQJKSLFm4WpS7jSlwwGHHwBl1FluSwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3VZJeTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3VZJeTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F298C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745444993;
	bh=2R4L78vFhfMHWzUN/ocj0k4/s8ZUhB+xoMqNTO/Tj8k=;
	h=To:Subject:From:Date:From;
	b=B3VZJeTdjDjSqBvSs8G/KTy0kr9IrvrzS27Tk+wjxbsusGkiKShkIV/ayVpdU6jwM
	 Jcg0+hmPuQdlAKGUPeAJqxn5DXIH1NIwLXP3zo+QqTMik/rPlND0cSJmHk1F9rNdXe
	 0Kh+UctX7MmNgwhUuGvAhya3wZdYTjqYTO3NDlmggz82YenV8a3kq2mIkRjlhwaBhY
	 6N5fAb+MSPsEdRvTAMiv6a09ZcwVyBTNlyOQjkeLpYqgxM2uzt/HY2R3eWAMVHoOEn
	 03aTxQOr0q5dICs601eQ2zmxIZorFhGl0lOfKqy1JMSxGutZIlHu7bxiofAt0kgHjw
	 xA8IMoCcV9IzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70AC369D5
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544499357.4603.998069185569240001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e31b0efcdd47f7514e94b37a23d6d4e492e53ddaa4e22bea5fc7290d6f32e79
Date: Wed, 23 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745444993
