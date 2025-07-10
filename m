Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2019A2882BF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752127794; cv=none; b=glw1eovqdFF+fJoJKzafkHDP1I/AWbPynXCY7Vi4d+LvxpzGv8o/eYbP3E/LfBJWgvXC4eeHM4UbMp0j3r+6qcikc6waRvFia/Kl9dNWhg9mL7YiRG/noo0s5TGv5hKKRvkBxT2xcdKVRHz9EzyspzOemg4ZptdR/5lTRbshZrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752127794; c=relaxed/simple;
	bh=+fjFuhahrVUbpSnFYKGB7PBsPCBVZVPMaOs3j/+pc64=;
	h=To:Subject:From:Message-Id:Date; b=N/v9dMp+8dg0KbaeUoHTaGxYUEue/9RuoRUEoLrOUU87Oa4oAh9oHR5b1GmN7V80WFHmT+hHoYxaLtxvtIXGoT3bu6Gy3eh2Oy4hv1FDItnUw8uFsFVdO3KL3BkqU3WWC+5HaH+b6BrHBj3I05guI+jC1YuhHP8jFuyTEWQjRRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mI86+fMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mI86+fMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752127793;
	bh=+fjFuhahrVUbpSnFYKGB7PBsPCBVZVPMaOs3j/+pc64=;
	h=To:Subject:From:Date:From;
	b=mI86+fMtRvittU2IW4NXj0Sr2bR6BnEOEkAjR6IiIMBvnhT8Jvzvc869COLvGdKWK
	 yEco9K0yeq5LcpwgXdod7IaMijGyTzIDSXYtMcmF+8tS/r2V/34NAOzd4LDBmwLa7K
	 AZ0sHgtgWdjdREWQ/UybblziYxQOu0thYJWBXa+hjuCweBEZ0yDakjw4OPtNSq+Z3w
	 JDYvWfxnWabcoqLKhPtWIDBN3+iV0FRMEbnJj56rrMXf33KpP2aFfvyAdczznUwC1N
	 t/FzbpBcMQK30y2sF+t7v6W/tIvg4EoRYsuzhMLqTGced7VtvJUYJaCfhHTvztpx3b
	 Gt8nflXlCOtgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90630C83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212779357.9331.7503336167945879135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74130bea1defd75ac48f0df6d8f8a40d43aef18fd200fa62881fb96273e75068
Date: Thu, 10 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752127793
