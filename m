Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CC31D90B9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736971554; cv=none; b=h5i3oCYL3cFv4t7c9s1ouh0neUd0XYeiYg7vyqQPMzJLRsCoht1QaJ5AJpxF3lNuhpU97tcIyeRXy9liAZ0nHVIplKwiYidkyaCpwRqjL6tAzFeEUa/AxIe/dmRBP1LQpsUhaeONgIpbUxqF6iKzXmGdJdAStfXEe+YxtYqodnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736971554; c=relaxed/simple;
	bh=JA9S2mSc0/S2TJZeAaqUwyLM0cdCAaaVP3tM0h5eiPM=;
	h=To:Subject:From:Message-Id:Date; b=RNnIxHxfgGbuoUhjT6qNmA65QJCiZrKoxK0GRLsl8VoW23t9tmU2wvuBrUKbkXeg8GKbFG+t/t9OYSuKLtoPCEpPXf4M2KUf1nVjlVe8gAq7erKCcwhMbfrlDqs4D/0rV3ZypfHccZB0ey6pt7cZm06ANWbG91Ir349jghmx9NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZDNo7Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZDNo7Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C359AC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736971553;
	bh=JA9S2mSc0/S2TJZeAaqUwyLM0cdCAaaVP3tM0h5eiPM=;
	h=To:Subject:From:Date:From;
	b=AZDNo7Qxbi0fO+Vq1YBrPlqSffhjgGhu0VL6K+jKQQTq7ltcsCcJ5PhW4VhYnB2oG
	 19z2j0AVQ09/KM1DNXHzgagIENi22FLD8romlzjrhFvx31hKOin05GG1OjF+fZd+FP
	 /TbXXgQWbbXFh/wmzF8GS4zJHjuLnVHp4g9qGj2CEv32X13TrHJpxFBjgd/7sgLQTo
	 FjxbjGgDlnO1mx4LMyfBTX2eLOfPu/XZaJsdL1t5iGKqY9dcSiXPlDvlLHD+TwMhDg
	 nxAyBXI9kg9pAV7BxepzpBk5+YIoLBGfZr2x6XXY2QiCQ7xawHmjxk4CTkhMOjhXRx
	 RIkICwkcOXBAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC999C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697155369.18792.5669370604726368366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a4fb6c82fe150fe34d4de6588d854efa1ef52ba991066fa47cee77cb42fba9
Date: Wed, 15 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736971553
