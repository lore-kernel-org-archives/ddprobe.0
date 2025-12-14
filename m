Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C941DDF3
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765716774; cv=none; b=AEJvOvba3dpyz5xnlXTi6G0d3bSDlcvWOtYeNj++VtoJZxIYb14i5SteUferY+uirzEjwRtim2o/bN9XVvXyusAFPxbSDi2d/N+z6khg0Z+E+AZ1l4kK+3ikAJGoFq253A8q8+Y+1+e2zXZ4KSwMbMCGSEs3aa6R8bHom4wmuGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765716774; c=relaxed/simple;
	bh=SiwNI9qW9Ng550IZMnKM8Xbnv0IfyX0q3JuV+pCji2o=;
	h=To:Subject:From:Message-Id:Date; b=IwaQOvEmc1mzE1NX8kNMc5RpbMDzUXQQhWX0InrW9E3IV2x9rUri+RS7lhr9zN5Pu5MjIqsN3rGxX0rSXa/hpyw7LW+z+MJLEsfSm8WSLE9v5QbKXKM4F1rcomJCATTvk5XfphQvES6WoISgOdfPoMQE/TE+Rk78BBuRmx3F3dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfHrwL8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfHrwL8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90F0C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765716773;
	bh=SiwNI9qW9Ng550IZMnKM8Xbnv0IfyX0q3JuV+pCji2o=;
	h=To:Subject:From:Date:From;
	b=HfHrwL8wgpP94CVj3stE435G2d8FRhUWekCV6cBKU1tu1BMy8DJ3RI/A9ZCx4QlYF
	 4xf98j3/D52MBjmzOJoEKqE22/1ZYo/mogjVSI6ZPMG2XRXs6tZhy52KS8wGXVR/1a
	 tfxaYj5HBv4RQZPy+M9fAXNKsjglI4Yh1PUIZVnQkCFPucZZTY8N43esvAptFdfU75
	 LSg8X6K8Oo5dt6wN34U+pOcz9Ij4FKG/e6QfigCPdSAZ/UW1OS4xP6/a9+kWM1nnn5
	 Hexhkz3kOTMp5x9sMXVu1mmTPDcpXgBWYK3rPKerSm9p6qafsAiIMQ0kQZXgHE9c8Y
	 7+z70cCSMio8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F7CD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571677358.11220.4568659072802586431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4b838a1e034e07a5240e74a8551429f3023032a55fff257223e9cd6fa7963e
Date: Sun, 14 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765716773
