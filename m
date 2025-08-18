Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDCB28399
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755522593; cv=none; b=OesUX36CQmopjcBQVdZQvLS0oZFS3qfWBA7ZicJaeWd6GnSVR1Y/A/pLLUMdBNAkTDOYXi6vBdt9IZZmAjfDaCKwtFA0MplJc6cQ23wOrTuLLzijE5Q5zLYToAi8wIx7ofZsp/QCFJ5RtrrBtUEAw0qY+bqwbd4+RHHXUyvF8zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755522593; c=relaxed/simple;
	bh=s2xYFYbKOBJfqBH1QmA9bIVbV9BYzs/BvX403vEmnjQ=;
	h=To:Subject:From:Message-Id:Date; b=UO3Dky14b2haHDPjcB51f8P8RH91jZHU+R4dwwXt6LV2qRUqhZDNSmYrAaVLNGzQT7HZ3vnOFHA7zpndtk3UouHmnBSxkbstkQQXLBOY3F/JMwQuM/djQ4XH7KCbSBpLqWboDt+6YPC0rN3fLGIEv9bklx1cn0os8od5ddv07Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK4zHbtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK4zHbtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE95C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755522593;
	bh=s2xYFYbKOBJfqBH1QmA9bIVbV9BYzs/BvX403vEmnjQ=;
	h=To:Subject:From:Date:From;
	b=IK4zHbtYLKicgLdCUxY3EoYUASa7zzdyzMykuGhwfMUx9xIZJbqxBchgz9QqKO1hB
	 cLFgnS42GOb0513vFZLLygKU1r3SKAvuTuCxpRAaAgffS1J/VXbcvIfFE8NC345jy1
	 3gpFiA7bDZUb+uObXepxq8wkdv1UZAIVT/Hm0tB4pa8WTjEbqPOQ4g9GOsJERfMmIL
	 Xzo4k+iVChVTt3azBwdSPOSHav0U5yVXoLR1yi7Tu/IBIrXWsPeSgGVwenHJfBGiWN
	 pPj+1vpqcmBrF9Pu3W4mb/GPHGX4VLmg3hayiuAWO/U6gXHu1vu2OblytjJptODR+u
	 KzRbLvtgAX5XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA41CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552259357.32467.10237761809099523191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b127e905b0bffab1202a262c29dc58134518537b8eceefa1abd7f65916f4707
Date: Mon, 18 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755522593
