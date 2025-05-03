Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462121A00FA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746266394; cv=none; b=LTVPnmlcL0KHDr9uJ/dnvPhL0GY9WbUxNof2jQdVhggzBo+YsGkC2M8vL/ZDAReuwtNMDx97tWtfjI8fNFk+gWZNEEL34GEMpUaCvcMq8/exBAN4A++DuNOmi++nWTBqeWkanpgetsTcapG3PgP6WlL+ehEqQCyI4DR5P9wyXDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746266394; c=relaxed/simple;
	bh=gzDQU87ubYkTiP207BlO18fqx2u20ZiuYFqss+jcAfw=;
	h=To:Subject:From:Message-Id:Date; b=IUcf2jn3+pQUc5i60gJHMDEZQ5StQ4T1wo7L1IPeSHhcMqlHYiyjqxzmzkO2nqoqoq9WIkbeUnekRg3wiTTcuIl8LuebFLJ4l3PqcGbSpE4Nnc6ZXQIpDt5mEZ1lyKjnK63odXkBj0bqH7aQoY6UPFUTh57nj2qxOPZLHdNcrgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMDbstD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMDbstD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746266393;
	bh=gzDQU87ubYkTiP207BlO18fqx2u20ZiuYFqss+jcAfw=;
	h=To:Subject:From:Date:From;
	b=AMDbstD+tFuY6Vl+RaO73R0yjC0JFJFGRrJOUMAgZ9HdbvbQ7YsQpKcGKvutkkt65
	 JLFy967UPFEsOIBazujEclVeLkOByeRScBQvFeI8auvRYoIRv16IdokI6oxqUhX9wf
	 VAzEewvZgREH2aRAp3LNlytEhEbD6QhVIoVRs7MCnATh0P7nFS/eLwYFnh3Nhk4uFo
	 EZIsdqy2DnNEpl43vE3KZ1V7YQJeE7J4kbS6Z61AZnFgiFPDFcY5/x/2azhahmsbl6
	 3ApOn2CjmgEk/6uW2Wk7uLeJ51CAPAuNLPiktUHZ+Mg+1xSwNOMspORzMrB6t9YPH9
	 CUxyH96EPajVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2FFC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626639357.4512.10326658140500918469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5feb6927a39db295bc34b2925a9cc2af9ff79151fc50c4152836d1ae0f99821c
Date: Sat, 03 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746266393
