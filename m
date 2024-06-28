Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD827A15C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719608063; cv=none; b=iBv2QZLlcnMPalqPigjMQHNNKhyh7Hhxg+51ldzYP0f6dCez214OmVf0gW6rrM+9eOoaUcHJ8zV+adIqxWvFeP7/YaU8QrSXruNqnWHK+MU7LLxeEloH/CX3AQwulDXdBhynVTKKiX2NVyW/gPueAn1CCSE5BgQweiyw7tD7uBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719608063; c=relaxed/simple;
	bh=JQT56U5KNzDrb+JC5QU2Lx7WkBgmLO2VHt0duIVUi1I=;
	h=To:Subject:From:Message-Id:Date; b=syIJkHbYyEKZcbSfljv5g/LQuNpG+KL7SjljJVEJDymSAGHlILQ1eZd7pIepXJQD7kOcN6JPszSAgBQyDoyLBeMH7mrF0hJibs2q46HZxOYrtvxZEEGlKESXcXuduer5pH6Yk+o9DENuKtKdxd4W/o8Ok7mRBxLXmYTbyaxEGSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jumY+DJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jumY+DJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E579AC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719608062;
	bh=JQT56U5KNzDrb+JC5QU2Lx7WkBgmLO2VHt0duIVUi1I=;
	h=To:Subject:From:Date:From;
	b=jumY+DJEP3Iqd5lEUrHC0xAH0IHfUxnyE28w00dGKNwIdLmsWvsidKvLm2W5/FLAb
	 X7rpudPqpKIifqpPZz6uq03fNvfJAPfej45Z0KBN7JatDvkLYe8bf7RehcQdU2/uwc
	 2i5Tw1EWbPCcfQV9/DWC+cNh+SamPocIFoaNhqbgC8BRKPEBxjzEOYP03nFpGk01k1
	 dMnsnydKJ2zNW+NiEu1pVucOrRee5ZVi8UB6Di4+vZpC5CBkW/YPL9PMqhXeEPHq+p
	 +V1RyrdBpLy/FvsySVxhDSx1H1kqdMAL6EjNMXDMZHlq5NCMnF9nJZTNqAUqydL5L2
	 UCPl/0BcWucFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD655C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960806282.10161.1668084680700813461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2601f1b720827fb9b7f619785e7478f10b2535f4a064c9fb2eaf099d4f22aa
Date: Fri, 28 Jun 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719608062
