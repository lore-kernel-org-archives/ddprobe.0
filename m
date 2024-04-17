Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CD15680
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713334763; cv=none; b=ZFvBh0LiZVocOyLsU0eybmMOeaxxZ5ec1qfBm5cY573hs42Db+XfzDByKB/kcMBqWzkinhAX/ZnayrOAufclX1P05YAZgkgB8Y13tGnojPtx0VpiRaXI3zwz92U+MbuZIzu7+1MqJkFaGkCs9DyZ7TD8y/fbJGkmDLCG+vPaEWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713334763; c=relaxed/simple;
	bh=3PfVPU0di0hM9nzDfNcwxeoLDrocQdU+hI8obbXhAF0=;
	h=To:Subject:From:Message-Id:Date; b=GWHB+mpSz35G2UDrKhiNuW387Kqbox+o2S8DjQ3oghoQmT2aYYuZfjUTmmVh8+UJn+yXtD6H9jlLl3zGH5t+gGFv8NNrWYlLWwHEHN3zHPgucoHFO6CIBmHA8XSmIhDhtxLfhoK2p/eJlMtaDS0obJ2PLeSkgARDDdYgEnN4ZIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxe0Lty7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxe0Lty7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39DBC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713334762;
	bh=3PfVPU0di0hM9nzDfNcwxeoLDrocQdU+hI8obbXhAF0=;
	h=To:Subject:From:Date:From;
	b=Hxe0Lty7soOa2DcIOp3SLE2Jqxh4IZTILWoLHofY7p4KrsFT4vxN0xLu/o0zGgOwO
	 JW//Gpw7o8W0l+YbS+RWmaoMuB7Oatfkcckj5HUgnEqp0SfoBlWnn88hSY5H6hdd7+
	 WNKUgHiLqj//aBPwlR/rRdUABzrvnUZneQJNY6kKUz18ZP47q8Mc0rXqoffsh+HiII
	 0W7/BHpWGLcNK0eMf8xB4isiVzVsT5/Wpxp7bVmM37iHuO4VMEEt8UXO3CoEW/bGiN
	 PoqEx68h3GaKrAgSIC1oC3zZYas7KORmyKqwfiFUhjp7yK6i9ygnq1+deRUol90iD6
	 J5nOomJX0GSDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8E2C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171333476276.31880.16483119702952257718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d55ea96274e08d15e8c72e4eb9aa347c9677173b068cce57e556a6b044df0b
Date: Wed, 17 Apr 2024 06:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713334762
