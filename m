Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0D41A5BA4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743406194; cv=none; b=mgatf1qROBch8UKFJ1pcbeFfTPLPGBQ4YlcJkwx28DDb7aJqwpaT3bed43isyvQuqy8KvzP9BssxfRD1NKhSAr7N3PdBbq86dOWLyQioXvhsYYGmcorRBuGgSJyeEw8Vye6aTrMfTvDYO3xa4sEUBNrSpptmwWjuF7CipARtdbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743406194; c=relaxed/simple;
	bh=W4Zywy/rv6G69ApuKpejKlv8r3X0MEOYwJrb3IGYgmo=;
	h=To:Subject:From:Message-Id:Date; b=O2q6guP1OyYUWMxCHRtVC7yza482JxEZbvwytpCseioz7yVBGLJvCVVskp/t1A19WlrrLQE8hwYqUkZcI4Pvjdvh54TFARKCEd9AWjfDxc8TFJ+2XMByH1SFLZkRt9ojY/2BPajBnY/7n/mUhMGANNyRMUecUw7orGdGb2y1VOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLiXq77i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLiXq77i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDF9C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743406193;
	bh=W4Zywy/rv6G69ApuKpejKlv8r3X0MEOYwJrb3IGYgmo=;
	h=To:Subject:From:Date:From;
	b=cLiXq77iXf4qkydu5WpsQv2kxqJjPwd6Sa9dG9uKGbtPs+RmQ7VFaN8jB0SFptKlZ
	 CM4bDOP2UITDjwIaGS/tUcE2SL2FmjMz2qK6jgd03ZKDHMTfeRF8yrFfzhcAHlZkgv
	 Wf1PeD37GaiannkiFW3anWXga5H83zcs8mlP2bDxM035ufy12hkTW2WPM639c5oTVX
	 u08DSxlIS5qmdE15VHmIAxwcsY08f3OE0G/N0hLRxzAMpyoTX0QnIqhVLQFpHNq7ut
	 Mn5k5p82zblKsMJBtgB6NKL5LETX68eWnO4G+3IDvyYRv+0/jyL5waHatKpdaJqIWp
	 nOZgHKKylMHvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928B8C36013
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340619359.322.17878764723388906341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d720f5b770db3958087ee045406949cfcc16511cb45e177c192d421fb597107
Date: Mon, 31 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743406193
