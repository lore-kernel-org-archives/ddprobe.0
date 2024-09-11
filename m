Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF603BBC9
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726022754; cv=none; b=juUN6jYB3Bf14hfLJyLrRP6X2lX6vp3TVyTz1I9Lgx9mNxT9g9cCqYHHExpSWOYjbGxRHS3y7sy2+HQ5+cv8CNsrGenyO2yIOHw9mKYWAfp3dm5tMNSrC0EJqXSZqUFpH6TYYTIVn7jmWRVAfWAYj1qHuK/mdltCD8DK6+b/Oqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726022754; c=relaxed/simple;
	bh=Kzl2e7nyDaXeePBKF4DnKmvgTZP1dMDyv/QzkH5Gwtc=;
	h=To:Subject:From:Message-Id:Date; b=lMupyiVN/gO9NQbOyeb9ID+/7hz8Q3lm12nKim3HZ/OKU0RBr3uhlD4cJ0FpKOTnYqwZfOGeLrYDMSBMG4YRkeTmYtdmSRUTcgrin2LpMvzd1kKDZeqDW8A5BZLXq5lLovR2l7HFE/cfPqVy/ymvYq3UtCwb/r+F/0w8tQ+wUqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wf15f0LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wf15f0LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF871C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726022753;
	bh=Kzl2e7nyDaXeePBKF4DnKmvgTZP1dMDyv/QzkH5Gwtc=;
	h=To:Subject:From:Date:From;
	b=Wf15f0LGjpmISWZOgdqD8cV/4T6GHW9lCxloxl0TSgEsVeypdDw2upXsSzUZ+AQYz
	 srUE2PDZOnfgrvnwk0NV+8+45ZCdOW/l7r3iCQd46n50+Xi3/0kB0zyevDZv7SN9Hn
	 D4vB+Po1NlDos9qr3uTfyXOAgyzrtv7w2VJ4r19hA59GfV3QhSii7gg1UyMDd5FqMv
	 DIwdEt86Q6ETjTk7ml9DyAxo+wisk8bOjfRr/RTBbI22qjyh2vo1hw1b4KlyU+7Eou
	 A/YiJepIYAxcCEVBhVO5btdAfoFCcHbFsFm2tFqtswC4TE55MGEV51PiPBhlGBJLJ8
	 YA0XJaqAg+SKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF775EE01FD
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602275360.16095.4251174125604816847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e344c15c9c5466ff1de52225eeb0559f583d170d63c3a7ab59132a3955aa430c
Date: Wed, 11 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726022753
