Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA2B42AA6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777198654; cv=none; b=n/GWoyLBX4hpNcoByiTOXo4SZarzQUseGIaNSLtySZ3J7CywowsdOrV5bjivKmka5D2t997xWdrGwXqzp/BCqHRSSycKaJ3wFcA5XyHIOBkYR8oIH+iQTmQCJajXTXohPEvZEU5zR3pwZR+E3T2T+ou44BB3rFTb1PQmlBn5rI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777198654; c=relaxed/simple;
	bh=3+uDXSQZCI0820xxmYw1a6ZIaia6wRx88wE7uRG5h6w=;
	h=To:Subject:From:Message-Id:Date; b=c3WgNDovk3ZcJn+QzuwuV+dlZWBTmwGu4RhKdc+zRibGmciJfdlt5nhwleR0V0pA5RJhUlqT+j9qNkitNme292BzLS4z18Sm6JEn4eHYvlUc/slsj2C5T3gF4G/bBVw4sK2IJ5Mo3hGlC55n1hsT4mNBdMDifoRMGi2uZzxGe0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU2m1Gy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU2m1Gy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB38DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777198653;
	bh=3+uDXSQZCI0820xxmYw1a6ZIaia6wRx88wE7uRG5h6w=;
	h=To:Subject:From:Date:From;
	b=ZU2m1Gy/Hiema/IGSBGt/nDd6Cyln9DyvQSNAZwY3qRBbCCB2ZL3/y8Dm9db7so+J
	 OE/lypfRemjiGblIRoV3MuHXUcq6ZD7LkN3YVNSGpeffE2QanmYatL+suNfmJTBzR4
	 BlHvKn0fXSlDPCA9kw+VoT1YUfTa/ZE83rFi8JSJ3Yf6mGywvHHEV8DCOyX+N7IFmE
	 OY3Z0Zfsto+m8xMuT7lWmrqHfgu4UCwD97kILvtjgmuDfxoo45b+1k4pQo7L/0iip7
	 bsGYOUKCBC2WmI1qP7A2hnfPGfG7xqMpea7DsDxCxXixftvaZUowUcfSlbW7tekeQg
	 6xHyaQqR/KroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9560FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719865368.26546.2905002948702564878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1922a121aa313137989b4afcee66a503d4cd160ecaef63efc91cf1c240ee15fc
Date: Sun, 26 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777198653
