Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B31F7DA95
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749605994; cv=none; b=FPvwQ+Wn5AutL6QWFwphzoYoU0I4EOGLlR3cV1HLy+aswlUHSEgKvtjcMaASJA5+HiDvlauBPL55+ncJSC/LXGiSSGX3OLxbdsKWk42P2SmvhEA459crDdhHaUxFqDUtckShhW9kZ63laBGdr+qiFl0kc4RZ4waxdMF9AImf6bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749605994; c=relaxed/simple;
	bh=K38vAB4PsQ93hYxNnsklbNKrs+FZPPE1m2KbJ+t4cUw=;
	h=To:Subject:From:Message-Id:Date; b=hFVCwGaxz+g/Ba/kVNltZykTasHqyj6IONEvnOQsgZmijqDl/Kq10LLxpqlICTXyS08FTbARChafZPNQ0sZI+vX1VNc3WVueZ8jBB/v04Cq2tzsj0C0YNUkBOsOKNGyPyHBEuHQA+8yBMcUIfpR1EJhFiYntKTKT21r+8URKIGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oler7Vqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oler7Vqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3304C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749605993;
	bh=K38vAB4PsQ93hYxNnsklbNKrs+FZPPE1m2KbJ+t4cUw=;
	h=To:Subject:From:Date:From;
	b=oler7VqdmkyCmFoDRhm1J5ynxHW7C3uZuOOIVu8mM3mLQvRoGTURFrL6eUTTzsRD/
	 eno+doiuUISVHtgkq5mtpJcvfyYsqHZD9mgXpek8ug+AbuG7AoH6SvlpCeTI2lLsC2
	 ui0DVntJ+VFJAUKmwESU6sOngNfwUplUd6B1RPX1ybdRAsg7pLmbAnnNhU9+hfPyP3
	 VfQaFjvDhzHbwTlXQCZe7d1o0d3+Slg/33sZQL3stSfycr6NowduMvRhKl2DZLTnxy
	 /mP6/ooTAYsQKrTdWgRyHnryFEcWa/re5WCxaJYN6Cx1Lve42ZmJ+rrOl0ZivaIk87
	 vuL+46k73/kAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DCC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960599358.12322.15463757617730420046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12128de0829b17ee50be78bc78d0463a4fd66a00af90f82640490ff25ebceabd
Date: Wed, 11 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749605993
