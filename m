Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2800A18B0F
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760292594; cv=none; b=fNbQjegXevGXKhRqMu96YaiSVhSP6lU5llyJuoSziVC56FD5j+NqRiT4OAZZYUwypoPmi88TkgiXZhamwmQ9+LqkLbNlwNcou33iBVMrF6QKp4zMii4R0Wm8poUb2chv7SAw0F+gmOWmiI0XkFc1VyOmMump61+RaL3Nhc2T9tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760292594; c=relaxed/simple;
	bh=T6iowDHKEA4KDOTuBZuj4imatCY7reqQOFWmxeZYiqk=;
	h=To:Subject:From:Message-Id:Date; b=f//k7+c4Jrawx/MH4sVvBJPFd05NaBjheA235NDbHKT+jrKdGzmtfMf8m2sXUDHOn1cHN91mSlbHWsmpU+VSDeWBfwTRwruKoECjNBZI1d+CCQAUkZb0Fy5puR4s4yWvAQx2F2diDh1NNCfd83gHGr0dqlUzEkt9Fv0bjeNh76E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZE6HY8fH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZE6HY8fH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A810BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760292593;
	bh=T6iowDHKEA4KDOTuBZuj4imatCY7reqQOFWmxeZYiqk=;
	h=To:Subject:From:Date:From;
	b=ZE6HY8fHyZIH1jBi/obaAnP84D27M3Fz/Ig/wywljCnR1/K1PQGFbLsb/2HSgviZD
	 E9K5fIqBpmyfPgdx2aBduN+ffpPOaII4p2a8W6gpqTLlb+7z5s1uSM8vdRyND+oCcS
	 1MMiCtgvN9aOKBZAF5VrnRN2d6HKz9pL8zZR52SAxnWfOgZ6VBcuVgtfx5YVVI7hVH
	 9OVt8/9xR+rGyyf6GL7O0bVQCPTpQWeoC0jrSaFmt1ALXDZF+CCUzxdV6oOXItTw1W
	 uwzjj5VNPuA0fTS95l1zN6poJ3tJe5h2u4nnzjxhO6/25lIg+BFtdEZ0e4noE/JdBd
	 nvx3ze3+XIVsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C1CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029259357.11303.11808458081621058993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530a44ed01a3f0f15e1deea5880bd5fdc431a8f0812551eab6b53c768923b471
Date: Sun, 12 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760292593
