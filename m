Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8FA282F34
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788081034; cv=none; b=ox23PorRnOXXod3hNLr2uNicRlEaV9MXNGiAqzHlV7CjnNes0gLuVvpXbzBtWplH8n14FtTsPGlcjd4EjhBkDY5ROqmJoRPR+tECmyxgzRhhk2MjWDBdzjlTKmbo+UUccxsjyyY8Vms+Ab0WJ03/pQRnxKlgD8KqRPGv3jF5imo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788081034; c=relaxed/simple;
	bh=Ap3fUY3GJFaGLvXJHRIWpyhxK9RTXxSwHPVwKA+NOH4=;
	h=To:Subject:From:Message-Id:Date; b=as7GlTslwz544v+YETo9bjwfKdEGNao8x0jhjRBw54Wwjo6r4vLJ40Sec8Awm7+bngWIpTRCS1rDbMEhsw2XTCq0QMN+5RjzSsazPbWV0D1Vk60ryXtT8SRKzCLhtk0cgAh7kxlO90JrK98MMNtlVhqZj+MZZtrm/uqQ2p481Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdC7PFbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdC7PFbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C94C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788081033;
	bh=Ap3fUY3GJFaGLvXJHRIWpyhxK9RTXxSwHPVwKA+NOH4=;
	h=To:Subject:From:Date:From;
	b=SdC7PFbYg0xn7FxqU8tj6QiNi0KUpnn3B10UT8Y6/V3ISrauwaISfvzvavfGEVzq2
	 r3FhI2I4SU9BDoLt9J98wDwXVWmTFKuT7Uij2p5nVpTmPGd0GWiVp8L/+qXkjSyssv
	 HP3W5ZEEsrlXTnXiOZoWLjAXHtvBYdWvpnBGKlELB0ddeIBFi9A6Q4DUV0fGp08HWm
	 8LXejj1NGvloaxh6r8XgP/JJJenpsRLBI8VlfhUD+kJ6gWVExBBMFZARapS0dcT+s9
	 gLDkVSfrbZOm7txxltJWwlTxZ1nbY+YO7hzBhIMfxM+m11QBKJkbd4dOGYozfGDGoV
	 yuNhRgbadLLeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD719C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808103368.11006.5329032760118578369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8deb5c8c42c79ef65f46ea106fadb271fb8f4824e29197f15ab12bc4dd9b568
Date: Sun, 30 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788081033
