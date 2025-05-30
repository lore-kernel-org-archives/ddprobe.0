Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C56454652
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748644194; cv=none; b=ZOuuF0KNzxMVkiarTA+nC5I+5pISH0AaFlGS/otnTd9Ye3vmlf2PzTz8qABM9wSo01XzwNfiV1yTvq0fUIY0TH4tyXUUF6NmQWamM/t7rxLhBgFu5omyzmAf4YCUXrn9DXPYJGFgnl0YiO0pgXrY2OWM1GIPBM+O4CBVcqpfNPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748644194; c=relaxed/simple;
	bh=IoY+EdjXFuJbaA8CV4AEjYc/WrrF29uDfREeRepiyhU=;
	h=To:Subject:From:Message-Id:Date; b=AW2OtnmII9f5ZvM8FSQAYfFQhTm9x5UAFb9fjRV7f5jjx/HGKdILtDRiwclzCTaYlefKdAW/jAbSEQ62TOLBLqkHf0rUcRyTdbkTbr9fZjg+aorZ53GNnxwrPpW0MalOX2uX53Ojuv4OGpMV+BzWTDRmE/UZum95kIiDBqhTErI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyWrjB6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyWrjB6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E143C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748644193;
	bh=IoY+EdjXFuJbaA8CV4AEjYc/WrrF29uDfREeRepiyhU=;
	h=To:Subject:From:Date:From;
	b=EyWrjB6FoR7gM68HzfNIvzI55iMcXgGmg9ipDK0qlrxQnV4D975Kb0q6HtGksUXYf
	 i5ErcWBZyNKoP+8po9j30Jf+ups5S+QNSr7y+S/u3h+A1esuZAVaj0tumqRq83zCPl
	 gJfMOFWQE7WIv67W07j1GtjpDU6HaW9MU/v+G/l1m1zkW43a4JcJzpe+EbBCgaqVUP
	 iMwWUBQv2KNo4xVEp5tbB8oEMf/okmkfTTUJirSQWcoHM0UxBu7AOWnyncWUE4ukmQ
	 zt2/UiJtRVk+TUOVsqwivFpQ24Il1rYtUEvdOf5HusResCXsaTDVVhTP7+d77usRfN
	 9G3cZjDAbp3aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E67BC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864419357.5922.4154909374501495742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e48aad505a08847dc9ab9402ec6afe31f032cb2cb87900fb41f6feddd047564
Date: Fri, 30 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748644193
