Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F53830F923
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763068194; cv=none; b=dms9bs4lPXybGZvLo31O/uzyoKdbsDtKwSnouufW8aPnIY7TDwpd3s4b2zEwGaCqQ78fRL95m1ERUZlnG0dBiPD35D2t1dNBLvVSweLFpxFf3ZanJUfoJ5N3MxJ4kF9KwaVJq3lUreAoSQ0Pf21QceWVjKN/rKIcc+OjW5B83No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763068194; c=relaxed/simple;
	bh=3WzE8e5/RA7Ed9O2NDrCmMDo2ZE35vrm/LQFjW/9hJM=;
	h=To:Subject:From:Message-Id:Date; b=O9j/GMJU+5bZBOg2z/HCS21PcEhRKDStpS0Z3U4hB9r3CIBzoiB4eNIVoRP223298AlCp3NmCMhYY1ns9uR47RhDGaj7ngagGraRmlnjbB0hn1XmwknNeR4Lh88BQCHDxFwFnELySqEK0N8CFC0i7Z26oQoHciMOWCPKytuLf4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tt2mk6p+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tt2mk6p+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C823C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763068193;
	bh=3WzE8e5/RA7Ed9O2NDrCmMDo2ZE35vrm/LQFjW/9hJM=;
	h=To:Subject:From:Date:From;
	b=Tt2mk6p+iZktyJv19z7Tu/n8TNyPjSLOyWQqBwVjvmuCrg9TEjRffVQFrpU56s+Ze
	 ljI6ijetYEk4IcVmFfN4o/kay4oeABwvZks1CuZMqYC0QqDUuKYpVe9kdYCj9TWNyp
	 Rbq7HXeMQRAvPaDF0rg2qgtptTWYh4c5dpthpWSynW7btCBXPXcnbMw0m/dmMRHzW6
	 CpcePsflYQNg1AqgMfFwoolGuxAfIgDWr8be/IORd4BaTKPUX2yY3PvgrFN+fNsAZW
	 +raLMVjn3pMe2fpcaAXgrbDQZMzQGKZiC2jmhZyIyATqouiIy53sKALyrrBUQSQDa3
	 yHLXU2KmUEroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF50CD98E2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306819358.8158.15874818299060221967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f3c8e3afb6b62ae683a3e97c23853df54c88fc76d6646fb08d8d0e103fee49
Date: Thu, 13 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763068193
