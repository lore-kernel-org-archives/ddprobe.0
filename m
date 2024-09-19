Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2296F839F7
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726775754; cv=none; b=DWLpf2EBl+DJEion0h9uouYzC0F2F6BMX81K5bvlvHVsheK3CSqy7VlozWv5H5FZPsQAb9MESfK/A9QWMh7TYGcWrnOjdK66humSvX20oVzBryrbb7AOWZanDongHeopjPvRv5r6JOKQ+pvGgRa6BhnOqlN62hguHwFeWajaP90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726775754; c=relaxed/simple;
	bh=WEeVv4KRL+76csShm4XNwrXOnuce7N1rsqKcoPKIbLI=;
	h=To:Subject:From:Message-Id:Date; b=BOfOHP3AQIiCvVkKdNPP9Gagd9Ve7GNUQy2B1yQRj77I7Aa6L/g7uPzJKHBqtEstMumn798TZIaohbPsl+vjjv+n3gu7MoDYc20JFbiUyDWE2vH1eOVNyJVN7PPWsiVu6wxThBXDA7ILzuTWf3FKVrwuYKfD+JMxVqbOdcfYSQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dutsAPMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dutsAPMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D6C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726775753;
	bh=WEeVv4KRL+76csShm4XNwrXOnuce7N1rsqKcoPKIbLI=;
	h=To:Subject:From:Date:From;
	b=dutsAPMOBzalSKzAucrbHvB3em4WZjBq84Tcau/mmuXMIoG/bbMcoK3mb+dCQbI+b
	 WZYlYXsedhx9Zji0ajwkh2t8fL7pODo38YNEumaFhgNRIHNO49e4oRIpLhjhxhM0ZP
	 p9tWrWyQJpOrdU5kCCM8kG097nfS6OmoLaLSZL+ouU+hlDwka0eqfwQNvCGjmpZ6DJ
	 ttDq5ajmvHiTfyNvxMfvMu+mQd0Hgb1T2GEnXqTZm8p5zLOf2KgWDFh/D/Wx394Qur
	 QNartPu56DrAQOZXsr9MOWDnVZwQFFUwq+n3bB+u+SlK8oGwnxa4cT+cSAW69lL8AU
	 5qtJ73itcV7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9806DCF3963
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677575359.20233.3806219275015762065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce5d52f916eff62fc9a439f2da4eead3e21f294e1b3f4b4c1dffee49cca8eb4
Date: Thu, 19 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726775753
