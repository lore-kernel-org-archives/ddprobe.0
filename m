Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303531A01BD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734738354; cv=none; b=WAHntiXgoFnnHUYD7apEvvg+ivzhL4MBn7Lsb0QfBvOQiY9zwHxcWAH7kPKf/ABwaTUfvdP6ClVnWi5mVzRTeFLPb7id7T/RMwH+gFnrVoSCCO3MfehEU2QrPzZy+DK0lrUPs7gINyEcrKyY6mqobOOCk9aDB0QPdLpBtQj6DX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734738354; c=relaxed/simple;
	bh=Lo9QF+LUR/NUl/btetR1o26WIjz4oler1/v/uc6j3yQ=;
	h=To:Subject:From:Message-Id:Date; b=EjlY+/z7xVrU+o91UJ7sO00MVS49inJxOV3cQ9/FY7PfjyQWoTu3WFAj/HKPv80H/bulBaFsj29dOYq33kng9nV76tAO7b3kQKUZo3kWb+ZaALBnfDpYamnj1eDQPcR0fMP+GY4gRSs5nJKyBqP8LTaNhMQHOpTUxIHcqOsRIM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4ftnmr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4ftnmr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A932CC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734738353;
	bh=Lo9QF+LUR/NUl/btetR1o26WIjz4oler1/v/uc6j3yQ=;
	h=To:Subject:From:Date:From;
	b=Q4ftnmr3Ii9qeiUVbdSuavtsHA62P/2z5AyJGjEf1SfNbCuq0kknkbToO6IIjPvqz
	 mOz8acG44lbP6oAn6Z5GLMzIFB1/R/Orwzz6aO26EsN7f+gVl5n/6BEq/ghKbzuPNU
	 Y/SMHABpCNQ/MjpQqNIbYAdlk4Ukgoo4tBXHUU6T98DqpQ/B6CUIgIJqLKKWQNaw7Q
	 b4qdx520O+ZjfD4EU6yhoyrLx8v5Unv1SVziKkXmmL0PaZ5IHWpztQdfNlI0ziNuSo
	 hIMgzYzABcsMCrRlkVobLZotg1Wy+HVmFG2p1GPLAJEEmQAPMrNPkN6WnRPfGzVlbE
	 xCpMYYy19xWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95602E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473835360.5291.1330661893728544126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d62de0142002add4f2b7109c7097aea0245bc1f6435f67b179c02a936ae24b
Date: Fri, 20 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734738353
