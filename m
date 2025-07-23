Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0950B279791
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753258194; cv=none; b=a040JFtpyvn3j4ifmOdkaEdKTOx5iK5DRSWjulD6yueh+5omP47ZyfV+hn03Ie527IpixmU33CqIuJqr3teMR0pUuL78G8tcEm5x+HPAoPKlvDuFWysGnUYUd9eC5alYACDZ5Rf0ZrQD2d7rxDAOxTtPP2dqZAShIoJsniHp1VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753258194; c=relaxed/simple;
	bh=f0H82uK1I2N01p0Te0AMBKzF77drlcPpa3htPP4d/dM=;
	h=To:Subject:From:Message-Id:Date; b=kkRHuuTCH5LIKnCRooXlrEaV5rDJ/Q7eCr5WUHHp7dxkXCfniz92qUHOhmMNH34on6za1CGlfNpU83NzYO7ZCSURwWZFCY/+BlPoh5RTwGPhoqJwgACa7lq4BO3/oM+6F4ihiuFThNuJude6CQrKb18Av5wQdo2muRxF8CKc+nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8x6PvKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8x6PvKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F57FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753258193;
	bh=f0H82uK1I2N01p0Te0AMBKzF77drlcPpa3htPP4d/dM=;
	h=To:Subject:From:Date:From;
	b=a8x6PvKxbIzyyuXBtyf5QYvt1muqWzbmh7VlPpauK/J6ofkt6iVeL4bbyT4mMoeNo
	 s8m07uDIZNGdyRKDYjIWhfHIbArIy9VO2+ItIXqne7cfn2dxbphEX0N3L8BZj9b9lI
	 kDdpO4VW8VDkdkSeFHG1U07Ep4L3l2JqzqlqRDsSBC8U8dHX1yxNc7q4jtb5jLFWwX
	 zqtC9iuF9kDQao6Oyc0HsLmcjqUKPMCdmG7CzTs5kSzbkit1CNgPJJJ/Fo2bhrYvFn
	 NFBYAWHVzZmQVMfYbg5WXUgdXRbOY6IuZn8DF+0xMUz4reKYGlIQJwcxsV9DATd61Y
	 QzCOiM0cS9gsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90275C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325819358.24870.14248735105873326888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db1a6f33d110e998cfd569e5cc11fada9813b486d047d8ae56c489f6b0f49c3
Date: Wed, 23 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753258193
