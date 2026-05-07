Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF4C34CFA7
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778191054; cv=none; b=c+8GHhFZDBGWARM2cWO7EUIUowbyLvcPI6p52QhmbaSnTJOqvdYodJHc3UlGAQI46QeAx5ZiV5Irrvyjq5ZSHIKQ7kO3G0UDvwjQm3eyOdaE9YKTt/EmouYWUdr//Jw6RK1mbyI4PAhZH099l+mULoEAnOkIGEKkbUjoF3YqmBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778191054; c=relaxed/simple;
	bh=utOrc+e9PNWG4+WFAguybybRUR5IwH5pQ6E4yC8t+y8=;
	h=To:Subject:From:Message-Id:Date; b=Tch7irpn+ZZnjgpjMoEuFEF+ARQH5U7tpX2JHrZGxmg8QfNQLtFaMeWS9kOrMhAaYwgzQJ0mIjvwQ4OpVxlnrB4fvxGuAT3rTEA+xbYh4KD3lLLpkCGDizvaOGQVnm5OLnC2VensvFyW4BV/YzjrSsimGGamzDMBUDKupnd22Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9i70b9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9i70b9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED25C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778191053;
	bh=utOrc+e9PNWG4+WFAguybybRUR5IwH5pQ6E4yC8t+y8=;
	h=To:Subject:From:Date:From;
	b=O9i70b9wNlcksDGCMrD/3xGw8gVoI6+qoSz9mnZi8IPUrB81dfpz2xcvvb64ulSQz
	 Wd+vv2NvYNy/YM+rt+LXVHPhpvwiysM5dMIfXBkPby/HUHFx0hUnPWRUDOPo/vMtpu
	 yk4DYTRQJIui+ZW0XxL8w4sjQB7QzP1NjKr4ZUvlVnYa7qsIKAHggoOJ6ih3onqo2l
	 PCh9ZkuSgunNKhroflZppnSSB5c5zvWxveCscTwWRWknKXm6uNEpUy2rijKmRYwEor
	 6jZysLAdRMH/hMTvzlx/kIzD+R2Z2jBIIpbGSO4cf7tiPtAoPXWyrfAQqrTQIhdg1o
	 cTENqrXpBVXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE68BCD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819105370.11771.4307964403760060491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093d2b8f731eab4ba70caee9d997c07a86e2fb5c9be1521b6f5f1734045c4fec
Date: Thu, 07 May 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778191053
