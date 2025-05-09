Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C56221555
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746807594; cv=none; b=B2Hx+p1gMyqk5M1/7tOghDlBYgUEmyRhW2YlsiXsO+892E5vga1thEYkTtrNMrr0f1yXPuexirt5RxmB7bkeuwJaf7so/NZRjlG3t3OfrdaqX9pfJoYudtBYCY305MWM/S3m1M5dE/nxL7DE3waOJNXMWP4Q5SLMR1ombzI88qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746807594; c=relaxed/simple;
	bh=lowPaZayAfI2odk/BR36nsG+Xl4Khs0v59+CEDc7AUY=;
	h=To:Subject:From:Message-Id:Date; b=AeXRY7q4Rc5loqr9Z1m/Br0qT5RP+XxVyI2Z1sJjlBpNIg0kX/nbgLsUmjkRS33GSBg29wsuzj8rADmf4ELQ8zxYiWI41GK8+zQgIQhCG6EtaALu94h8LF40y6ppjJlDoufv+mUp9/Y91vl4mqYbPkTAE2+tCeRSUQddpfhICZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r30/5BrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r30/5BrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4DCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746807593;
	bh=lowPaZayAfI2odk/BR36nsG+Xl4Khs0v59+CEDc7AUY=;
	h=To:Subject:From:Date:From;
	b=r30/5BrOnTHflafN8VUeFeZHTu3Z0hfuL7kCoDnxyEz0bcW8rAXs5z05cAfT6td+u
	 XCiUz+Touudet6M44Aad1tcX8+BQkXUwISj3geVgSRnQscuYoZLpsDuvSHLbNHc9KM
	 /C4TETKfRCgvc4e/EPxEjkTGg8KbzVDToTwK/bgIsx5CZ+r7FleRqR7MknvD1n1o3i
	 1C6fF3G5lsPwADnPUUmralVbN7nM2dc092FygP75YHYdXMov1v00bFbTq053bRPd2W
	 4SY2UlzXwVVrRGuHDyTe7Zw9/LS3Xgklf/YsrlPIVfUVRIfF7Us/aODvjkJnjIHLM0
	 eKBEDFRn37i6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE76C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680759358.19344.12697780008196517599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0cbde77b2f68a1fa25014493ce22b7c93176368b9bc727a5108dc49c7dccb0
Date: Fri, 09 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746807593
