Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494DA1662F7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721040863; cv=none; b=TSOF0K/2QTuvB0H2vx4kO/tKffMODy0ViKImOwd73hrLCMnNUO0FBmrh+WbViYxrGG5wF2WZWLl2L0P56NwZD4dNn8EzeCgWEew9I207VeObEqfyhD6uEf0p5HZwZkSoJkG2BZbTkUG65wdc1qsvJ3RspkEWxl75TfNeVlte00E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721040863; c=relaxed/simple;
	bh=P82y7lavXBL7mtS+sC7/U1kFA3d7s2pJr7RkaCpus5Y=;
	h=To:Subject:From:Message-Id:Date; b=AqL3UUI2suJ8nsPJGE6q4xjCiD2XO46JMD0lL7lVi+bdh8zzhOmHdM6MOf6tq8ipKHMFZGL1UDJPvkJLBoPUWIOJXxDkGBF7kmbprrwEsh85ZiayWJT8+9YCnkrJ5/QEw7FhA2dd/aAsHwTQxXbn580H/bfZ1dxoQ4WtnDmEGiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ay7LL9D+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ay7LL9D+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13A1C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721040862;
	bh=P82y7lavXBL7mtS+sC7/U1kFA3d7s2pJr7RkaCpus5Y=;
	h=To:Subject:From:Date:From;
	b=Ay7LL9D+y0i+D6bQoLBs+i5CLFg7vKDiTBWkKB+hdHLR403nQbaX0MyhXzITqwspm
	 /9P5Pb8i7CgIWw8LhrjHR9l/YSSCrJyDw9iK7pvfOPSZInfqkD8meEORgwd6r9UM6K
	 uEX/PVZ3ZPNp991ZWPWR9nhcNt4l5HbV1aD+Rsqx48Ectcrm/YEtcQp7XYpvM+uGg8
	 KKiy2PBU1xVCfudGh91NW7JvAc+cDeLeOPr141kyax2ys5547CtsOgWXEGmP5rO/7E
	 rzaqimmYzAPcpD+dj5K1zAR4S0z0Bboo9wlImL6kqobPqosW0ee2AdxEGSg5+MdfnK
	 ucPU0N/jo9iQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE605C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104086276.1784.15643216681853101904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e112c2769ad38a2d6bfc86cd239532533219dda38e175561c85953b0dd650f
Date: Mon, 15 Jul 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721040862
