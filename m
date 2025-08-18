Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332473101B7
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755511194; cv=none; b=nVHBHpes39TS8dfeacJ7uR9zp0u9YD/+A4hzp1tbYc22V4/Mfp4Ygt01tAbu1/Y1t7e7wiVmoDivIld6f0vhjBOeQCNZEvIc+GlkYA6vT/E9J4GwipNZbUL0lFs6NFERABRSK27fqn5MDmW+cEJ0ow33XtYSOi6vZU1LUhmr6YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755511194; c=relaxed/simple;
	bh=xhISya8xad81gnB68KttneuzbHzsFGmUWJhtp4NjwxA=;
	h=To:Subject:From:Message-Id:Date; b=rSDKunXygQ3kW+SS+bEoyFAo6PvWVEtyVjEnwxkQd/O920hO4D7jvGFbf92HLzicu/NHYpFk4yuYAledFVD+wcZk5IydMHSGFIaDDYuUdaHQeYQ7FFRNGeTlHWRcIJaN+Xw6mRWC7rapeEESIfiVCdGrXabDqdRGFcKzUP5b9Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pzf8t0pO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pzf8t0pO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD24C116B1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755511193;
	bh=xhISya8xad81gnB68KttneuzbHzsFGmUWJhtp4NjwxA=;
	h=To:Subject:From:Date:From;
	b=Pzf8t0pOLyWSdhVqNYPzuTDjDYz0vDwO+93L1vA61dV4UPBbUnyGHRn2RaboOQbBi
	 OPPea4sKQr6499mfD+/Mn734fwcKlzueQD/BDU8zeMAUzuwK+tUrVXdwZkd66xVR6h
	 DjpKcOj+eA7xICgWxz3fU0zTaivf59fy59lA1h7wr1cJ0vdYu3YhkqA1uxfswIUzZp
	 nv2uRejK1KD8PHfBgUrbBwIdfYQ/4RjeYehkP3A/6Rp2Zm3ZlC1TUCJz2ZkfXjzJC0
	 CHre5YHiF7T60qJxXKEWtFFduqTfDDHAIbN67MSjHkNiexH0p0KYdOzpZyWP7StvKo
	 wUb823laAGsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED32CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551119357.24106.2852791123119917761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a499d2a3452e88a9773fc6d21c5aa9d7d12d5736e29772c20854f4546f0d23e1
Date: Mon, 18 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755511193
