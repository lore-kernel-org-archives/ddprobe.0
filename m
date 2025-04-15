Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B006D235348
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744745396; cv=none; b=BGeMu8g73QFjP+7zrnHYm0kj/tgoTn5D75rjzE/2LwAey41xDeu2Mgud/tevC2vElaSaDTjshD2kc798dd4OQ9rVMi7zqEkiFRLO1PnHmHiJllMunAuvPHToiBZdUZeEQ3H09dc1UF/suks1dBy+CTw865Tb+IqW+2wtbMBS/aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744745396; c=relaxed/simple;
	bh=afkvrp7XB5L1dnWILFxC/ttOZIgxm4/T5RTZ1HzlKJc=;
	h=To:Subject:From:Message-Id:Date; b=rVX3RwnZuBbpHmiqTGmyR1f0hyjW0iZoF4C8YxrGvXVOoOHhj+HzTUGinWUUh0E722VmTWGlksjrvVz5FnNdH8jM5IT4VjGgp4SX7U4ztmLQnrEZthSarIgyyw5ATxf68sUob8Z81GsbFdAyfktDykD8L4A6xF/XRR7VyL39FGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqPhYs8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqPhYs8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB41C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744745394;
	bh=afkvrp7XB5L1dnWILFxC/ttOZIgxm4/T5RTZ1HzlKJc=;
	h=To:Subject:From:Date:From;
	b=PqPhYs8AfOnKtoMYqBrA6VUSjXJY/ii6pX53X3miW+KYZ/Vx+Wb4rupoxjknTCxFu
	 1izrahzJuAkT9Inypg9F1oRYfNtmndqwNkh0mqS0PkxeBHCPFbc9eRWw6XzysakbKW
	 OwE0ZifurP22bxtigCq5qq79Sy7y+c9RDDbD28wujlKgIsk7Ykzxkn5WJYnz7i+nb/
	 2d29qcqcoBUT97187VOQiFaw0fZ4Axy0AiknoK/eYMXRKXxjIyIETAb+FWPuKXJ8OB
	 Cgy8HBundU/cQAqbWWpFSyk5SE6Y3saR2pK4v4NZp+2ggrOpIyC5v+xpsIRY5ebgit
	 6swXpT5GIpHpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B11C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474539358.26387.15004004638235741137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32915945e366c09d892163d9ef11f0fd7fd2e423934adb2b8a6bdd62707dd44a
Date: Tue, 15 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744745393
