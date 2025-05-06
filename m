Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230C424166D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746553794; cv=none; b=UsXtShRWj3uqlw75qQxabXbEXCO4BcTIVBx5ZHl/tFj4dvZMCI/RgEM3GAwAX1YrRHpiYIuHButPgMQn4da50TI+4koAvWTF195Tl4pna2K1yRTkTul9j8xhH47DHtKSnj4uBK5PMYd5iQWji/GmSuflyxMobs35itBCCFbkVJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746553794; c=relaxed/simple;
	bh=W1HA+nLQu/oi+ebvbn6OxWDb/JIKYEGlg4ILyi3OTpU=;
	h=To:Subject:From:Message-Id:Date; b=rUVeoyOxXNvxWwgJNO9NlVanqYdzY7Jb8ImHYgbWMjDc2GI+0fZLxyqT4H56DUfVkO8/REdP41A/HaGQn6ePsJJn4kTMpLv56sDq4SnS80lyXScdWFl303HqBK34wismmNM1exa/8MpUhGRBtnn8K8Wpj2oJAM3Rkpf9zF7in8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePfVCGt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePfVCGt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E669C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746553793;
	bh=W1HA+nLQu/oi+ebvbn6OxWDb/JIKYEGlg4ILyi3OTpU=;
	h=To:Subject:From:Date:From;
	b=ePfVCGt6lLrNXjnFUN3N7+ipO13tfRr9FRH27o0PGafr13275lwQP93zqvOWybpod
	 QDYj5LsYZjYYiMI3ClcsWWtrmcB9YGXK0DYuyIoV+93B1FbV3BJKJz04IHBo0jHJC5
	 0v9+qwb24z30KiV/fztmAAF/zqVbZC0moG5SPi2rj54B6/L7Fa6K4ApZOuUqVAwRfW
	 p8IUjPhuVQed7s8VFiryn/kxbwCD0Q2+Y0NdQBGPS2geCDIwMo16gWbkXm0hIYiWT4
	 gcaX5KqeqBZ+opA55SpKW51xy9gBiUlPyXoOH+d2laWW75rjoNM31vhA+8cD8o6yZM
	 s02e6GW0ydblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4EC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655379357.29319.8074534337780922179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6461030c5052c5457af64639601c47b09492e65f8dee0a6da628006647217e3
Date: Tue, 06 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746553793
