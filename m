Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2A855E65
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709918297; cv=none; b=ZkNe8oN6t9qyTMzXL247qX4vBWaPWSvh88ZFUEycCM9ZZ8W7E+cAA17Ffz9F7ptfuwPAXV1njwt7sTTnp8QykXT3iLj0rMjzZYm9DRVATR9pet9l2ErDJDgsH8o3tAZDlOfQwmwYBmE6zokCeJuD7YKzTLqarhGeEta+uy5oyeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709918297; c=relaxed/simple;
	bh=BY9yO5Ipk8blzxU6xp5JmNNM7Rq4PukNo8dm/Yq+SQc=;
	h=To:Subject:From:Message-Id:Date; b=EzP8bTaVp7Hus21cDiy2W32C2fhlgO059WxHUa7B2fQw5j2/EfDRSabTTwXiwPXa8wAGVZ5JARGK3pMi3HTEAPjlfn28Rxtf4uOmcZukGiY1Ok1TbX/R7WzVYlL8roqXP58GthmMzlisFcbh9x1Qn0SU+CxpJ5iOLbHRm6QVRiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgvSCLEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgvSCLEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 908D7C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709918296;
	bh=BY9yO5Ipk8blzxU6xp5JmNNM7Rq4PukNo8dm/Yq+SQc=;
	h=To:Subject:From:Date:From;
	b=MgvSCLEAeBIQTjFhtbLOIJPVvbqtfZBYzxrfrPSJl8swX3D+pS1AdEtb0H5bQu4pq
	 AI56k5vhE06LFHaRbyDevQwxiYT1qWM44zfDmJKjdeyLn4AovIcfSkPy279pMpUprD
	 oCuxq6FcOZ+IQsavukrKOmW95IW799dGZdAxb0l9spIDH7wQmwfad8v9bUCQN4byTG
	 klXIaqIqzksxmcrIVq9Sws/Ur3L1XgR5eLdumEqtSvfOyYsHqCQdOHFUoOpvVziis7
	 flJEKBdgcf9IOcgwNSao4uRMvnlHGzTZ6/HKsljgWZbLcuX5w3pV4agmMhzuNZqbqg
	 pPGoMIMebSc3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72674C5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170991829645.27276.15472687505065101061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d36b49129c4e9ba73c458f0b12fe8569750c6d255de09980676da5fc4d7826
Date: Fri, 08 Mar 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709918296
