Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA4822EE5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736568955; cv=none; b=Knj3AKGskk0hQyVghPQ75NzYDKnCMPuOKzsBc8twYGISpzuBWZH2Skt4yU1XKEUg6X64+dUjTrqCoYWE4WVmmQtHcTnkyZIYMPV0MJMZ4pw6JF1DADLDfkPzNNA/Y0Hi9X5/mJu3ZlbVIB58a+K57I4xEeLmJObHuM4qjTY9BPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736568955; c=relaxed/simple;
	bh=5/L3t30uRRWQ6l0by+wYXM0zcR8V/NukyTL0yLBYHw4=;
	h=To:Subject:From:Message-Id:Date; b=C81JMf43/reHptyoyJIinJzxHj7+DiZ7TisE4/V8E3FQ/YNOFzNcwt4f93+0jzFDwmDZcecfOIy03c2jYViGeoOEyWp/u1h2YsKDXgRLpQT7AATsZ0Y45SVBWM1Nk/pPMfjdZW9S1FhsA+s9EHD9zq0+2XsiogFzg2NpKdJw4IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGKvl2FF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGKvl2FF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C83C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736568953;
	bh=5/L3t30uRRWQ6l0by+wYXM0zcR8V/NukyTL0yLBYHw4=;
	h=To:Subject:From:Date:From;
	b=lGKvl2FFxvnqpT7PqLkQFm8hQWlSc0bc8PoF+KinTtO0dNrBHrQWWxDxB357EDfcz
	 EcRL23GaupO5bqQt+UCtZrdKXDcPc7BNHB22QhaMx9y8S+aQypgxdYr/YBRFds5SzI
	 KkUEgioHXediOdxl42SvP2nnJMtCPmZlzyGwKx294KvDaOt7WSHDeqU9/g4CjN03SY
	 h7sfhWAm2ihNeN9uYxWjgyCZI0kS6AFxyXzMZ3mFlKJcKTyJyhb175XckvUuZb8ZiQ
	 paXaPBDubzXt86pbFuEl/GYNzdaEdVC+vUDrvc19r20N+HROWnPgHJ9Pa4J+iI/SZS
	 OSMFYslrVzI+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B216AE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656895370.6214.15266110890189352767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467f5ef696677d4ff3f46471cd04b6529d29102cb2c0d4c6914dc06373443f9d
Date: Sat, 11 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736568953
