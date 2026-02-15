Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B6323C503
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771175694; cv=none; b=iE9M9WtRUrv0xtw17VTbJw0pmclJ1dG6Mnpt/IEeCRjdHMcQ8bOWw1/s6lYGFNj3Iql6upaonNRIv7A4NhAhqBcpv7IW4VSNIUxvmtK7uqxYK19R3afXOZnpSEWaFHvfsjEcXZ16sk9SdbbW9O1TmsyHqgWFYH2Q/Lp09L6NvQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771175694; c=relaxed/simple;
	bh=j/EGcFEq4wIqpL/O6IOFDmMQneYfo4jQV9SWL2nadYU=;
	h=To:Subject:From:Message-Id:Date; b=GdutbS/12NJ3na2bYHqDnFFYf1aD67dyt1phaWW0yf1mxgQ5YGnLsUqs7xeRsLa3NTIfAtaS6yln3OcL+qeQQUvOOQKOba/6+qWRhpid2Y/3YYhzJw8WO08GQVnR62PMIvfc7lVoUsg4lXTAW4GNbp673A/7SYIpK/CuTIQqDYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTbyuj24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTbyuj24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA03EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771175693;
	bh=j/EGcFEq4wIqpL/O6IOFDmMQneYfo4jQV9SWL2nadYU=;
	h=To:Subject:From:Date:From;
	b=bTbyuj24NzcUEnb6Et7Rfe6FO1/9ZTUzAJZUhR0ZRjLKmDZV9ENgbcPD/5iGd2YTz
	 8T3jkcXQpud0lWEsEl6c5K7ZAPOvj2kyfV4n2M4tSgJYgClWZKd6keWWVux0QXtVNw
	 F9FY6pUx32sw+2byJIwnY/hOIq51FQGGBwClDLXjHJs51ZLENXx6ss6+8kzvKlPA+Y
	 Yt9ewa2FwHxyQvPJaGZSwcPjZiM/jOQUdDXXE1VhYc6ylF2Pr3OaOo+3vdUt3mbCxb
	 KgTUDpLvpt0qgF3Fd7wAnImK0foM0FSAjJkyxXD8AZuilTFY9mEJxC1B0+GLJORcJo
	 DrMFZtVQ/ikDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED63E63F04
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117569362.3409.15961561705418584371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b547e1c5f011d40c8c110ab772daa5caa9aa307ce2692db3820a70482970d3
Date: Sun, 15 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771175693
