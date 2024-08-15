Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412521A00DE
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723712754; cv=none; b=XKl4gAO08Gza5uCcaF6nr2PuB1Riqqz70V/f58DlqmXCAED6KqdeeF6OBijV2prwsp2/aAjUkDtkUJ4CE3E7OMG9b8fl2tZkE4loT+kB3UKloXb5LiLuJOvyqTQAkcanbxjSJdP+/PHqo3hwdP0ZvQQ/5vNHVxxaElyOqfCmyQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723712754; c=relaxed/simple;
	bh=MlU1eBokKBpo7TKd+7fAR/0owMzxNzk15MeITiYTbns=;
	h=To:Subject:From:Message-Id:Date; b=sSqxYCjBwx2N+ODUBxA1VazxwBbj01Ebr01L7IswYT9uflKHY+pbirgorBtT6NzfiqV7fAv/Oc6NUflal2GOczgCUAV5wBsJN7RIAmx9Y/BAXQVHd49ZkZvULYOOkGlla8jH9r0ZwUcGh31fsnLFR1WqR3tJ1iAIH0hQNvNDFd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+q/HcGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+q/HcGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B5CC4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723712753;
	bh=MlU1eBokKBpo7TKd+7fAR/0owMzxNzk15MeITiYTbns=;
	h=To:Subject:From:Date:From;
	b=V+q/HcGLtFS95VqVTjrZKSqLEMQidDe3eC01/Eunc8ir4mRv4IS1RuNpKd987wpom
	 U+rVwTQModq1ZyIEdL88LUQRvftGjT1IvNu4w5DuS+YD1LMIJXfyQWoGBQbRLaQR4q
	 Rr3cMqKLCKFqnkcyteJuKXQahHcNbpYrHIF2prVYvtoF9wdWJiJVls0jeqA2rjutRc
	 +7PEEC76R8FpitZwQ4y3P2373OcvGBDyqb1ubUxtgGtP204JKskMSl6CvHd+tP1ACY
	 nZkmPPgGE1RxISpxfoV9tbH1BQFO9o7mECV6IH7DT4GgN2JgXrxE5+hPIkp/E1ewL7
	 XWssIt0aMXpvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C052C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172371275363.6520.12246002467844318872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a5a1e10e0410b90508d9187b3ed8bcb6637fa36c1f75a39ab881e80ad6fb7b
Date: Thu, 15 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723712753
