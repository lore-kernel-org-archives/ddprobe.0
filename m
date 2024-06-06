Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFFA19938C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717698443; cv=none; b=ZPQilc4YZ28WFXyM1lDB9zkaLEdYDxgFSm9chQKaLzidq+AurM59LYA8DZVWjRJ4ZTmrKO0Q6pUY6JbT33gVmHazVpcsEcs5WwAmRyqKkT8CzYRUa3AyBlahSDxsVOTDg3FE1RtSjK8Z7Fa4q6fG1cYYld4mbYT8hgKMmGhZMn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717698443; c=relaxed/simple;
	bh=uV39gIhA66CspcoH5oG0+s8IM+gSnAIkvoSwnsI/4y4=;
	h=To:Subject:From:Message-Id:Date; b=rLh6WdytfhWAu5Il433owpBnk78ny299bExxvLOTk22gCAPpi4RGhtBZQsrAE724jIofGT0MppcQzaWjM5uh/EwrgGEfJdmCMAOrfH8QogDfR9LaYwS2RKuIPdIqPksNv+gqaCSLc/3IJpHGCHaJ3HRCyDYRjEZgGn/s3ZTJJJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XO82n1KA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XO82n1KA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EBE2C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717698443;
	bh=uV39gIhA66CspcoH5oG0+s8IM+gSnAIkvoSwnsI/4y4=;
	h=To:Subject:From:Date:From;
	b=XO82n1KAO4RUXyW9rLs29xFoqFOqLzMYPNX4/99vwZyudmVZLIBomQWUFKgcdTmwX
	 BAgmI0UyejQgCaOXuecW6mckl3sbtMgLMviWrMayd1vpqy7HDQleelsSySYNVIDGAa
	 vrDm8tAelaYqtFK3V7HcOosRLK/+j2tVCcUrczqQFqt5CTiq5oGyMlf0EZsPqUtIvI
	 XV7z5rVLkyg56nkwhHY9FBB2G5eZOszb8cR2BzFPSNXpZy6q+kqbK/n739vrmuaQmo
	 8a2oQuY218D+TyQ4drQMVxGBEaDMhvim5GELXMzKtBF3u39tnn07t0S+egNxjgcJ/+
	 X8+xx0o2VL52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1570C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769844290.3383.15326791275326813465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1c046b29c74cdc3a0ece7373885c4a0cc6e07d7d0f56ae28a26bce8272e5c6
Date: Thu, 06 Jun 2024 18:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717698442
