Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CBB28E3F
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744844994; cv=none; b=ax1CQ5gT+TVcFstdrhgiIexOjSmNglP3fOBIfXaB5hEw5P1JEvM7GA1ovOp4qSnpZS/dTDXvGVVVZ02vO6OWwntlUV9mEWOsl2q9B0aPey8lQ4z1Z+tPThrVLpUqllHGwvScAQaQ7HEE+jpH3M6m2+AubJnA/Ru/mk/rf1nLH1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744844994; c=relaxed/simple;
	bh=F11kKAE6PXXggK7QpIrzpNqhZ9GMgkbfemCb6sjJzPI=;
	h=To:Subject:From:Message-Id:Date; b=r0Z6Jpb4QPpuuXAN9IMOk/9w1tKJ9xS2GWTSypd09J2WzmsAvBel2C7s12G3QlJCV7DirO8BsqC7+okPSrM1pkJkRk+GXb1Nlecyh97D3rz/EcbkIpq/e2c2mmrp3eEzT66/ZAZU5bI9tkweglRyfzb2G5bRUMmHJEvnRpveZMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxQXbTFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxQXbTFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58AEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744844993;
	bh=F11kKAE6PXXggK7QpIrzpNqhZ9GMgkbfemCb6sjJzPI=;
	h=To:Subject:From:Date:From;
	b=fxQXbTFBwX3nV0z90brk/OzJlPbiNN4LwfsqK7LSADH9K21pqO2Wg4LuUWpALECXw
	 Q+PpWzMD1Q+AfBX8i3Arq1ZlU2Gi5XtI6lFBPGHOpskYVSc1nuS+F1GyscEKDOUAoZ
	 AOUDTGht76XfQOgYW5Xs2JdiAMDqXVnb4onTu1mMB52JGtKJTottLvsRFCZMdtnWf5
	 ylrbp7LCgemIKCgvmuiwKmdD2AJPIechHJckb8HfPftyqfqJIuWs6jIuFBPOVdxcu6
	 +rCrZsl+Ey6lMjXN5tE4G+fWV9+E3wy3GSaJMWhli4tnjlT2oGvrDF/j0uZkzLvvXw
	 WrN3MvvJ4b4OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C64C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484499360.27717.15513416496227735512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12d0c6feabdc5df4a50d25751082ba5a57e69c3b068beeb4941d070f98a5abb
Date: Wed, 16 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744844993
