Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE2B33DEF3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762370394; cv=none; b=aImXJX+JWYhJe3lrVcweg8UOzVLvBzty2Pz5wutekt2MxAn2HiaBbob6z7oWlpwnAkQBXPe50AvchjC9WDbrbffPymRMUx/eRyl38SqgiefOA6rEG247tXRSUmfUhWmtyv6hXwOyZ38CafOGDWkXxIgUQO/0H4JlJTy9lBNJWpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762370394; c=relaxed/simple;
	bh=qavSXM5BI4seoLLNP3yfPhFnY6mMFKAQHr+xNMzWi4Q=;
	h=To:Subject:From:Message-Id:Date; b=b84y9PxU1iaIpw5DVTIFm4FRs7iHJQuZPZAyRyapUkscJB0Z9Z7hrWc7FIk4l/VztnMPBanc+jSTZAzLo+gWjj6JGS4vAXePizI3q4jTCqW4IHUlLyV2Le7+iIknxOCUuZbbEYQ7MOgXdcxVQKAZnK3JKvWR0xZchCPiEOvZnYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cdjl/ZC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cdjl/ZC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B773C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762370393;
	bh=qavSXM5BI4seoLLNP3yfPhFnY6mMFKAQHr+xNMzWi4Q=;
	h=To:Subject:From:Date:From;
	b=Cdjl/ZC63ocqTzZFS11524vIQcEdhcOq22mqUmgQA98Mc6BALwnzvuq3gB3GDQaJy
	 UyZrycz03kdkYTXbwLphNz0EVxSmG9EotRXp44Vm4wlGupis8wPu/H2Qm2XatZBcdg
	 8jQFkuc9TeLCA/E4Z4VsK/+qcIjA37cbwbIltZUPcoFHfrirVrzPgo3DdMn8MgFruh
	 mNYhcmH6IQX4XLXqxvVyNvt4qhCG48zFdzuLUwsdZO5hemyZaltQwP0pppqixGORWi
	 sUiEn0Qr1O9aAilfEcv868MGyxz22oPCZVyEhwuu84IFbxDUOE+q8zFX/an29reH6v
	 ahOcZZda/Qf9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECABCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237039357.30896.11177806192171376175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de7b6ea8cca06fd8bdb3fd1c88a4a6151e763be1149ded98d15760731f0a65b
Date: Wed, 05 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762370393
