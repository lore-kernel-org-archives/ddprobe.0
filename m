Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4822C3A1DB
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785012634; cv=none; b=Kul3ARJklFwdJiL2Wc0VOrNXzg7lupfitXdCr3pZG7mM205GAYbjEN73S5PRXf3x3THdUDDzGmRH0O60PygTb6QNurRzId14jiPSUDMD9eRC2zW/+cDxh2BgQ4CpgtD4A1/lkveI6+b3PY1pHoc9ZiWC9aVoolkKigsFZEi/0zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785012634; c=relaxed/simple;
	bh=HB75uon4gLCthshZJYAQPosiUxDE1GGm3PTgf6HTp1k=;
	h=To:Subject:From:Message-Id:Date; b=Xo8OhiiTOxSyAq8C+psSZc59m8o6DEq14GFd+b9mAs4bO4vkZTdiACjMeTujh4WxBrtPngVzWAP8TminfjAAI7ev319IErbnE79A91ZcrcSDMhvPshpY7wAhMLQsq+z27/diQ5lvmf9kcSqNS3L5TJaW5oRdqpRMx4dSDA57Z/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUJWCJQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUJWCJQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC39C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785012633;
	bh=HB75uon4gLCthshZJYAQPosiUxDE1GGm3PTgf6HTp1k=;
	h=To:Subject:From:Date:From;
	b=hUJWCJQPTfBzSn7iunOwc+0zWeh9d8FhN7zg1yDNz2xyVgrdkMH3d5yk/0UJS+3iN
	 bMrbn36JwD6heIU4kMKSMy5bxcmW094TW7KT/Gn45jOzTc3VisPsXoS+yxvjGb/pNB
	 C1Msa1u/bp8mikd+20ppsPmsM6TJdNuIkFx48f0JVRgaVj3zdzucbb2MBUUTzHPw3G
	 lCYa200aFP2RUj8KLWaUyosjEu/l6AQ+7k69adIUbcGxAN50U203krRI9wHvSXYqFE
	 D6+Q5GBm6lEHaZ7bvZLLKAD4lagJV0pjFDgyRh4C2OmhxndJPSyaa25m6HjghOG9OR
	 S95VSVH5WHOYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A5DC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501263367.30738.2066004178301261639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9e83d13c1df06ebf1abf2e106ed978282ebe5a8d9a50118f86e20e83f2bb9c
Date: Sat, 25 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785012633
