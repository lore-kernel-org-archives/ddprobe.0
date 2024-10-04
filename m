Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36A1D5AC1
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728005154; cv=none; b=faySS4izbCmx4TgJjZLmI1PeVzTJqA2l6lRJKLAYd+I2GMRaMeARIOTika4kV7FNZDsljMi5XUEFDYoQVttEqGgdzc2C4XVpUxade/KQiziVYIPaOLW8Wnj2al+Zqbmb9/n/NSXClcc70V9UoWYuKG2nHxvxSoCTzhRgL3zIS9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728005154; c=relaxed/simple;
	bh=UArIDOZTWrLTXwIwNayw+Pl4u1J9NjBcOsx3qjawwf8=;
	h=To:Subject:From:Message-Id:Date; b=fMUC1+sN+PCm1cFRsmlAWp0swjA7VqHLFXoDxznPU+s8sRdyJv7vMQ9VQAPqm5DV4V+VMhVxTUd9e2bjxkM+ITDXjRqN4i5kQ7bLwRZpcg/iGtqYmOjcx/Oy8luZjPLjBywhFxBiw+pDq5JlqqXQZERrAdmc4IqJE9tciOyDHZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGrtpaok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGrtpaok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8081C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728005153;
	bh=UArIDOZTWrLTXwIwNayw+Pl4u1J9NjBcOsx3qjawwf8=;
	h=To:Subject:From:Date:From;
	b=rGrtpaoku8GeQ9cQUGZLB8dUxk0mFZ5R+2Wdgq5OyJYEQaM5BaXH0NgfVvALM2QFo
	 BOAG9XX6ibJUdftQQ4zw6K5/Tuf3JHt0dPM8x4iJP6kB7FvzRo7JOJkmvaE89+Ce2I
	 Xz8DCrIKp1RnNU68ChOchJs3dYhXYo9NWmBvBKwtbTb5QRIQoGqMZAHcvjeQvSDKW8
	 L6qvrVwsNrmBMVLY29SuML6MuhH9Yg6cQNt4bbIF75f7l0eENGxulAdCqwAkbWSm+0
	 4p6DUtGe2f1nIuJbL2rZHjkt9Q6MUG8+N3aPORmSOVlLpuUD0jY+8sHC+PgRvxw+bD
	 IkYxAPhyS3apQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A97CF34DD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800515364.22170.12171617443987984304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a4d88af554d30bfea2ec13b841262b7e3b131c9c5a8169531e91a0e76bbe6d
Date: Fri, 04 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728005153
