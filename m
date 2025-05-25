Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9172F5E
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748194795; cv=none; b=NI/lEKqS0gmHKg5kSuP3e6/2dHG7ff6qI6rjzyo4N2DXD5OaHH0amL3xbY9fJNecocE0AAn3vpz+E1NG6Qxy9snVaAuv+2ZMG47hXTbXs41er0pSCyEAOKpXKlN0iRSB1z8o3iaZN17/ld2sr36bxg7lnMWeBV8VbnDAoB/2sxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748194795; c=relaxed/simple;
	bh=oKmND+1vRYJ7hIUsJS216ONTFB7pwP+zKx/jEvSVKIQ=;
	h=To:Subject:From:Message-Id:Date; b=o2KGRUZ6qLN0x3O3fdt0jqHVGTu8xMia3AqXkQso2HJXJeki2tWgGZPrD1IAkfOnN70Uf+lW+XBlOGfoEjEAQoY0sUCOpct3iKk03/mmyZwwmHZ2+0WU6kyx6Cfr6MELJ2Ja7M+5PHRdoOm3Gxi6yNaIutwg9oImQXKmKDvUcZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K40DP217; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K40DP217"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F06BC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748194793;
	bh=oKmND+1vRYJ7hIUsJS216ONTFB7pwP+zKx/jEvSVKIQ=;
	h=To:Subject:From:Date:From;
	b=K40DP217q8bcReOAUgBgchCKOVg8/LnVefGu39Z3XL5oodTUwn46tOjOJuHYAmwnY
	 xQC52dzfVb02BXBfyEU7tyak1PM+FgTXJRxukJvVcIJSA26CvFMp2bDb6dv9WVkLAC
	 unYvl5GkRntQbJ3goot7Hp4EhwlrHf2UM84If9MEAOj/rSgy1bykmLARO5UHd0QMr5
	 BapzQorlvw97o4zfmcOn858MBFaxWrtSnW6TczrEG0X43rPGkdb2tsVFzTPcMLYSVc
	 Wi/oREbQPSVh6ugEAWt3gPkEGKqoWlPJ/HOgToAeSVQky6Le4yiI65VAOPxXps5tLH
	 3RT628i7XeZcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC0EC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819479357.22815.11601375825669184544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d069c6d83b53ab64fc13eb2940d63bd88608ea2288665e109ed4fae5cc840f
Date: Sun, 25 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748194793
