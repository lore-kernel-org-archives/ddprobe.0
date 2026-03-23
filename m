Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F275D3859DD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774256694; cv=none; b=D6AD6zlffmSrgE60BmN39Kex5kzSJYdulILxUXSf6c5Uxn/jDu2Cuh5F0gi4lw4UzdDlgzfVDudMbCjYIKhu6OoXANvtrYspryvMOfiXzL5JvmC2ar0NinnlKAzJQSS6bm3zRqwiLL4LjQlBpqmRLAR5BoI9Av9gInQTW6xMDG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774256694; c=relaxed/simple;
	bh=PZzWx7KaChh4iqmo1Kzbj46BsVpw6Xh4SSxAlJtTuiw=;
	h=To:Subject:From:Message-Id:Date; b=fUgUF/Y1S42cHnAMBZdTjpErQYJTX7aBntJwBib6IPmXCFFXeeJQyGDjP+dtozkm0eK6wUZEoxpeTLf+lS3Mo3fFOqbFy7CyuCSc+etdF6qbl/H24CJ8SPjwuGiCECPWJkIsnTIwRz1+1+z8t2vqALXZO37zxjgtEdjs64pV0Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGpDap3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGpDap3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A640DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774256693;
	bh=PZzWx7KaChh4iqmo1Kzbj46BsVpw6Xh4SSxAlJtTuiw=;
	h=To:Subject:From:Date:From;
	b=MGpDap3QtYXAP5igT4ZlMTHtKBoewhActMDrqIugXUzP5ZiBm1p+l6B5IkEfTSm+T
	 922JUWjBplpfqAQczfxr/DTwV92iF7C5E8GkDhdYa7HUouRTtyLIwQ4kcgl995KFpF
	 EzMpdjq0pIlXL6pfqmz1eNhrRSyymXIhNZ6YVieuWHnszYIBwFN8/3mwsRmIG6X/5y
	 gReJiSEw1yRuQ/9owC4tZfD/Ky8RNLWncjD4SVoSA1WjMY8WCWYDkr55AkH6+qbWmq
	 /ZQ7LXQL37oWyTGHqXtD4/KHerojzP6JI4OBCl9jhuS07z9A5x8o1Sgy0MQI//pxoC
	 CMwU/HYiH8WMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A23EC01A4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425669360.2147.6997121134686331756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcb0f25112ba7d7d2ad619a236bba51bbbdc64d717cd7ba341d475933266b26
Date: Mon, 23 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774256693
