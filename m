Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DF04CB5B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771391094; cv=none; b=sqBeJBpsddtLG4NRxKgUbnkl4BjZGC/jdNd0CiIcTfhUJPspRLuFtk57LbvtqWz6eaHQLDd1sA+Qt1z25uEDuLS+cCtqOn6f8Ipcq8slopVVSw2RomeFGheWxiyDZ3dWLoQv98LLx8ux3yg5d2SNePKmfS+yQl8tQSiWcmAj5TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771391094; c=relaxed/simple;
	bh=TEeKF6qXQbpA1o2OcE26NJrPGBpRUsnQ3eXMfMPuv0M=;
	h=To:Subject:From:Message-Id:Date; b=HDLU4TSHHuOhI8WLcRhoXoVVYDz7GN3sctp1FTspEXLZvWGCVR08QcWRZZK/pugOyoNO2Dsjx896QImddaLuB5alKZt1C/sIATuaiODmJCwkUl1cN8hsU7NeYxcJ9ptwitvq2K5eck1K9WJq6kUyIY8dN8XhSY1UbWUA0rR5PlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jD5ZnhTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jD5ZnhTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9717C19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771391093;
	bh=TEeKF6qXQbpA1o2OcE26NJrPGBpRUsnQ3eXMfMPuv0M=;
	h=To:Subject:From:Date:From;
	b=jD5ZnhTwxWh5qxgX7UKs1IPUyS/DYYaVBBsWwzk1pV1s5SbCxMj9C4Fs3OpLAMJXc
	 zjn63Aii9STBRPq0Ms+F5soplux8Huk5fORUypNdGBjRuZg8u9KkV+2oYcCbG5NbKY
	 jbTB4mKPnU/t3qQtO+U/Q0wuJPrRfIp0Kt1gxYSlyj0YNATiUUvQYJUpCyHXMyQvaD
	 sHprc3SZcZG+SE0WWZLdqMmvmqS8+ctRBpQI8jSdIBoCvMLvxgspcikGI/YonlmtgZ
	 QpmRz2Y1REFvDRU49+QtDdFuds4os6aZ4T5rm/UH3XogtQ8LkGjkZVX2JEv3TZ5D/s
	 0dCRFRxFMO2sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5246E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139109362.28347.471668136535833403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde4187f0c266f8e9e54347ed0e7ab1ad4d182c7193dbdfb81470feb00373c44
Date: Wed, 18 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771391093
