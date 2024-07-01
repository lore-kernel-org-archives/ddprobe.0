Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6498289C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719824063; cv=none; b=IZaDg7pmNnOSO77LpgVWX9vs2ieLcIWvWYi2i6dN5P9VEWpI+omQjsog1nvceiq9VZ8ZnV7okA3XdhOC4klYfuUM//UgLCoWSPMhc81r1DKV4kLHgbw3Vm9QGRsLoad4uNrXSOmIdTmkODbc5Hj2h8NiAgiKhRCqeuhPLoKcPBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719824063; c=relaxed/simple;
	bh=V4IeZAfkvpD096a7sg0K0d3r9YJOJi2NyJhNWaS+U9Y=;
	h=To:Subject:From:Message-Id:Date; b=GWOaAXceo4W/eqVJl4Av/FwS8HmJH4LmK/7nCqxZAohkYJiBpdXbNUBL5a4MArBXaonkMHuxUWyB8ovizUyQ5DTqWhcspZiTcns1TxYXelDr02/c73zj1U/Qu+rAhXNYwhZLPwC1tk+DPnIg4OVPQ12eIoJDb+05SLliUka9uSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUNHUVxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUNHUVxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE54C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719824062;
	bh=V4IeZAfkvpD096a7sg0K0d3r9YJOJi2NyJhNWaS+U9Y=;
	h=To:Subject:From:Date:From;
	b=UUNHUVxSqPh7yWscIu1ol29hNz0QxP09+6pRuKzbw5hOy9OI1AG8iPjbNfcwGValW
	 EiSQzNS8yjkQzYNSgnyfbLVpe2PB6ZSVPMyHxIxWA8C0AFuUjdngE+FL+A6Hi0uDNO
	 lyPGzs5ja+D3TNUsOwWf7xK3afBC8omOmfhr/yVKw4ar75uKRj5eZK8Cpohah5AWe/
	 w7f0iFCPu1q5v6GLK+lgk8+oQ5hopDt9przLHg6MkkJMp/v8YxtA6ajUb1+IEgajUV
	 YwbqMsMP2BXwONGwa1M9b4PPVSNHFMzQytiga6+9lpA/nOUZbpIfWzYnQMmJMhpDiR
	 xADRkOuGQ+b0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C879BC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982406281.1136.18272895443455961572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30cd463fca770d3c99be04d9ccf3b82de22c2e07e890f19fa193dcdb3fa8d3d1
Date: Mon, 01 Jul 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719824062
