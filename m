Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A764189F56
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750901994; cv=none; b=ol0qSE+/W45Bd45rc4jjlgmbHwO2KKD/BW4sKv27uyji5ttqe/Mbhc1ZiaSLHRUyTnpyCZu7yMYGYwIgjWJ18uQMrNNoiHIcWTUGiiZn60p0FR4uwfcChz/Dc0r/7ONZqfMy1IH6Xh97bSdCtHV+duHO2yuCA3wTVnwmvCOGtEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750901994; c=relaxed/simple;
	bh=hU2IOPREIt7nQWrNoEyEdMYAIvA0VP9Ga4AgH92Ruug=;
	h=To:Subject:From:Message-Id:Date; b=YxRgJ0SQgZcNJaYhV3KXE+IGZZ1UWdBEdgdhajFNZbbo3GEoicqX6GaK/MIKrUFyBMaO7XsQNaiD7yNUjBhp/sL2iuXQcL3SaCjytLBEuB7UmkOg/SeR6fyqzh7wZD1+dL9u4KCa9xTR+gGwDyqeaECHKaTck4I0O3VoUyHOEZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIo/thQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIo/thQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D7CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750901993;
	bh=hU2IOPREIt7nQWrNoEyEdMYAIvA0VP9Ga4AgH92Ruug=;
	h=To:Subject:From:Date:From;
	b=aIo/thQp1eka4S5SUkUF9yE6g3aOBARApaD1sf0i1qa1YTBT1+/9Q2cD+aaSb2xac
	 G6JJKi8elHuTbQAQfG+1EkwYO+qKn1Oa/hWooSxx/E4eKDWm1EiQEjyUCz3Ozjj3A7
	 bgoBXO90tMtsr+hmmS2lpiJUm2diJpAUNBN4K5HiWdATcTiCDsBwJm7gms4N7teZSZ
	 tmjlpkDMZGQoa/2Ggqu67BljtLaiZEozMaDay5bMWQFxfSSsCDRXrUH1EwJe8GbZEN
	 lA7mskEtdKcdV4KCcHdNzpvng14I1HccKjgFR6le1o5YOE4q+gTelFU2oNPn3KPu6y
	 k8NL1IFv55qYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93637C7EE2A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175090199358.9993.8240083601393506764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd87ad63152a8098d30ab8ed3ddff64306fc36494102242fe9498423d29f4858
Date: Thu, 26 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750901993
