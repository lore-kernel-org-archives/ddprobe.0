Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930822F8E99
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778344654; cv=none; b=K7c/vEkt+mp9gp0a4kMQuxqCzEDTD/gaZ1WDGO0eoZY02m9FmNmDvm30fMAtuOSVTmXMjPzzPjp0it4D2GlCtWg4ughadDvBuZsrYh96KTqcCp5lXZ4HhuAByX356PmxVn3exRiqI9F6yaOZyHVNaNV8bjzp+P/uBpGy4L5nlv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778344654; c=relaxed/simple;
	bh=jbWyV85thsdIBkRnYNVscWMkqvyIkWOUQ9DIo28o4Dk=;
	h=To:Subject:From:Message-Id:Date; b=ByOppDaASu5c/Db6H3mxg1pez153kr3seL1puBFf93ksXQ89pgN8MiUTM6E76YmsGcKxhJ1pq788PrAlHcyA8EeMIEaIRYAud9U4mGuqKAMThv6cWqcvAcoHoK3BpZYj+AreDY5Yv+lkuIK4H/cPX5KgfHw7U7gwLiOPVmOi9Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j49KJQIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j49KJQIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3449AC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778344654;
	bh=jbWyV85thsdIBkRnYNVscWMkqvyIkWOUQ9DIo28o4Dk=;
	h=To:Subject:From:Date:From;
	b=j49KJQIxf+ZiaR0/tFqLLcCKsscjTReR9LWpWF3jLI3uW6cdjeRaxArgTk7tC9Qg5
	 Tmi7Hxmt9gbK6b0pHkZfXl0/D2Ky2xmykK9F19Ew5VakViLvpQRgzuFz61rK0zIBvT
	 2Vfef4fa5F2BCiiSDcR0pJpRrPqsuxzD5pdkO3xTpXX4xVoVbsFlvSCc5MQzRKVfPH
	 ERY3F8ZcXjayJ86eayMge+5IgM+O3tP18lERDlKcD+b9OSyy+sS8iJuVY40HVUupzk
	 UiJaAHGdKi6jLtVVudaxD2CgjQPiZoE1EozCJLUweehg6xuazNdisSsG5P4NwrGNC2
	 CiUp/o+vgT1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7C74CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834465389.7304.15991886484852793844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef65e97e5154ad1e0372b5f9c4d2a4bab6bbf672b03ab6f3268d9f9f694020f
Date: Sat, 09 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778344653
