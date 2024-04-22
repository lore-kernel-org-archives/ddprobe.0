Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A741BC44
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 21:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713822023; cv=none; b=S1FkJnsda84fMFfhQf4HWTuoDV+Jbt9jhozrfrQhwoOqYGmVvKl/C8c7xEEfAkiwop3oIWvc844CYo1QyP0DFe0D97YPv7Q1Knsjs6oXzJ1Pw+sVMwSr5I04APOGl0DSsCe0oErNuhV+XNJ20tTDNYsLjyvNdRsAVgoTPQ9Zn+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713822023; c=relaxed/simple;
	bh=BaLxBzEirq5Mxf8EuST03yeM4Qe/3K5/r2a6GUSrb4Y=;
	h=To:Subject:From:Message-Id:Date; b=jD7aOTNMGQwVssDPliXD8xFfN0FK7Mor8gkxK8mCpRbw+ZGoFXiYqjup5nodS9257rKNa/XQpgh3gAN9CQUbJJEdCKO1YhXscZ9GpqJHV8dM50GxRFurhAcC0ixPexsdL/YsidiSWr9PX2K+KbcsnoJToNb5uELJwfWh0AjaHJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEXW7kzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEXW7kzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01D08C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 21:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713822023;
	bh=BaLxBzEirq5Mxf8EuST03yeM4Qe/3K5/r2a6GUSrb4Y=;
	h=To:Subject:From:Date:From;
	b=XEXW7kzwZLmLoxYcQH6N3EViWnqZN4RrA0rAaEHMKvfaVECj7XzCdZFzoWhftBzxt
	 iwyM5QnPTUhlMp0lT3VU10g5zmCW9+DUeTE+Na/1/bS9R/8Cu+dBmlba9iHzz/GtiD
	 fDTKlABfK1fpfDbkDcbLzq+egVIAWUNtLlgt0/8gmxbyM90Z0M9YX2A73nISe3GTyT
	 JKFOUgDiu1X291h5WWRVBl127sFitkwjTu8tZr75uaDXAAY6VveNMGPREfC68+gK2g
	 iatDx0k8kaN/o+mafnmj0B8oxoRhZVA2o3y5dsHXTG+3elfHleGLaR8VPuq2hzA3z7
	 69jrHLXciLoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4464C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 21:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171382202285.9660.14615808897845578003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a7f321e8882b6d5a2cf9deda7ba40ec2a3baaff7fb60c4efc4b0dda82c300c
Date: Mon, 22 Apr 2024 21:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713822022
