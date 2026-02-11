Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C283158535
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770830694; cv=none; b=j5pKIceHfJTBZ7rkl1xaYZgorrnAiV0pkVWb22hiF8CEtv0hn15VoqiQJb9Xi+c8QgUun+L8KR03Et6U6e9do9cZJOsBds6K9dEwCMZZ3w2j9hPkYJkhS5KuI5Kk0Y/MNpBO7BFiDVndn4+4tDxQdHZ0WbGOhhMQTj7x4lGoSo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770830694; c=relaxed/simple;
	bh=KVm5MA6ve2SQfjSDZDH11TmwK5W42DzH0mhBdkS53+E=;
	h=To:Subject:From:Message-Id:Date; b=S/8f2TCmBAb86J29Mgw4bnzdHrKplUzKD3UcMZLSQ5t9KgEwp1A8gDfLKnecZcvdzto51nF5f5Chl8Ecffj0bvxZmntbdupgok02GL1IteNVyrMq3owuQGPKP35qvVMr65wgSiE9l9QimJPxUy96cQWuYkwXy+bqe6BrCjyI+Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oV6dMyUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV6dMyUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B558FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770830693;
	bh=KVm5MA6ve2SQfjSDZDH11TmwK5W42DzH0mhBdkS53+E=;
	h=To:Subject:From:Date:From;
	b=oV6dMyUPFuH78JcHnWzbbVGOEPN9buqDk8P4Mfk2foSZaMuBx2yYwmQ5ZOCy0v7hI
	 aHHh/GhAljvUn6fmVgSjaUm4jPiNSC8n33TC1b+RfDGdSZXo+8za/5Tk1VVFlCAvjK
	 eendAYmdW4vMQYaLP18oYWzjzUsYbTFzc2HSEWjn4zfAGP8L7pyd2/Ebdf5Buz0rx5
	 VA77/ImOUIafalzhkPB378Yy0jPAwb22ZBKobpH1auklgAbePfRJzz+1uj1zrWbjVF
	 aZC5oRbIdeDfTylDqgLTiq4A4o5BSAAIkyzcxSUywEJ8GOeq5C5fc/wRfz8PLeO3/X
	 jHX6XOhu8+iIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FCCECD6CD
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083069362.17153.12714090651888892526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c9989701d65689fafaf2a6b79a33d59f5ce159b6afa798538d41494361cf64
Date: Wed, 11 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770830693
