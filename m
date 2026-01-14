Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3B9215077
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768354434; cv=none; b=F6SHPFCBGmxO2+Ystvhv70JxGa2gKBOb2n2skY7dN312PKFFDH+VBY623YjtgBxsbcWQqv4jNTwwx44T8yFiWqqjnpWOBLp1c3MhTRtgqVlNPYjofnaapclqmuhd5JwmqvoS61/ACV3ndTg/MmTc+3YrS2IE8dDW/ZeEIJfZmBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768354434; c=relaxed/simple;
	bh=E65gSyJq7cRjqRH8LEaV6BJgE1zjAR71yS4xK+mty0I=;
	h=To:Subject:From:Message-Id:Date; b=hmROCpLkH9SjzzgnI0QY1IQunahDBKafZrX7RjOAJn5mAHDd/hcGHxhyZFpckNul9/GVLXyq7PaqDy7dLtN1YtBBD1WAgF+rtq/Hw27hPjM+gdf9PEGkws87CcC9WEwMx9e82/lRfvoMps168Ajh1xJxZM9PiDxil1vYKo+CqQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQfEQCMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQfEQCMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC5C19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768354433;
	bh=E65gSyJq7cRjqRH8LEaV6BJgE1zjAR71yS4xK+mty0I=;
	h=To:Subject:From:Date:From;
	b=YQfEQCMtVIMB/zfoKrDEErNwxF6JSblp2Pnc/LsbgLcQX4oQgYx5zRNa+T1I4Mrwx
	 89Q+dLEQCzFS0UcZMAWhlbTRSA5KKHU43tX8ZNMa894C2rNYlxbiXqRV+Sm8ywdO/0
	 rMcCbdX5rBy5xDf4S/4wh5AVh7EMt85KHxlgksbOhEKF64RAHOn+4ZIxjtSGXuNunj
	 H9gmBFmvrRAS1EB7dtYtkXYWzyP8Trey4lSfMeXoiNdd1EY7TpC5+Ib38VBZVbeKdK
	 yROf4ViZnouEuxxFLs9YOuaCQpRYKtyb62unW7LWa3WNuDCG1ND+MtfvqygfLehcPb
	 ULgSLZYsodOGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A48D30CFD
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835443358.11884.4458024903508990724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94af1a9486cebd90cf57d9894118aa2588b511a358ed346fde365756529f1064
Date: Wed, 14 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768354433
