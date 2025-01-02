Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C91314293
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735806354; cv=none; b=S6sx+fUi28Qv6XXj/QI6f60jkl7c3Z7evNhfbRcQ7VDLhd+Bmw5Ub/hF5Jv/OYSYJ+ouqNPSov1veAR345ik1qVbkIy0eBETakhvV+UuvMrrxBHgQUbnLUhYJQ8dnrhJQ2/14/Gl9fO+TMS59/gwvh/cm/peKdLCZ9ou3La3Yj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735806354; c=relaxed/simple;
	bh=QPHJlBYbv2MTI2IzS1f4Urg899VrikdE0LgZ8gbgJug=;
	h=To:Subject:From:Message-Id:Date; b=MF+Zp6L1NWl8dJ8EoZhRPPHc1Y1P7Sc18niD9SHr/G1iOR6aqClmhkoOTfWGjsxwFMPSmMBco68158XNkIBKdaUqCqEdw4loraiQ1+DBbStu9ITeHfADQHtJjc/+XZBdlE9o+2SY1R4sjYqv2AVUWEZ9En9SQbQbIoCR6g4KUMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaYoA3y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaYoA3y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A630FC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735806353;
	bh=QPHJlBYbv2MTI2IzS1f4Urg899VrikdE0LgZ8gbgJug=;
	h=To:Subject:From:Date:From;
	b=RaYoA3y+/KSJavl6LSRJCFeEzLNCiRIUHe2DYqLgKxiAe+dTEcW0Iqx/oLAWWgQTr
	 r1078oCGlVLag7dIvz3kvg9KtUNE0hryXIiBkHPBOgKaUNdpZQm8S1c/DFX23pDNa2
	 w3d3WevruhkoBo1hYytlUia5kUXrwA2SNKWR8AZoQaCoP1gHiTP7MuUSYAh1bSQHpC
	 8L30OlWG0ueGZei7uZuw6nlywL6fOMfFyDr193GfEoocFGTMxldpbY466vk/rLCukR
	 1R5cweSEy9aUoIRUPKfQea1kyac2DcFYvwn9fLtXPyeYd4t4AfbUZ3iDBb/YwLmRHu
	 kDhh7EjGviiYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972D3E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580635358.32354.6579493287233800697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae59630fd56dd61660de90be002276831868964192030f60040bfed9ca2aadaf
Date: Thu, 02 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735806353
