Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1422D662D
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758189594; cv=none; b=qU+ZTHp5Zm6zpG0g9R23z+d+M2Oa+MgbTrFvg0n6tqpAnFKmcWZDn45ZflS0DG+SSjdeGXpGC/6Y91+YAVd3dwu7M2c5SjEEqlrEOP4aXUduWxsU2JoleebA93qxfwWnGDNTO0D0VQYciqe7G1iiZdZkOXEUFYXsrquwzDE2+DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758189594; c=relaxed/simple;
	bh=9vN1Wsl6ZcDeVowENJ4PuR5s7YJxhINGZ1xqd1wxP80=;
	h=To:Subject:From:Message-Id:Date; b=smGJdxZnBA21aFHz/jEzm+VNYjycBCmmMS9zYK8+cvQh99H27375EddG5xqJp8pbUhP8QPqZvk1dGY5TYHr/jXOHJf6mFz/plX8B8rb1CYwI4z0kLW8kwaObhhr1SjLWC6fI+VmYA2vImMoPWOsLQwb+1LW90Ds4C8/xQT7R+/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sq3Q2m1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sq3Q2m1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758189593;
	bh=9vN1Wsl6ZcDeVowENJ4PuR5s7YJxhINGZ1xqd1wxP80=;
	h=To:Subject:From:Date:From;
	b=Sq3Q2m1D/BcbflsekYVopf1zPsRfQATyr1Sen0SjE7dS4wpxHQGwIVHdUysGu4uMs
	 vuntGyZCfYZgAvQdt0BypE6jKMz+d3mthL2tq6Ocb4+ZpDYuKgzHhtR/A3zAdiFzKN
	 X6V0LfvD5pt+bi7djA37TgszElmJIGximYX5g8Q115sa4P8EbGXJzI6Mssm2cYOuZF
	 Cqj8L5vjCkdNuZ+0UC/CGGpar9wnJ7SIQg2WZklIByx3jNXrenomlQRh64PY1jsD8Y
	 5nfhzrkUH0hMejzCd8mi1qybeRSXDwyexjh3QcnB0I1Yc8/LnPdBeS1erOqTV+zFM0
	 iDucI1KSaGZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8ECAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818959358.29795.8701519929209416748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a2098e7e54ff59bc1061d856e126126f49f8bbd53d5b497dab7e467842e6e6
Date: Thu, 18 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758189593
