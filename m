Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2300CA41
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767332634; cv=none; b=bL/Sw5loZrK2ENoJ6jYL5L+56yPufC9sWou7o6OU0ArHFhr0BRQlgOrMCn5qbz4f+MGQ16ml2Bh6wahh6sb6QU7byZO5i2wZgyRaqtWEj8fO1TXT4ESFKfH25NqAEO4N+7kkUcO3M/nrj2qYRzb+QXenGIsCFI4Ph8c4OxcqLeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767332634; c=relaxed/simple;
	bh=zUxcjPH8Vhx/IvlmuL+Dg7t8X61y79g2uHm06vtjibU=;
	h=To:Subject:From:Message-Id:Date; b=bQLafvJoWJ4XqSOcllluQSkmh+KWSpD+Z1UO1Pj4fKku8WND9gcoUmhm46aKPJqcJCK4wFG6Nckb+DzSiQHX+zalECi5BXjUiHssHh5+13UUosSFkoj5+fpGer9FrUF8aVyNng9QOqxf1kPv4BIuPa/HrcgUk6fiz5Xq8RUcd/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hN7EIeRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hN7EIeRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFFDC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767332633;
	bh=zUxcjPH8Vhx/IvlmuL+Dg7t8X61y79g2uHm06vtjibU=;
	h=To:Subject:From:Date:From;
	b=hN7EIeRnrMKyEXPFUUhyb/+ADH8OsgUuKMV5/Dhc5glyuML+Da/oN9Ay/MGS+SDtT
	 NeAlcY2c0LSQlyrv8taVDk595KH3tKFNAWI/nuBb3v8cAPkqQns3wpBlW4HXsCSzt8
	 dloMYRz1y3Kbl3OoxXzLmJo4mYVjyhoO1jrYn0+9lof3etW/P5MnyhFvGCR7e5INwN
	 a0oXlHLY3XZWObuI9pyCpk4MhsOAJeZMmHX0WSLP67huFEgrR2H3aiUGUcS3UbL8Td
	 KE8Y3TQsymp8c6WO+V62/wTjD81qlui8tSHFtszMXPGZDSXVrL8E109b0QZHc07yD6
	 zktgEOp4o16/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92228E9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733263357.30681.8686884156873675975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b400e06d29a493ebaeaaf092ddb726ff4009a8d152ceb0a4de223d0b6e65ea
Date: Fri, 02 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767332633
