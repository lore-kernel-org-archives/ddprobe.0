Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354463B1B4
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790487034; cv=none; b=O7/PXO+iA9udoR/ebyCuBbCP3NRqHHfED7TZiobIsThqpZFgfP3t9nmosqBhfrfkUWQxk1JMbNUDVNuKEFt0BWo/pwaB2kTr7F+7Uvtsa29vSXv2jPQj7IDlIuay1+vsC02HY4Ws8M662mZoEDv2y8bxXjKxJp03ZPVzjq1RkB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790487034; c=relaxed/simple;
	bh=oxP9s3ZOatoAyK2vPtNF8UWww70SiGgcY5i/P+MbD58=;
	h=To:Subject:From:Message-Id:Date; b=SaInLdXl7MrClkTQdofPzx1jmr+aJi2ypxhhP/q7sEIVA5OIfis4QbMuozkVRnB0zz5gQ6oUhnOJ0Xmig4PYV/P72hLpZ91QRiupg6KT17q4x0qtQb3Ibzk/X0kTj/jCoaldewSO7NtFf/3fmk0KNJtPD4iWpsUODF7exxReL7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwWPe+Uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwWPe+Uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D1EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790487033;
	bh=oxP9s3ZOatoAyK2vPtNF8UWww70SiGgcY5i/P+MbD58=;
	h=To:Subject:From:Date:From;
	b=ZwWPe+UkQOI5vnJ+nXrvvv3yWkzVcC4ketfecEsnh8/yXxeOKDZTpBbglIk5IH76l
	 t3+74OeM22IcjmWxjWXcoJqlLrViSenoSoeYVrcGahSa0TRHo/EdSJ8tsfvbADJ9Ui
	 q1m/+gbLmnmPRLVOTg8VuHtvPeZIEebd4sINwGj61G9wmNuvlu2GGe3ZSJB8yhSfrp
	 IPaMf3T/FfyREpCkrMyGZN5DeW3tjdoKMlfhtmOtb4NhO9+5q+P+Z3AOnkOiMfVnj9
	 raH8lpUbXhz6UZfzPDUj14MQxZQCb2NymnTncFOoG6XiWLgJwNBBCKkh4S5nmgyCBR
	 wvzQYzXjupIVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F72C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048703370.4473.1419440290242514627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a6449c17858ed8b1e1cb7adb7ecf31bc4493227096483680d7a6c7f412b09c
Date: Sun, 27 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790487033
