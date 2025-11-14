Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F06627A465
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763093394; cv=none; b=rvKWNqeitiX/eMNOLLE3dGhPkosL33SECZPdFAtLIlx/nGtLSg8GkmVD8ZWOkjGe3Vx75VVSgn0yOE/T40PsglFIji+8WByd9wK9sEc54ctG9Ha3n5XW+k2KWhs50WQMn6T9pqSUVWhlV27lykUwNllblpb4y5SW1k8mvzHzy9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763093394; c=relaxed/simple;
	bh=GrX+8smVaWAZ6PAB3aVbeT5hMiTGKE+mzGsPSPPIv8k=;
	h=To:Subject:From:Message-Id:Date; b=ZpqeQ889Dxe7yFi1Ba6A6CwcrFChkBJ9B0+8y7pmZ579pBpaEUqqx9olXRQy/o7QfSMgZh7+31sVSpsKAOi3V/56BvMtqX0uToD2/ubUpgBzFPUbEl7d2YcYlKLrP/RpxxPsnR+8fntOu6BYBoLv20KrZq5JfCqDehVKQB3/v3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7S/JV1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7S/JV1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE12C19424
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763093393;
	bh=GrX+8smVaWAZ6PAB3aVbeT5hMiTGKE+mzGsPSPPIv8k=;
	h=To:Subject:From:Date:From;
	b=A7S/JV1ygQofvFHNobCnRvObFKf8ezmw7xf3s5lPC1iT8KIqRq16VPpVCu1sdlNVT
	 8wWjeYt9vi/1Xu/hBdHaZxR5ve+h8IKUw4AJPufLXvu9o1JbdW6KQZC/1WjmfFPuV9
	 jMhS/W4NMs5riMP8+lN3eVJjIBKoONEGNexSwzPOEON7cE+X12iLRR05gt+qbuxyPt
	 uy8IwGYanaKEP8cbPBuorlo+II65xCbfTasrd4+Xkp+bHUitbjt2AY+O3emgWJ0I9a
	 3iE/WxMY3LIiS9sm0OVevvdwjYVt/J1q7yQOLBAvWRzmD1QfHIdzgMGAjkzNWFnsFb
	 qGsxkM3/RoT4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D1CDE003
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309339358.30468.18012153745958710454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a62f9459f7e4da89bb3d5001c85491ee95914421256570b293a3031a40d4a62
Date: Fri, 14 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763093393
