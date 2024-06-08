Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615342BAE9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717837043; cv=none; b=YI8uWMttD4V79djUwzwM+xK/qaxjlbCdSDKfrl1lsFPHfbF5yf04gAqkJSp0uqRudmyLBLkFY0zz05C4spPjZYh9mF/D+iUENjFuCj3IGHfiDyHRKM4fzT5p2hP0/XXRQm2KwgIe0Je3SuWo9j+h+StbxHoyyoeMYVwosQmSpiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717837043; c=relaxed/simple;
	bh=IMQnjXPzpAcGX5hnGsVYfXt18SBU55dqCXDysEDrVf8=;
	h=To:Subject:From:Message-Id:Date; b=es3m6zFmdy9a/fEAIIgzO0ecpGiPknXlOZh5Px3S93fFF9grQo4d637g3xEAOa4Dvpu6sfoRxmbZLTtU0xKaFDZ1BRhbUmnUilJVhIvmrAp+ax1DpZCMenJm7zQAeU1uxHBgUOWr8pIXZhej6O3FJmSfJQz/zXWhCTEfujktwZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJ+kfd+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJ+kfd+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC82C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717837042;
	bh=IMQnjXPzpAcGX5hnGsVYfXt18SBU55dqCXDysEDrVf8=;
	h=To:Subject:From:Date:From;
	b=dJ+kfd+/cqW1g5sFDqluykBYJ5gfB8aiVdGTL8dLogT4ghK8wg/scVrE7XQ8TUd69
	 uVvwVlQryej5EijyRVeMlH2UCF/a2q8cfTGhrixhEAo9vWjxYxHq9R8KRUzj1sUbbu
	 N7xeQOySlB8goNbgU1niW381iJh3ZsAQDhTu7kQjyLNWkUq21Saqialbu9qXqAlzNV
	 m8WPSdd3KIjH3gEQFYA6SxeJt6P5mf9ialyDaNB4e65pyN25u7PiGKxDN6h/3lsQ8k
	 XUPjPRIUa4ntL1hP7j/MEk7qZ1H/sDRHKH9aFsXs6nVeB+t5jpTncStCBj0IQ1HGa3
	 hRaxpWcqHDV8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5542C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 08:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783704277.16528.11533069140664600041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85116a5125aade78c2506d23f4d1239ddfb7d81e01440f571f8e9791248dcf88
Date: Sat, 08 Jun 2024 08:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717837042
