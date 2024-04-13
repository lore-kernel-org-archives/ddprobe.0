Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800D91078B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712974163; cv=none; b=B7RVkxDyrZsRwO6Gg96VoXxgnVnAEEGgaMueouZkuHv3J0PlyACPOo8yMyn9Kp0Wk5+0IKP5bhXZyDUoAolSz7zrViNj9gin+Cj+U5way9rmgzO3tmm6SaqfaLnpXcKAsF06yobL9hOSbFl1hmvXVcoMkXrFK0Xq7cYn+FSJUR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712974163; c=relaxed/simple;
	bh=FG9dBSl0RprpyAe3CvviRQdb3vxA+ZTP3SlQ6Ps7uPk=;
	h=To:Subject:From:Message-Id:Date; b=aHTPnffSHsWmGaaQPCQ2A3e7luWH1mc7Iv3Yum9lfiz8pX6N27ob8KhAPE4Fc+oOoAVs1zzPlC4kmhO1atm+x/OoHpJULSpLxEx73q9fkbWvYUzse58JeVXsYJPlgOH7lCGYSgyJY8kcvsAqIVE13vUWAhRK38CnJPuTgvqCaKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQXzWkKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQXzWkKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACA1C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712974162;
	bh=FG9dBSl0RprpyAe3CvviRQdb3vxA+ZTP3SlQ6Ps7uPk=;
	h=To:Subject:From:Date:From;
	b=pQXzWkKGfz71UHOzcNA5D2w+XH9TiyaChwa5OwSABi/ZXCot0p+rHO0kWRl+RnB3Z
	 xAn/VGpd6cee9WQHLLv7hxScF0RI17C6GzcQI5f6mFW8/ehMlI9UDFeICAS/jX9IPz
	 myV21lg6AnjutXNjseS7ylQb45g3cfBpkvAURkyAE/5L4SKYXu4VSyhKMmFH8Hg9mZ
	 GnObu7A827NrPWknBkWEIX6faQQMwt2xKy/91RtUb27oMQH5HcK36LBnoId+9NEzcl
	 Aagbq2sa4kfyP61RUCFCzn6uGfsjr5h5cGMhPKT9sxmZR6J46W5hyzYSWIBPa492Qo
	 UthvUT2V3LTHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66F0C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297416277.28927.12924033362644356797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951645dd0a333fc1203ca29945987f2db39aaa7364cb412d3adb93ba6d3b4202
Date: Sat, 13 Apr 2024 02:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712974162
