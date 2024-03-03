Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD52763C
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709431097; cv=none; b=ZYZUBNL7yQ7d8+qDSHzcuUXK0PK1awZTan/qNEyYr6MurJse7C/iFZ7yknzLOOvjWAxHrHqWWPLClwo/RYJytMR7Nd4XUEvPMn9XmbdMMO9TnYYgK3XHb1TzujOFb7EDvWqABDC83kCDg+x4hhAjpxnHYm0aIab5t3bGyMW88Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709431097; c=relaxed/simple;
	bh=GXwVabSIWOZbhvH87Q5mKfn2IeFXsh6d3D5Xz3Fppx8=;
	h=To:Subject:From:Message-Id:Date; b=AGu7zKD42tWvnSY0K8YEQYFfSq6L8IwaFbTkcZyl9gGkYBzW+qLdFJNpgNT7HCAVy5/PZr6qFXfulVuLz4hDQlA3feDp4/ZTLgHE5NGumYDtOxDze2h4PouEodv6cRKTBhobNMOKtgYulQIPyAns73bB85MrMN2oesZdvghvnu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSfpwTqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSfpwTqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BC1C433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709431096;
	bh=GXwVabSIWOZbhvH87Q5mKfn2IeFXsh6d3D5Xz3Fppx8=;
	h=To:Subject:From:Date:From;
	b=BSfpwTqQmmzUC5qEMKEbd9G0dgoAi6tLgGhjEDdftIB08R3b/in65bAP8cTv6RQlv
	 erxm7fsd4FeVFBg65cXHlJt60IGGz/GnsWRodujlMEcT0FekHiZuR4W5BBkkaWH95c
	 RwOg5Vl+iZxkSoQA4gp5bYQU4xvrHqqKstc4L22PnS4ntEOxhpxxnr/wrC4LXXuegS
	 yPm2O4CbkCpEo+6QIkfaZOxKM2EN9Hyfia5zW73YLF3Y1esAwaKkC6V1bRtcOXp/HY
	 V1x26ljFInU7vH8ecKNjuuoqzpJ9yNMErIMYucswm+rUffW8BN6O5VQMnRz5wFiVkz
	 Uoip7Bkmqeudg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B349C5478C
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170943109636.10439.6185923556938359478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da03f1fa2e29d247bdd7c9cd6bb063aff61bc3337ca1640c9ae1b2064a69eea7
Date: Sun, 03 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709431096
