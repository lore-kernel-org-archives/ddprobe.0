Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1394061FFE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731041154; cv=none; b=kkoxLPanFD7ML0P/X2XKzr1+qJCheF4f+oaafErTOnJ9MCZjXKSGtSmhYkoI2ctIocRx/p/CUodUoJstT6Y9zr760V6hdpLCWFX93mHJ60v8EQfIPew0GcadSHZIM1FwSZAA77z56hikzGjm/MqGZNZTr/RMt2yR7Eh20Z4MKKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731041154; c=relaxed/simple;
	bh=H5FSuFOKuuKN1743rNTZc2v7PjfwxD/2+AL3ZaWWkfo=;
	h=To:Subject:From:Message-Id:Date; b=CiK3B8z/ZrHAUD+ikQGTZdN+V/moUVQ20D61ty0SFCHo/DkxoEJpUY24TcHTtBIFyKFYehrhjgwH4lmjJEhL0kxtst6BE5kjbtOC6Au1XuCM7xZDeTy2hcPuL/rJP2JF+kTGTlUsO9h034Ay/hLxp00QN90D8l84JoTRf5juwDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNHcJT6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNHcJT6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B20C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731041153;
	bh=H5FSuFOKuuKN1743rNTZc2v7PjfwxD/2+AL3ZaWWkfo=;
	h=To:Subject:From:Date:From;
	b=LNHcJT6AaeQBLWIekSqRPkjGY4jFpmeb0JOBgeJU/CtCkSzg3tXVE3bFbINEpJYUK
	 4f96ggrp0Gokl9SxkUSgJeSDVWmvrzev5QQl+c6rMO9mL/+1hPyEd4FSCZhrbA+axU
	 uhFt1X5W8fTmCwA0k+ACclY5dCDxv8TwYwZz28IPSJxjd4zIC7bynBA/YMh6Um4iDy
	 eYJhEJspLLeYr2b9/HNrERKzZ3dEcCE0zluv4kQqUYzwNJ14RK9v6gT09wr2ZFy4S6
	 IoT4bga845LwS5o3bpDDMGVLyl/AcLsXWh2OMj+QxWOgi9C2zqHOL6bgNwygdUgJ3P
	 AyOAHPn004HRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281FD5E12A
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173104115359.2580.5284964268667206362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d44233569bcec718ea51efae6a4b331e8231bb3a86fb46f9dec0930379836f0
Date: Fri, 08 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731041153
