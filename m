Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C346C2EACF2
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774881893; cv=none; b=iOvxgsCIIUDdEaeNR4IUlKxlMUe5JUX8TJ3xg6QyY+n9vAz/hJ3cd/oY45Jv+lfR7AvMR5bGWoci2iMk/YDKzgh/VoGXWsJnCKhtzzEYYxQs+PDdUPh7peiAZ6GeNB8wK37s6UCNEh61BY4S+ejq5Nqpnatt7XR1Djq3V0UPu4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774881893; c=relaxed/simple;
	bh=o1+HJs31YUDaluendeNXCB08ddcsJZBZsIpeYKDKNGk=;
	h=To:Subject:From:Message-Id:Date; b=KGCXhdyhU5hg73vW8a86HOu164XuDyU2SvISPuP+XVzcXkJI9ABl13bYCnrt7Y8EpIcyipaC+Ele5MsPBAcqXQAoQmfVIDX09SStm85BelsZohj1DoMNtH1FZ9A9iuQ2JajVWvzMuGCw6pyqK7YUHH/jOE0iFuPkoMS3QuRbwzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6qCuhuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6qCuhuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774881893;
	bh=o1+HJs31YUDaluendeNXCB08ddcsJZBZsIpeYKDKNGk=;
	h=To:Subject:From:Date:From;
	b=I6qCuhuvfCqj68UDwKGljk9KmzvQjyVqimb2CUjdPY/0PAJPTkhS6tS5BheAgcn+l
	 QFdb9dXEzmObF0SdikRFLLJgzOVDbwZHH8oj/ElJ27WrkqhaM3nLQjf+vhj08zgF5o
	 gyPbatkersBnvIk0NZcEg1zO95BSYMMfvFTEATvKc+XTUlAEPxj1yWM6RSDDrrYebJ
	 x0sy+rnpU3uiMPOSLgxMFn3q+OcA+3wHblbHh63rw78uPSRjUz/smA87fPep8CGAIW
	 yTme+7BDf5pKZCVW6ARPSinC2rHw/oHns9Ka/8thJD29ZSOWokh/yoFEiLh3BUy6tE
	 P2JyHWkYbQVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937531061B06
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488189359.29684.1493151190434508312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d928a228d270fdccf02b2c888af66cc970eb99135e13703c3938fcb518be0dd7
Date: Mon, 30 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774881893
