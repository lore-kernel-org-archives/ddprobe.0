Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E6017CA17
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733383554; cv=none; b=ObNMzPas1qASKR0BKJsUWnJalOeQt8BvNsiai3McQzfTIPI9Qwewr9wSUIsp1JbGlossBWCzpC3l4dlBhs607/8hKNKnkFhZO3nNssd5SJ0zpPqgQqy2dNRwGXT1+OWTWFoOjAAfDBbMgygLbT+E0bY3qKwru07JOtsV8IEf7Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733383554; c=relaxed/simple;
	bh=/lUDEcN+1ugZfeodY4p33tplHVPWIrqTmRkffvNWO/o=;
	h=To:Subject:From:Message-Id:Date; b=pDgcynIr8E46HQpNufdw51JAjqN2xFFJ9l+szlQkkjA9l7e7P4GtDTIV7zMDAVGa5Ufo8L+GE68viiCZYgEZIWImXDLtmEtywft5MSDyEUzLUPPf1WAsIyTaVJe6n584DMr8ok4kW29X5X/xF96utth3jVM/9c+TiDMsCvHDFcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amM84LYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amM84LYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B517CC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733383553;
	bh=/lUDEcN+1ugZfeodY4p33tplHVPWIrqTmRkffvNWO/o=;
	h=To:Subject:From:Date:From;
	b=amM84LYbqqs2p5SWuutL6pdjnrYY577FGRyW6GK+LKzUwoCjPHtJfyjgVl+Mk4npx
	 HyJBpovoZBnaBUNETsuTzX6N1uoKQIWHEMO/AuRIznQ/t3XD3E+u93woGDTB4d1KbU
	 7kGOo7+BDGp/sIycbbZX+4Y27TaaWhAMPZtEnH6hfZVnb9ab59qzFvVyuDjTL4ABRV
	 ydAxqCfzQm1NVqMdfsYvzbAzCivF8gbXI5nRFvAlxOwEXPUc9nj1wDtuCrAJdElt5+
	 xKVdDW9ZY+D4AeIydVkA9Tisupg8jNDnMhYdqAE0Nr4j6uhC+BcRGOP6Q+951pF7yq
	 BSFne0+AqOu5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D8EE7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173338355365.31423.6191903570298966965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d36a74f78962b98d55cd70dc7a34c28ebac30f682330f071d07d07d2308fc36
Date: Thu, 05 Dec 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733383553
