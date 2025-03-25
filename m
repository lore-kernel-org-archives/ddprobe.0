Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422E8183CA6
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742893794; cv=none; b=C0Zt1zN9jKiMx8cqylwf1RhkwemVw4zy/8ogFsKjSFDBSULAJYZ2FybDY9S+PRRPdO/wrov9t7ZbfvSa9LxAG1d5i13nWUm96APabBj2RDPanjfucQLYxgwAS4bgZrdUUI2kkomweSch7H/p8HLYtBbFrp3tKXdcaAeCR2A+1pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742893794; c=relaxed/simple;
	bh=wS2XZ6TfZtGJ/6bXcvvytfxkngmkJYtp10BAf7N4m3I=;
	h=To:Subject:From:Message-Id:Date; b=jql4U6fbalfc22oA8dOg1A60KK21iHCoGKr0GO0d3D7rD1w+AG5NENJIBfj8VPrhifQX5og1bTlhHtrOziY0jrbHBUfezaJmw4YQbsvmFVctjST1rxTeYSMivFRNWvpaLNy2SbU7QqTQOmpm+DxJJcQZyyxx3AOvNjNsWcKYJeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jf3OqCe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jf3OqCe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF42C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742893793;
	bh=wS2XZ6TfZtGJ/6bXcvvytfxkngmkJYtp10BAf7N4m3I=;
	h=To:Subject:From:Date:From;
	b=Jf3OqCe0H2/psEmJV8mkx658bv6BuJO5leHFw0/zAkW1chQDegtTbjbyY/Il4KU1I
	 laM61fCiZDlogko3ujJRiutyihrWky0nJlQkqkJZNajluClps26CuojaXb3iPyuAXt
	 HYZIGAOEc8Gf47oku4HtoCDyJsD/HtbCdOocloyu+N+BDuITictlPqnOLy+r08E12Q
	 O3fNKoJvV4mFhs9fKfQcX/yDxMTSsVu1dospxvJPFgvLegHlyT7AoiJq5gUL0MSuqA
	 K2cJRM8IdMO9gHqOJz0Ue+ct2z6e7QwO/1LDpWsJ4B5i7JrUu+v87xJocvTcf6o8vD
	 nm5/7ksDE5eMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC4C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289379358.25444.8387149852339373956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1e7ac86044848a0e241f48abd8cdd4668d54ce9916c3899f2d5990d9bbe76f
Date: Tue, 25 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742893793
