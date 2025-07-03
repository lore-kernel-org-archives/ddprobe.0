Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DEB2D3236
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751534394; cv=none; b=PPJK27xQybxxlAqjNcAM8P2kFjVGee/tQpGwrWgunQA8t8WEE1i6b2rS06aPnX4zeDAaGT/Q2CDzuhysyMziyJFM7Nx5v+1B8p2I8Y61gvY2627VyDSNhBYruaBh7MRtUgekXXDIYQ804RK47GDvJMLtQSUIWLfYQVFMy1lj4WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751534394; c=relaxed/simple;
	bh=s+enuW9qCaOj0tI/R2tnS2nWHHKhKnpeZMWdTJnoQKo=;
	h=To:Subject:From:Message-Id:Date; b=QSFe9e350PwPahqkMmDjEE3bqUF2QWYwSYZrAU4irW75hefDcW3gWoKFb2MZl37lHk+t+eWdILkyJ6WQ2F6iCPDilsJH+SZcqXOjGz/BXm26HsMn4S1s756uwEauARbO9WVHyIc4xdwYZC36ZraAkrrmiiemdtMzkYvcLRSnjKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfWDGyn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfWDGyn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF19C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751534393;
	bh=s+enuW9qCaOj0tI/R2tnS2nWHHKhKnpeZMWdTJnoQKo=;
	h=To:Subject:From:Date:From;
	b=QfWDGyn1gnvVqp1LuQfUaWyoQYE1v+d2/Qb9VcxSOYJk/y3tizrqfs59wliBK6Amn
	 LQDwrDFDPY9mJpakaDfFZH4x9QUXib8qCbvYtcEsgB7vDjXeUIU9OJUjdF8tRt4Km6
	 QMqo2p2sMtlio+BxfFhk6sjZX+46lCeVyT5btRGBDcFWn8HHuQP1iWLNCGqEArAeFc
	 Z0tpXR9GFfLlyZMZM/4TPuDyMTDBcMLOAoomARavE7VgT2vZse+X0kfhszH7V+SymB
	 qCQ/FcRxAEqzZzNYtEkVQu3Ull6ft/zWYqrf0CxJewx1/TFsQ10hDxx/HIqmzfUGbX
	 vUvaLn4oPnX+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF95C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153439357.13396.14234442247765016195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bada1567a34a10e975b6dd29ee039557725ca72738e9705c76b26ae0f9100f95
Date: Thu, 03 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751534393
