Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066281F4C8E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767986634; cv=none; b=tecJBgIgeUkMxpwSQdJm6IY0AJfQboVqXf+jjP6MIUQ9yfAhg0+s4Kb/431AIf3u5qUHsvp+4AonWYDs7IY8K9UMjErcm1dp1ooGRECWjbwzZqub0FFG+j46B16ccXygEdY2xJx7pkZEykWAG9Y/pYg6IcXhyp60F5vTfP+ej2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767986634; c=relaxed/simple;
	bh=bRBhBaf7a+1JzSEVqe7ClpvhQEY7SD6drFzWgWUP7lQ=;
	h=To:Subject:From:Message-Id:Date; b=CPubhT0w+Fx0L08t81RUYCZKAz3TPCTmwOffmNZJemlPwrj1O+UQWL52Nts+zXeP8QMkKRt4XzoHjXKgOsBTo7stlM0lO6s7Kxil5R1+/umx2q37r8O97f7+RjAnYkP6A0kEJGvBBJdnnhbEQzPwbyCd9XOSw4BR3vhwhbQZLHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fs7O6Yup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fs7O6Yup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02C2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767986633;
	bh=bRBhBaf7a+1JzSEVqe7ClpvhQEY7SD6drFzWgWUP7lQ=;
	h=To:Subject:From:Date:From;
	b=fs7O6Yup1aCWYm7nVVL5vGnYALCwIPHiuuN/8z1LT/oiCSUXDVwb8m7Lh2xrvdfCf
	 3iq5aJpmnnHG5F62R6bVutdhPZ403KwlB47wJFsHdNYpGdSbNelap62D7f4kgUBdDx
	 +EAT2D0mH0VKzmWUe3InyuEcLco+Crd5kBmx9NlvVIoCnA1/2pObfBAnpS9nQHy///
	 tHQRYUa2ZQPnZj+eKiOsu4OhAlSljHb4x+DF5AgWmfJuWizo1X6NUUk/3uzl8ixKdc
	 /6BlwwhNtm2I6byadpI3JimB4GzGN8aQJgF2S8rUxr1qvDmpDFXo1z9764RxUf4EGI
	 5bJ7ItRwBQfiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B8BD26D7D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798663358.26189.6457270983219059275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b972f765ea16465baf5070b58dfc1e927d5fbb05f5e040b02fc6c182ee531d5d
Date: Fri, 09 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767986633
