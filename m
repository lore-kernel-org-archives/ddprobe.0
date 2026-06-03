Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E05304976
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780526674; cv=none; b=BK12Ziu7H6qZfWy/XtVGySSCrVTHqf9VeG9BMXlRPAgWpvTkTrspIIZ5SdhFluNtVl+ogwdvlenwr7lNahk+z3FZxrC/xXm/ha4JuEdUgKNg5dUh6GNLx6+XXJLt5kM502KNuOJAtgF/BX8+yOxHUgYvuTDX2HQKhI+zFqxkcAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780526674; c=relaxed/simple;
	bh=gZ7m08FJQuJCpDmVW4LpUmeIxWqQabiwfe9Owd/MdPM=;
	h=To:Subject:From:Message-Id:Date; b=NzxdhJNKZ3e7tdlJmFdSoqWifwZx8ETypUEcfsIdts9EbgNUaLvEFybYpBhd6WRa/85MxbLZPnFJqgkgIelitlnG+ONzQqMf45LTCGh3Ta46mGytH2amsmDPRyg8ZmcY0c3ku8GsLz0qs5u6FktzttNmgYFPnR9iecupPkZhMVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQTL2mH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQTL2mH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C3AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780526673;
	bh=gZ7m08FJQuJCpDmVW4LpUmeIxWqQabiwfe9Owd/MdPM=;
	h=To:Subject:From:Date:From;
	b=RQTL2mH0CweyGI+UTqBJRlU07rjfOIu788oG/C2EtaSWwdvR1cHD5sGuCyutQTg/2
	 vp7YfGjUHzsMAAXDBEcbfIBnc7gIAVkDzdvxj7AYgz4wuoXEl///WWu+h91J4LUgJU
	 FysyHMvoHhAch66g5iyo00fVO8x31/T48f8/9zcZMNz7lzaTxUFeXP3tFNRzfarmew
	 qDvpLK0J8sN4H7SMaxCU4IcOm9K4BBJ8CWXOOyyM2nfL3RSW8TYSejuSNh/zAQVRgD
	 v6szY4R4puACSb/b48934PXfAg+dbxDqc+KL9wwPIFQ1DMxkSCkoLqRsYu7Eqto8r9
	 Tk+2m92mP6oQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEDBCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052667369.10138.9614224409340290342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f133fdb234cd922e4995759732fc2e82d71c434e41312f19cda3039de3b5bb03
Date: Wed, 03 Jun 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780526673
