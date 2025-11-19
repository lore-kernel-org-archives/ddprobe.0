Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4515C2DCF4C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763521915; cv=none; b=r1oTH9gvAum5av/0FzVQRYIeEGExw50CG7P3/YJNa00sj4v+g1X5F2/7HfQlrgtBfg5fgDLSf8MHQBHCv+C/OOXvHC2vBpLSb96kk8/scX4Y9AtjA3/utGfM1vUrHgz5gwoYHntCxZjri0PmsHNirgbQkmoGlwxYt94Ph8Diw8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763521915; c=relaxed/simple;
	bh=igTCrQ+YhSUvSTtV/C8bk/xl3S/ziKbiLYT8kQOeGs0=;
	h=To:Subject:From:Message-Id:Date; b=UfF5X++owm3Gnu3zXcQOuYBZjY4tpxcTihVQauT5IzP6Hi8OvzOgJvFuPpChm8jouvKAIF6vr3FQrwy2EvKAKojM4Di2nWuE0U3DemId/rQOZ3tfKxlCnKVmySkgo9X3NAtYHhLum2EuZM55x2LVMB0OM2/wujPIbtnUPH/niSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvBN5RfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvBN5RfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CE0FC19422
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763521914;
	bh=igTCrQ+YhSUvSTtV/C8bk/xl3S/ziKbiLYT8kQOeGs0=;
	h=To:Subject:From:Date:From;
	b=GvBN5RfTSZHi1g3xdZRnXhXf0YTDmiVrhnIDcQ5wRUpyxOk+B9odcO7WnsHUfNxKb
	 XyyT3x4CMJrOl1ag//lGwa+2FKWtnDkq/S2Wr6RpwaAXPY6uqzU3eF7tzXxDJOhV6f
	 NeGEPNM+/Yq3VtC20j2E98awep8QrzjSoIOa7NYjLCigmbcCDtHWgjfwT//gqYpmgD
	 4Sn9DVeBRoOuCmbxj6u//ZkzJq1Z0ByqR5J8Cu8//eZ/0XQIum2JC4/tjz4nMZEcsA
	 HVUtzQ1w0yKlf08QWKsBPGIn07xrwyBLegXVua76BOtBFVRyGJglHbGVmsa+HB7XxL
	 Us/DVrcsAgIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDDACF2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352191363.12486.4499095876712321718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01f9139ff7a6c09d715d766ef34807d8c26ce8aedff2b81279ee58e359b8285
Date: Wed, 19 Nov 2025 03:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763521913
