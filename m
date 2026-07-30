Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E221F942
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785390034; cv=none; b=LjbrzUDY2EObVtzyOvlOVma1o5/pM9tv/3n1/Xt2d0kHDLApyUb0mmOzmuzxu6PPULci92IyKJCP01+rC/WETgaINHxStyj0TEEG+bzZ1rGlzRb6S8u6ZNeqY3U2c5BDV1Ec/OyuN03tyVDrfnGUrZkybdygnRTuSo/wAEcDqww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785390034; c=relaxed/simple;
	bh=MGjlKXl0ahePaC7efoe5vZbOmN6kG3sed1jPm6+F2jo=;
	h=To:Subject:From:Message-Id:Date; b=ON8jFPtkjlWCKsEKzowZ7gefpGLVBHDDMWCs+RDXPw5UmZI09U8cDEWA1mYnQbTZYGA6RTtvJqZ1jEAtSzvpvFwPDYFj0nxIVvCdtkmIY0F0Pq6wV+ATx/RAru8y/Tqjurt4GPHDBXumlZPn4LBVyD5Qroe35WhVFs6Q2q2GXis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CymS6UrB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CymS6UrB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35F5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785390033;
	bh=MGjlKXl0ahePaC7efoe5vZbOmN6kG3sed1jPm6+F2jo=;
	h=To:Subject:From:Date:From;
	b=CymS6UrBV/gXOYnNWurrKBAXug4npOPPNIW7pEzIYexal3aH1HVNUBGcF75F39vQF
	 jfmZ3n3mVeqBTPVfK5onTzY+p1xmilm+RpuUjgv5+PBpP1pzAjGo2X/MJGHBIcsA1U
	 e/EiLWxk+grhqLyLfu26zzm3b9WepxrL++5r5U/hj6Nw8vL/MQCG1yn0QS/WPeUYt5
	 y9n7D9MNcTTbkEQrtlZqE0lzjl3NVxhCwxbmsLT+Fk3k/HracEFjNlgrvUS7dIZ3x9
	 GMxTJHpAOhVi1eUWzwkBWfKG5dkPv/xaUeU6M2u/6cSkO6zYLyvLvi/pqVVl6KB3+f
	 CAgkHs60KGQzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7241C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539003373.6298.6092127366857223808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0675ee5babcd748228dd15398199636a0954fb110d96cd97043341b83be1ad07
Date: Thu, 30 Jul 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785390033
