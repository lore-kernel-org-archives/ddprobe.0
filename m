Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282A020CCCA
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728642954; cv=none; b=f7gDXCveG5+DZNAzqG4DEgwYq5AFeoAR+7Vni2USQkrHUgc4AtEHsxacPta4Au0JXekdu0OTneoEKkSjLR5UKTmPZ1un4XYP/eTTtJOJVrmi/yV+BzB/hdRy3mHGjUrHAsUwx+upZGALHVhHA3K+c9PfEQkVU6KQTOVQrK9h0rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728642954; c=relaxed/simple;
	bh=Q6DJat/tGMT4N9fc4dIj55bq80kmDSWkN8DXF4MkIGk=;
	h=To:Subject:From:Message-Id:Date; b=WH9mscqQoVLHTfLHTsJqT7nDWw7FHd8TkoMlsAaUxqmiNWX/b3xxqRvgWMc3oejAfAH5HLO6WnMFZqoRbjbwD32vDLqxacfsVxAp5mF/9R3dHTQZtvluA9RLhdVMB0/dhFoZLzMMNKr0BuXPAt0UzrRSvmoUCOpR9hX6FT7jxNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lI8pi++B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lI8pi++B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65A8C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728642953;
	bh=Q6DJat/tGMT4N9fc4dIj55bq80kmDSWkN8DXF4MkIGk=;
	h=To:Subject:From:Date:From;
	b=lI8pi++B9OitnbTMD1HwEh3ieiS51rOyD03IugST1MyffEGe7VMtnxpz1yvSLwdbx
	 /FD9zDWSB0IzFHJTUQF9H4FHlbh8raBKDPFCgvBgjy2EA23ruArnheIixOX4FYKadz
	 4BakWPsO6+WkT+ebQxPivs4TZIk/tuaOSJdBXHQfvfSKMuAhVGdCvwmvYF8YTtgjDw
	 q+MuDPMKee6BPXZcZseVcflOs2x4ApF75UzMoWDHdMa6zc+CzgafVHJAd53pm7hRlS
	 q442x7g8zG5jmZl1C0zYSoJHXgYuScKj99ITdTxphzlRswmR85ESVdsVWBkg9w/B80
	 fui2TPL93mTGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94220CFD31E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864295359.17104.11191518588970651852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e47a2aa979e2a8474da078f4c7be0f0c84ea2de73eec4c8203db024de59d4e9
Date: Fri, 11 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728642953
