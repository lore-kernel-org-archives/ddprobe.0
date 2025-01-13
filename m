Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00554315A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736737554; cv=none; b=H46UR6CiR+4ejIgqqyXEbgTSnyUymiKJ5Srucdcve/PeO8OjoTk3vRNt6fdVAgECSfmgBJMhGQK19rCl0A+o5CVP37CFZr5O4b3/OSDRWOadknldnj6I6LgyL3J31Y73JAZ1zHrLkATQxowcoUqEJViy/4LArM2XS6peU+gmcTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736737554; c=relaxed/simple;
	bh=NVIpMFkC0v/Z5qdSYpj9T51TDpwV4cptjkOgn/Qlhpg=;
	h=To:Subject:From:Message-Id:Date; b=bOXrWbFWdQVa9kpffH11ksYnKuRyMbhX7mcm3hAuPM/wH+RsVgG30+yath8hI4QnyxqMDdsQt3KveyxTBjUYiKNoJT5kYG0DvAW56isha+I5sW7rZHUQN69pUWzrsauh3Q52LDW0FRTqz5NIEjXgBUFhPWEPCuJBGSRC1uVzii0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDVi6aXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDVi6aXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633FC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736737553;
	bh=NVIpMFkC0v/Z5qdSYpj9T51TDpwV4cptjkOgn/Qlhpg=;
	h=To:Subject:From:Date:From;
	b=XDVi6aXTacyUuQlxK8VJUGbLfO0jC8Mo9zDe5FSXeZMuodrAqZ/wWLf9JzSxEWnLg
	 lK91jQb4dv4JG1wxV3BTaWk+VRbginrdVhTtLHklnZ4jtaGc6JItNVBgl3koHxqmNV
	 uhg6z11PsayVfh4XjHzAylAVmAiddKoZDnKjn64F0ptuz5c2kwdwFwyxjwQuFjUtJ2
	 US5J5/qIggi7EjPEcxataGv51pL8kVKXUB55cCDwVTIaZw9uEOAwNLY8Cq7tHy1kjQ
	 kIpDUrFh4sa5HyJoZJwJN804VohfDvUQcSg6/hpCVrHWi8DgZnZDPv6k4czKqU6Otm
	 q7BrEg0GzEwKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D5E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673755358.30491.11084182420908118347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cecb3485df3b05cd633c0cda43258d4c52832ee3ba4873e856772a862d514c16
Date: Mon, 13 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736737553
