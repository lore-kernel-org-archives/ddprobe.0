Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240BD2E11C5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766249634; cv=none; b=nfQQq4nFgw/l9LbW8AKlhhrxTZXfTd5ltdOJs8E88MpUBmsDtmi9KJIWC4W4Bpker43KbLjMHGeL6ZtQFi94AtuACiqv0E33ci2oMJDhrjeJTC+We91XpE/GV+f4ir1BnehQE5b69otR4aWUuB5h9DQYO6YXxcYlIsnl53hGgYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766249634; c=relaxed/simple;
	bh=AP4pEL4DKZF9S2JZhq0hbcp9B03NIRCn66SGRXIFZfY=;
	h=To:Subject:From:Message-Id:Date; b=tTjDYCKLu12nhdNRaz2kAVcNQHAx96vhgHnIcre6gg50UOw5PfMNqjAIkHlLgsIyRZTeTwUMBDLeAEHLpnUmxkupqWBqPPKvVsv0T7SAhO+D9Iq3vdUTT8R8NsbzAw8aV2y9YOyIW0kVrSgJD3V48qHmGdZKITBdEcQDuUN/+Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq5vZdBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq5vZdBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72C5C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766249633;
	bh=AP4pEL4DKZF9S2JZhq0hbcp9B03NIRCn66SGRXIFZfY=;
	h=To:Subject:From:Date:From;
	b=Tq5vZdBgy2rq53UVd2SSqEYkw9tuoO/7B+0Jk+tchrTMvl2vp3Guc+ikBJG8JjDxj
	 VaE3lOb1kGM6MhTajFgrJ78VdJs0cQOITjNV7zZd7EynSYhVeG8zh/i0xxkFfqs3+a
	 I14zeHhY5XWK9ySmfE1KSb9oeYO+MvKv19y2YgxYyPb9dgWOPigPeE2Sph6OWBLAho
	 476geqLlg5U3zrApZf8pmXcfSyduojX4PBd8EHk9k5QRgssEHKZDGXPEoxGJgjYvq2
	 +rs7/d86ETXxhPS/7rT+UJL7KxhtBk4c9hmJVyAk4y/nJJ3DSMpd2kljygQ9cqTo98
	 66yH53E5ABQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93691E668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624963358.25859.11339800888467638694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2b1decc5ca19b71128cb0e5969da37613edcc34e2461948d2a34c067c4a3d1
Date: Sat, 20 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766249633
