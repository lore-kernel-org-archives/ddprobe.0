Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2710723A9B1
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746769794; cv=none; b=rmCJWNZmONJydg05uCoSYA0dR8Rfk/mvFyQxCmXDQYD+U+VdMZKszLBuVEcfsACbq8wXApr2xYGBYnjAIXVE+skV07cmEJWBEL8KzveI9CqT402JhQo3r3TPZ2/aO46WGEJfRUu5klNyfgMDQaMNlECu0IkrxphoF5JZtfJK8kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746769794; c=relaxed/simple;
	bh=kJSa/V7L2ev7ElOXelLG/pwa4rqqMYUZA4nWHL+nwxc=;
	h=To:Subject:From:Message-Id:Date; b=dHjm2mgT5RM8C+KZzf63hMBp3/4+mmYhwF9CJsboV0iosHicdvreOU5bwUo3C3SuSseO54CMPwq8mhIakXhFUM5btTkh9EOTIrYFPcgu9ngVSBhxtWzUhQ5sZNk6ODMTdAgM/QbwGwA2v6IMCWd0EDj6pi8ZYDZOnWgsRuu3CUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlHLuava; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlHLuava"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA3C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746769793;
	bh=kJSa/V7L2ev7ElOXelLG/pwa4rqqMYUZA4nWHL+nwxc=;
	h=To:Subject:From:Date:From;
	b=PlHLuavaAieUgCv9N83ZfhJJ3FKgmcUiNxUTSIjE9yeEzUdtxrEkJ90vnwtKNzRnt
	 CYhF1rO/uMM+sNh/IR/UrazdrdDyIk9srvQXE69hZrKLqpd40HHg2S98T7l06oViEZ
	 ar5ZWwpFPrmiKMpBJBh2OsLu0EQVtJsQYULyz3ERnxfXHJjRQUQauY092E/MDnFUbJ
	 Ztp2DlfW2x74l0pcMoKBUrf+x5hozxYcgJZvuMJJN9tNokrZa0HW3bM35w+qegBk4Z
	 QWmGjynjOkPqpix3EtgWeQ11giWnHo9Brt1WCvmPw/azAXrrPFc697jjUlyjGZMYX8
	 fBSGlCAPK0qTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90963C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676979358.4094.4985505008236999549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c20ad5e2383a241996fbb75dfe928fb52a89071b2d3c48cd18440f96818f7124
Date: Fri, 09 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746769793
