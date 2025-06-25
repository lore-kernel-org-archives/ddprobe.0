Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDBC1A3A8A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750834794; cv=none; b=Clfywiw+61zIJb7Tf0TKf2mK5oqvxd+YijMSU2gPuHjlM4sIu9TkjP5TDUAvlSvOtQkOvHokZPkE5oY2UzozP9JNKkJkhlqP0hCQr+T8+svbx5kDKK1/a2UmjM+5pxHT3e/suVk8XriPxF0uJ6Vk1XUIhLs3p7jHLxHwo4dM9F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750834794; c=relaxed/simple;
	bh=uU/vOap5TJIzA23cQTkQxFDoAJDnZS4F+xuIPbEAP8U=;
	h=To:Subject:From:Message-Id:Date; b=hufTH9wwhckYj7y7B5FJ0RHI0E6VKL5Oz9+m5SOLgX6lgWaLmJ5035DLM+q9lMbwzZyv22zAfCcFv0tYd430X+sJ0z2fFFjT4csi58U1FKuTbfUM1PlwHjCDGGIWSxgHyDVY4iIxv/6EZF8ZLiXVUcCpJ+iCuYi83vbZh7yh650=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7HKF7uQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7HKF7uQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE65C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750834793;
	bh=uU/vOap5TJIzA23cQTkQxFDoAJDnZS4F+xuIPbEAP8U=;
	h=To:Subject:From:Date:From;
	b=u7HKF7uQJmE8RY/OJl+QadMKGXqbMqTTN9U8CJKs02TdmE2DvxztOUoYKFHY8RjKA
	 S36rOFOgXQ9YPVYO5aG6QHxqC1H4qyyNEMqiXo8TBTBsOdu7Gs5TVE2V1xXtzutbGd
	 VN9wJxcNdgfw+/6Roy3bcXVHvpcL7ZMwiqwUTsv+B+rAATec6ixsRcwFaKrt4vxSd4
	 c/RFcqOWuD8v5X7p/E5lDMkWZY+enLhk4b9Q3ZRHG7d02ulJF52Sbanz0+1qhisL1D
	 zhlkH2PEer30+Co9SDRvPNKanw/Nqgvm6DPWjhdgNqNM6TOLIlxhNtC3sNDBeqWBCU
	 dtV0pAf+Xxx3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9852CC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083479361.30111.1688132930834663589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d929d68a8983d050cdfeaaa544307e35da9530bc348f271e314db7ff698ac73
Date: Wed, 25 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750834793
