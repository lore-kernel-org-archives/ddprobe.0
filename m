Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380201FAC29
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749064794; cv=none; b=OHWxJZA1gbh3GjPMH0bsBk2r5QDhYiGQhb53wNbcKoOSrEHXrc6jilzl8SFex447zbx15uO950m/eHvsQ8ZCGWzmaFGOvupF5YbZ0SwkOnXwLMsGJ3AzBgZtp7qufQxQ6My9/dOAv2AR+FW+UVqn+TBInTH1xbjrvbqwJ4nDu1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749064794; c=relaxed/simple;
	bh=KpEM2ijXZovLd0aF0KeK7pXojcMGY0wuf6gvHpoKV4A=;
	h=To:Subject:From:Message-Id:Date; b=o65tKJrGlCGY+6rf4c3kLCEcfXFAG3Opmfx83uE3xRgbn2B/TsEaL1ZL2IAWopBdqsjEtB5ttmZzxFK8DEtFd6rGyC09FiDIEDksyeA228Y7c0flzjTLuFVEjr4mJh0lDlQIW5Ek9yosAcpT8Ajx3TihA+dP+TDBo5ei78XuJ94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dl4WqxP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dl4WqxP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B2C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749064793;
	bh=KpEM2ijXZovLd0aF0KeK7pXojcMGY0wuf6gvHpoKV4A=;
	h=To:Subject:From:Date:From;
	b=Dl4WqxP8jMRXfhirQ8xLLRjfYADZnrcWDrweNVr1xWEytckTSTbpuoYtmhsMuS8rd
	 e7J4GGrwsglq5BbV3W9yI72ObopOvwNQSPwL7kE279K872n5g+1X69WKf6Bfckq8Br
	 LrBKBj7EZiEPSBOHMdalrb80FH2e7D9sW/+GHfFcuKB75YYWxyvUjoajXp5P8yu0ky
	 tA/40cQHwvp3wDOdNQeBJV8W7nukWgAYk3Q8c7Z/pT82nbtv4CS1BoPreEMUelDkfs
	 ZWv65MnGNmolXq72apT5J5TVoVnrdcLnmbvU7D9HUfKTnO4kKu04GDwU1792aLalCV
	 xgevtqLgqaNXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD5C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906479358.30504.17607925954625036382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c29679776ad0e17a85a6a4bb25a6c5864df3213f9822281ea0b3de768a17c6
Date: Wed, 04 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749064793
