Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4E636CDE9
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788415234; cv=none; b=THoW2/tW3M0JOazDYfrbPVmFkDxdWW3QpC9InZEPSu5W9grJtYgKkgmPyEk2ien/gUDOV23L+xqa2dTEN2C2vG5Hy/YvaxI1HKITyf1Idu4gN+iYqqlVlfc5PnZN2UzcbwqIDIfwJI79qUA1p08n2v/9D5LjNWKUCfBzH5iQsxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788415234; c=relaxed/simple;
	bh=PsdpZD3y5eu/cKXvjrV63zxaKDFZ2vr4iBk0u7icMic=;
	h=To:Subject:From:Message-Id:Date; b=tWwKH7Ndsn1hLezEMICzny6fO0mO16ZY6WoHNdVEwDkEK/Hx8GXsfmyaYIL6wiSEZj6k3dY9L4FOfrBmc73MxbQJHBayYqGvsPnCX93NZiaDMdt8ZiaAH+b+XOIpo+J+5et+e5zCo9Lykr3T07UnRQTIbyJkO9bxjcOsgSHm3ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3PEdC/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3PEdC/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40ECC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788415233;
	bh=PsdpZD3y5eu/cKXvjrV63zxaKDFZ2vr4iBk0u7icMic=;
	h=To:Subject:From:Date:From;
	b=Z3PEdC/hv1/w/w7+0mug5hlkwmfsNz8yHdKHqhMyIAPbXpQn2FtapR/zQD4XH9ms4
	 0fT/JHNKO1ztw2bvAqcuGn72Mq5u6j5SdM6bS4ybQv+vt3hqI+w6lckZAWlcIwzEUX
	 LQUZXZKQC601o2D7/Fj34cnNWZoZfjmDw0sXrKFHO+CSjKyUoZ939v4EW82QBxbEws
	 oBPusXHM2AFQm8Yil/4pSpu0msZ85FD/2Pq/QqtWihgD4eCE5WB9nAKyODXf8Uiyl+
	 dPekTfLqIgYYyVbKQNu7deubavwfVtoE9Sd5JGjhBVnSDNUQ7lPWnrbsjn5hhEsTHD
	 k3VdVsoQy/JxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F96C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841523369.9925.4720164636733245280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4891f13f8118a205f30af3684e33f8f55c722a0681977fdcf43a0f764d84e9c
Date: Thu, 03 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788415233
