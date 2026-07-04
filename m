Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB0F3A59A2
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783168714; cv=none; b=inyjeSR5LKgFVUVx30pJtQp/e9zOnmyrlExDKMng7QlFxzt59op5kwHIH0D61TaSwt2VijGpmEJP2ttUlllF0aEO/N2/xT794LlOO8Nsxb1donAKHDY4CbbIhlXknr573SOr4mWSEkO2+/W2PR9KC6KBsFz1/Y4DlqWYC9YrOJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783168714; c=relaxed/simple;
	bh=ZMMKf0qHnxNywu0Vlx+fC/ZLeAzZzmtv+Dc27RDGFNI=;
	h=To:Subject:From:Message-Id:Date; b=UxgPWl7o9Ev8PQku/7nSMrxC2cMMSMDAYAKVZb0aybZfIo9d6rk7J7N1KV/I6gnyfsDGpl7Jaju294d8wxqceJONz7Ozp1gbn/2j/9hKWXaW6UFVMqy6YCn0t73bJy3R76Z1D4hhJb974osaohtb9wu5AyB6y/BoRlA3MZBmkbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH1uMrSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH1uMrSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3D4C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783168713;
	bh=ZMMKf0qHnxNywu0Vlx+fC/ZLeAzZzmtv+Dc27RDGFNI=;
	h=To:Subject:From:Date:From;
	b=nH1uMrSJdiXgRdwIjcHZfVqKapET3/ZrhVMbRAMbyee6FE/eBxK0rfUXN8ZOdgxJ1
	 2BlCJ0KB26jBnsnIa+A8Cj8KxuAUHKtWLPxStcQCW/MsnB3jWwSVKv2tZZrtbosN1V
	 BDTt4ITEWJ5/tlcW4ry7XykQHKYh3mZNe1102gwTOoSvj4/BcbwbMwX0wuh6/Nzh5V
	 oSZVq3eXz0tbfeGtkzNrmoj8Jr1EpAeu8WmkP/GQYbq2j9s3XYDY8UUHWWhJol29Ru
	 z56LbINwhU0S61A2ZJyV7Ljr11377r25NdROxEk2w/E7jVafmqDufaJxGD44DR5edE
	 zSj+Vo+rnEAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE464C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316871368.5688.8868813004763749737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c2529f38915e7526bc3aed02ebfd69723438dd3d4ad455f5073c030d87047d
Date: Sat, 04 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783168713
