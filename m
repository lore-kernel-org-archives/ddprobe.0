Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019AC5395
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705544897; cv=none; b=hVzlKjAlaL0STKzodM1lH8poEal9L2lH9rKcbj/FI6t3LsRanWGg4mdPeqcRoviFBS1WikFiRINlc4ZVZRGrDoSVt5zfx9x/7wMRgDJDKMSBdpSDILfAovMtVq0U1EYn1Z4L6AviPrEk19z5XyuW69dhRowsWtS6wg2SdEHLzVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705544897; c=relaxed/simple;
	bh=xuliOXOUfrsgft+eSjW0fXjA+o2NYBPbTR8wK4tN3nk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=lOWU4zPbyOtbVc18pbfJSULsbMqBUqgzYf1EHOmYnDYxeHrlscOFhFY8s9ObS5hPpVLz40SZi2GGHo8mmXWw0V9R88lFUODz1bD5h2GON7EQyf/4Yh3uSAAeLkKB1gjQuOUySZi4FFZdvGXdEpNjyZfCtptfMfkNTCeyBeD4mN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS9euyZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS9euyZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB83C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705544896;
	bh=xuliOXOUfrsgft+eSjW0fXjA+o2NYBPbTR8wK4tN3nk=;
	h=To:Subject:From:Date:From;
	b=MS9euyZ5+e8wlDQ3piygkROgT/zfWYi19ewYRdCm2lv34Cs8f08Z5LYYDLSBWPekT
	 pIbc+uUJAdwBqpZeT9eHuW+otyJ/aAFi3m4TyIDhBg7b9zvTF9Y0WbLtA/qMzdmXuD
	 UBeEoMbsgAKz29SC2ttUOWpFb1RiE9FYMwdTTxn00Z+QR75+rhkJkInM2IEFS6eM87
	 nA55BzL2J4QS4Vm/6jUV6GpqbIx8RX8X7k0oQTpk0SeWfFFA9YfSj5NNeV/ISNAKhL
	 CshvUAZjoMArDIa1LdUoSSs3mKnvLEjMdtpCAUn9hti7mGvKwIWycoEfY/un9QsLZY
	 4+xPiVvVfCcjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65091C47258
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170554489640.22592.3497072122043708918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a177d52f5bf8942e8d4345878be3892637c0d8049a9fb1fc378a6fc727b261
Date: Thu, 18 Jan 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705544896
