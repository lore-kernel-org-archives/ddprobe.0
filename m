Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AFD530DD2F
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788412234; cv=none; b=rMuZ2uAObjFhRGhz3L5UqHcf/St0RM7CFYeYxVG8SimFkWfjzVmMS1i7ADX/gwcpB5Wo+V6qGxHFmykq6912EqNxlu4XAmKQMpfC1AOgzNcMEeK+DZMysdqWpLUrEFptIGvgQT0K1dSvMTNPyASK6//ySB5Of/EQ7g8GmZLVWNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788412234; c=relaxed/simple;
	bh=K7EGYSrKt5jtQvhcoPgpLjWUNf6FbQ2uZHp4hqIeksU=;
	h=To:Subject:From:Message-Id:Date; b=AyRNzW77VVcUSMyVv2Q5+/5Qx0s/D7wCEB25H81zeeT1Ivg2cufCuF+Re18yFkz5/HiFkO8Y7vjjA62R2Llo0iuXEbVtNRoCOGUvrudwL/odzC9IIQvOkvOnMwej6vg/3Z7lTQsk4gn35cwUGGNjyIDtgciCW+uu5ak0Mt3ehI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VihjbZbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VihjbZbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6A4C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788412233;
	bh=K7EGYSrKt5jtQvhcoPgpLjWUNf6FbQ2uZHp4hqIeksU=;
	h=To:Subject:From:Date:From;
	b=VihjbZbsxZWdvmWxC2Y/L8S4o9J6cypf6LozPaYEpzFlzaV1rEBcxCiy4G6709XMO
	 XCtgzHv8rifNsqqvX7zh5XVjRswSPP7M3GvxPVOMFXEivKzmpG5GkwehjRef6RuWJ/
	 6Ig58krfNcbCVJWXbyeseuygLVCMuRt1pR/rUYB4a9vvnWPQGUezboe8SIgfHLKuZ2
	 Xqch3LJ9wjTRbSWV+uAGowRqdTl6PhxnM//17lJZNs9kd4DLifZqI/axvPN3Q5dVdk
	 vX0w8LzICR2KMkK25cDFZ6y9tV7Q0Hbm6lZLcdnzTcC1+w221b7GnAuNYNA9H7tGOa
	 RBeVOnhFKloUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C53C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841223368.7053.1282327731689004640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc144b5f16c40b3b7ef6994335dbc096a2606c570e610f0f3df122cdc2c99c5
Date: Thu, 03 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788412233
