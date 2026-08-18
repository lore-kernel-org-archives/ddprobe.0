Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D77D44E661
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787049034; cv=none; b=UvqmP4sRdtU0jUNVO4+qTWQGV6xCey0awXkmyTDyi88yTzmNpRJfqDrvtSSy0wuL6jAz5vJe287arukin9rcPSUxYfUcYSxYsA12140VnQxMkajhfDqFyqqBXw9bDQ2nFSIktd4GpShEcy1XP2kXGgUuQXdeK/brF9YTco30i4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787049034; c=relaxed/simple;
	bh=kx7ezBTZlwHl3RRXGioNZTV0YTm/p3ddkMcIZWoFYOY=;
	h=To:Subject:From:Message-Id:Date; b=mSAx+cKayHLP2ajJE+U2dmq4T6C9jo6fO63bk4VV5B01mNPNbLcpZFHOKyyWEUwRWUNclnq2t6ajOh+ow/4D5qgb/Maiq27odQAfCtcxeEl1DN5/Od3k7geeXiI3MVgd1aocJOh2ib2cSsuaWSukVY4PfpNLZrxluMpaI2Xsk2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeIpGnpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeIpGnpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD04C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787049033;
	bh=kx7ezBTZlwHl3RRXGioNZTV0YTm/p3ddkMcIZWoFYOY=;
	h=To:Subject:From:Date:From;
	b=eeIpGnpd20lf6Wd+9KD2epLID0DRMn/3YVVuLClljkZbWLipX3fga9VSguvtPNaF8
	 b16qdkzPrc1t/ToZumEplNGS+0YHH0acKlMK0BJedP1KaTXP35OHTiO4EGzKN4R3fw
	 oBCH65MUhUzgra2a5xM4XKtl/+XF9dMs+YTMCRJ3PajJFFpm99JAigZDm8HosyAioR
	 8hQwuWilkn2jrmqfYeOLSXClj7eaiRaK3/xu8+FIeD58RrSYKSDdhSl5IhxGe0aUWz
	 Hqkv5x0a1EOc3o3xK0tiat+leE3wjaeXcoN7hcMDrMaHVewDHMrBbEgQsCp1ZUOIIF
	 0RqjAf46n9XlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEF4C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704903369.27534.17293320022652267287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730ed2240008061030c194a670d646cc7af61391a453b82be03c3750b72bafbc
Date: Tue, 18 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787049033
