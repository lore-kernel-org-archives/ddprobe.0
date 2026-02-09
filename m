Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5ED23ABAA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770635034; cv=none; b=Dtmh8pzzUpEbEfuNWqatZEwIqnAcrlkGtVe67IhRnn8EiWpviG+9H5E0u7t6cfnvU2jJjpjFmEBJCbabz9UInTw01zV68Ix3PPezMgOShbpbnbdZt6HW+neq96uFzLA5CVJED1RmsT5aar75ipGNOFdsGKpx4/2QEG0ORvywUSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770635034; c=relaxed/simple;
	bh=YXvADlXwUY/OYWj5RiaQmUZB/GDng5E+XpQGXFabpck=;
	h=To:Subject:From:Message-Id:Date; b=X/jMxtOUnv6Pju11SJM0pZeOq7m8kZNXm7ETro9MJk+G8RYd7xf1k4FQ7IaGcxR8dKXI3dsPQQukAu0VsUFU13iARLMugxG/8+pBQuK0CelWQq2K0uhPL+MSW2GYcSYKfMr0XsYA3PVlTGs7UlkAv1Di7dJ3Z7hePhQeKIzCYDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iq/KHkWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iq/KHkWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E08C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770635033;
	bh=YXvADlXwUY/OYWj5RiaQmUZB/GDng5E+XpQGXFabpck=;
	h=To:Subject:From:Date:From;
	b=Iq/KHkWcPNVqIqNlWZNEGj03511w5v62aeB//1XrEcZdLR1S1acGgZsr14fC3Th8V
	 SskxoQJO6baKrhPpPrGgAa5xaOjK4xORKOK9xgyXbRURksFlSXycI/8/iY0wSiTnj5
	 9hem1RhkshxDv/NTQHUamOXJcb/ibzxja4YtDGlHCpOiblqe4Kc7tpZa4L4PHOJD4b
	 fox1K9OEvGUp6fRRUyYzy83Oto3xBZ/pAQeWy6rkGxYqsDnET9M6sD8pwwukW+VRbU
	 xVCrUEAzRZV1YTDIhBsMFFY9RlrXpSnkLi3HgD5HUkz6BLeGoF9fVYjQWoTXua9a+E
	 pXy9sptqx06bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF011E7E0CA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063503369.15093.2107728217222486607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa12cc7653428242012d805a9573b6255ce91dbed2e1bb1496546b3801b0019
Date: Mon, 09 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770635033
