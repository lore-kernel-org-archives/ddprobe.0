Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FFF2D130B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764940974; cv=none; b=PiYQhVkKhLLFSst5joq0Jazw0poURrQwVJz6AF0nkhYPkWep7cag+VR/RnDl/pgPuOv6hd4ru3HzNwyCQH947jEa+jMRbGDwbj420dQDJUYQ4AXrvC4tmiVvVfcUj3Rf6ZxMbLNLUPj48d7dO4RFjgOhNotp3HrhFj1IscbksdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764940974; c=relaxed/simple;
	bh=RwtlvAJC64Ax9/sHoRLFOSfu+Y+meOwCole8u1htIZc=;
	h=To:Subject:From:Message-Id:Date; b=vA5eNVLUR+rJtfYoxhypPPqAWeHY+rsaqtBN6Y9IJNQdVW/GkeJjD+dk2/AmFXucFslUSdTBAKcx11qE2Sl58uzHtSK2N3za58+sC77ZKWqb1LqNLSx9n3ZI8AvFykOy3oAoSJsH9OLQWecAnzUuXMu/ni98ilsNIbkYhTnKp3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kf3cbjHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kf3cbjHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7616C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764940973;
	bh=RwtlvAJC64Ax9/sHoRLFOSfu+Y+meOwCole8u1htIZc=;
	h=To:Subject:From:Date:From;
	b=kf3cbjHEg1dEyroZysszQ+7almpDQSfjcCSny7txQcR4PwuRDxm7BfohyjpcGyxf1
	 Zmh/lm87U2UKiBM3AdXedOC2UU7Mwz+p8/KZ0SuP4GQEx7KuyvstRrfurSVK1B69jU
	 +X9tLjy750ezSYbC6gMM7DDzZBOk34m1xMPdyqiD83SoFWJm+O/THBxMc6KMQdkhr8
	 OMDUTfWTVtN1qmguxVx84gR8sAkVLyWMKG13zewg114PUmNEv4ZKj0ip/9S58LeLIw
	 PMbMEFMxn6z5cJUigDn9CMF0ujGCSxTPfYEIvsAl+x7FqM9dOKzcMgLBZDvhPAqsIu
	 ALN7hTWrySndg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985BBD2F7EE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494097358.16175.15293644218244663794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0834188e916bd30b49539095225dd0a3ad74c50d94a3aa171609e6513753a32
Date: Fri, 05 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764940973
