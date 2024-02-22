Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F40F516
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708565297; cv=none; b=GoA82PRNWEJWOyOQT9TjXveatWdGY796jfUrVmTAqhRApKT0H0A+DYSrvCEGpQqQ56TeYQpXokJaSkR9yFsJBeCQmw0gncKQhkYScvoG2SD67oa0g2f7nJ1nwegudBlMid1jbfLMYaGW3VJNC96GYaBmf6cIoWrP3JlH7x/l2m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708565297; c=relaxed/simple;
	bh=O3h72fDSJshcGpGXLS9GjwkoI19WwG0tgvyyhn2OS3E=;
	h=To:Subject:From:Message-Id:Date; b=NnqI29Dl8mSivowoseKgYGSk1f7wo5C6jj2VJFAExwUnJmIiaTqta7kM6G4YgvoFTVWX4w4hd7izd2Y6oYZq41w7ClfA8edfGGWDLUVia3AaIPjpVisgDpOttsW4S3KxlVxjF52sdpCtbaqP5VDKqnYPkw4zMBV0W3p4puGvMro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGn8daYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGn8daYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E84C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708565296;
	bh=O3h72fDSJshcGpGXLS9GjwkoI19WwG0tgvyyhn2OS3E=;
	h=To:Subject:From:Date:From;
	b=rGn8daYrKWdWPh+npAK7JzZiyQzR7g+2oeYIQ4ssLTLd7A+bxmFuatmTUMepYdAWN
	 pj1Zvqk34VZxBYV17HSIYVO0wCxKFuHqbdinuQ2iiXB03svhSAbKE7P6l3lGPofkmi
	 6FN3ah+lA40Nj6wAioOxWlDvUPdvXyz7u8rMId4MNRfa/c+2+8MYQqi0YsbRF09vok
	 Xp8FYJOd9KxUokDW9A528aXk+1/ORoV+4XWzcIOmpkSpYCkj6PHwE29rZs+bDQjufW
	 ekHVkn/Wq22AOva5/BsXFqyRRTE/9GDJO3gUaej/udWPNky2DbjOgSW6akuXvkb7sf
	 KsBKWRxy9IKhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DEF1C48BF6
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170856529637.22933.562434495685475081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebba5e3337bfd477282d520d9417a95611bea99e6ed51f30c6d8039f9846499c
Date: Thu, 22 Feb 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708565296
