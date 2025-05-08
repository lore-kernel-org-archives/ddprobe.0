Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C842253EE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746707994; cv=none; b=YbEN4INeEh09QI1BfdJQxTMaLW78GYAihgv3jN1XGKiw7M+c+NLekX8l2Ub5OWZmFObhGeHmJLiq6mp+yxITI6Qo/z12of5VYxWg7Ew3tBI92eAWngmacga9Iacs1SOE7J9DVaVGo3K8PwmtpQblTpMKh6f4BeqHMhFSRgdr1gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746707994; c=relaxed/simple;
	bh=XPoro5PtImKhYELhZ0GyzIPT8QnPPZGHdcOHg8IQ4Fg=;
	h=To:Subject:From:Message-Id:Date; b=o/ShsDnJJKYjpLIWSetFGpZPzzssaBuJddZGrA9ES+uLAOOdoKsMCrN6N5UUdM3MyVuE/h8xMpxV6urO7GAZVrBusZw9ev+siHw93wkyTfIBltVasaM27jEgdJVxdN/g9TT7Fft15kIsUs5t99m8K14n0AP0JwbvmwUTF1xjBdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVrhjibu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVrhjibu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC45C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746707993;
	bh=XPoro5PtImKhYELhZ0GyzIPT8QnPPZGHdcOHg8IQ4Fg=;
	h=To:Subject:From:Date:From;
	b=RVrhjibu2ybSpu4rxbkKXFYbXM5J4Jm6NqD71FVINLDz9LBLOjL2iWZAuFYtI4xuI
	 RMELWC0gMkTWglWYti262sHR7lokt5kxKoVIKAWy2P+6qLGjR6DWdOo4e1ifz3avi5
	 7CYc8FfKetOd8l6+TGssKZmcVL95k9y8toYOhZOa+rIm0KiGRwJfbjezTC6isNK07W
	 UkSBadTmzABdUH40IxODwdIsAqoZ8Ziqhjed703zvTW+GW2IHtblH34Ad+t54Jg2cN
	 dAdmUlJvfdGhn5GPMgzEz7s0D4sf3Xjn0SyQyVfPQdDauf+9iPULXRGlaD0U9qATpz
	 h0lARe5SEFwdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA94C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670799357.15601.3211012930999504979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a21c7725b95482f06ea8595b80486e8123433ece33aab6228051e3c105fabbb
Date: Thu, 08 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746707993
