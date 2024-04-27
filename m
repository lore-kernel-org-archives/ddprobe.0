Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D404642D
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714210943; cv=none; b=CYZ77dy43psxQtEMh4cukKYTRCfYQWP7pMUdyyZ40l7CxW9X5+3AAzieb7HLN1sJC4nXYCvY5qVxt+5taM8ZWk1gVt6uX19EOfFPN107EyxjBf4jEozl8WYROmaCzuq21huGUcqjBma9olxVI4Haax1eXZz9lpw8wC5wkTisIAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714210943; c=relaxed/simple;
	bh=+ve814+GpFuD4PExegr/Pe4r9EyBYqyICj5oXeNocGY=;
	h=To:Subject:From:Message-Id:Date; b=cNdhfWGGSuosyLVnItMBeoXo7w/ECKJUJs4+1HLrLKfTus6kjnZAU/e7hnZwJEmfNxVIOFthbzeDXpr9q/X+/IF63jV6gQ0p75lbuQx4R/Ybux3OLuLG9u8VBSf/NaIlFUE8w2MItK8bJxV/f36eA/QkfebLlN9pfKzCiyScY80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3sxEtXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3sxEtXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11EBC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714210942;
	bh=+ve814+GpFuD4PExegr/Pe4r9EyBYqyICj5oXeNocGY=;
	h=To:Subject:From:Date:From;
	b=S3sxEtXWKeEmKunDMGdMalo7LjVy3swjn/sHTDhgI2qxQWbXse/1KICGFm72j3DME
	 URD+vbSXBuv7Asfa/6tlWjNGCSrfttGdl3EPenlv4t2aV2Z9/eGeNUYPpGJNOVSzvM
	 iZbn5Ix62CkTgLMYuE0AP1N0lFvbedXBzPGn+OLoPJRaELiwOEZRV9OIqyxBv6W3pK
	 +TwvSYWdTQRcnhbwTAdwevytFOpHJr6MvSIS/arPS4eFrtt+gnZAP49XH+fE6IjA33
	 +H64qzjNOWnnj5BAjQmtHNpvuBFAoNZNbeVect5Ij5fmloncj+SogL2TZCgHQUjvbv
	 j7kkn1jbXPv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD08EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421094275.14814.11926892394733208681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456b736e87242211eee05a468f2bface2c75061cdf518119e1765d6c04e4c199
Date: Sat, 27 Apr 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714210942
