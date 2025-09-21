Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1958B25393E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758464994; cv=none; b=MNpahyoytE4OENJ1mMg2RLP0ErATsflyyNjGYiKt4MYPyx38vQK1Ys3OsW6WaVKK9S1zNl08f1iKt1cmjaDZgs3gBBZ3ymfLOdSn/g2bdtg3lHvaZj6pm0H0BBmFEV4/Uc6ODmwn5u676f9AQaOiU5SrW9kwTy0CDQxZJrrJtLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758464994; c=relaxed/simple;
	bh=WWflBrsBtZKlGznLwPp+UPtlbawl7GPeuZ+SUKENAoY=;
	h=To:Subject:From:Message-Id:Date; b=Z6a6mmlq0YuCQekiRkVdg6V8QVYMb2E/FKUwzYsevyY6DnpYthBzBztaAmFrDbK/bOalaxjHgZmAlbge7bhEq3Or9trBE2Lj4Vr3mKzc2o+mTKielWFOs/aXRBcAic2HJq465hKXnK8LSnyMuUMKQByiUv+GzNaKj+4Gz2z8NoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuN5Zizj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuN5Zizj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0ECC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758464993;
	bh=WWflBrsBtZKlGznLwPp+UPtlbawl7GPeuZ+SUKENAoY=;
	h=To:Subject:From:Date:From;
	b=DuN5ZizjvmsZ2qXsdSZMtjWHjBHnQXUuJ3vvyiZyvwD+Tt6cWArN4BXgYUyUjkG1z
	 qqq4uEZiL4wtXBkdm0KUaknSt9evP1XSJ7Owp4qJBIDneNQqFPYOX4m9O+hohKWvJM
	 /SM41MeOZduiLxhlm3wlph6DG5D0guX9M3QKuPm+5LH58g80TckyDx522LFY6FGfeu
	 efKG9/pixXXgG+7izWIu4G26nnvlmy/7Ep5gjB+inE7OrMym16amRc6StT9aQVwMgQ
	 pfRHNCX0+qIeVMqvS2lYyDB21katUh2d0rk9WhT8FRbkJMNVxa4h31uhmWAAK2xNtS
	 6R+LBY0NqAfJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE43CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846499357.6454.6825397382653895423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cda8a3c25fdf166d8606e3f7cd3b585cfc3bdb13180663bddfa50a72c80435
Date: Sun, 21 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758464993
