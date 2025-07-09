Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240F32877FB
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752056994; cv=none; b=hgwVrdFhXK2EcsjtdsSk8sUJKt+BhbqMplsFtcWI12reUx61CnLHuabO04nGDiohVmCq1RvyzdGrw/N7hMm8v7TZ15BOTuVulcpO4EJu3bZdQzQEstyYPRsOd83cGwa7fThor/XVPU3aSzABw/73EdxdonXbOFBtrMLzqlHfePo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752056994; c=relaxed/simple;
	bh=5nmrVS6PlAvQSrv85VHmOww9PyL/939AQFw62MD/1xM=;
	h=To:Subject:From:Message-Id:Date; b=CHiMsyKEEsRVlJJnWki5fF9PeM3ONjswvT5+zBGdfcEYPivRhd75TDfy2hgJeMnwLewbrjudWESe+uu+/35dcKK9/E6L7GZv6BK4Eb5XTI9yiedRNwNJPgAiMK2g0oc1NQqvdR27XIGwumFLh4rnXwTbwkcY5Vz8zpSsPGAmf2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klzSjwKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klzSjwKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA7C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752056993;
	bh=5nmrVS6PlAvQSrv85VHmOww9PyL/939AQFw62MD/1xM=;
	h=To:Subject:From:Date:From;
	b=klzSjwKBIs7Fx6+XFq5QezQZZ6jdprl8mdtcsZr+abmyyrFiEyXe3oervURCM3Mhy
	 g1x9iwbfhLMFxbwQDP5GrfgpPyHbRXrZuaFla9nB7yda3wB15TRwQBRpbIAzu0wPiE
	 6UX4R7oDr9Hp4RR1HSylBqjsIogQW2tZGd+MYqMfEA/X0gP3flEfMKa+AgOyawFejH
	 H50zUd9V0w1DG4Jq3yx0gBj2dWn5uUHQchtqDqVLo3FoQSBzphEWmrH1Uo3J51a3JR
	 SR5W0YFznlq3SC6CBavyH2RCcUdL09d11qmvJ/PwDvtk5+IWL8GnLAAhnAMAnH08Pa
	 43VwinMpL7Y+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E7C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205699358.21730.63801195023350658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111faf34bfaf1e95812ef7d929991d54dd5b255192576830989f8e9d9ef0a095
Date: Wed, 09 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752056993
