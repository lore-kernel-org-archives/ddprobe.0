Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9F053A7
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733443554; cv=none; b=ivw7e8uGyjGrBnmXAg6QffVC0m+vQQmMCP7SmRy28CVer0PM0XBKqLHYsKQsXiD1EIdycf1x7on+HWQX/t2U01awQBiT1qAIN1nGPdSxATXFlr1hJ3V153rMD7y+FgR2fBTbihUtOA7WE8LfOl2IetCQcpYXFpsjVI1AGmArkFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733443554; c=relaxed/simple;
	bh=3kYuJyWpSRZSrk7wpJwod/08AtZvYeJubCwNdtyGIF8=;
	h=To:Subject:From:Message-Id:Date; b=Hn0gvNfkaXTWYkZq3eqFHV9VNsFZTdkati+lBk8tH9T3aich2yoGR6dgYzdDcsuUy2uAB++kY6Qs8KrEnnbQ0SENJAxSi/zuPHTQCi54YGSp1HoQEJfrLbGezgXPb6grF2FS1kUdMoyHItRiYgpbD6y2R8RgdzNTU3NGLtmBCPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgXxqckK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgXxqckK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5116C4CEDC
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733443553;
	bh=3kYuJyWpSRZSrk7wpJwod/08AtZvYeJubCwNdtyGIF8=;
	h=To:Subject:From:Date:From;
	b=TgXxqckKYOlpyqvcKLd1qMZ6mvoQmV6YLKKE84WfrR/t7wdN9itRZtfHINXw+QeeE
	 KvKpSCserD1xBkMNQqSNxNpquixF6bLPjtJWKXntdpNYQrMaC4TDYjLvbC1Unpx4IZ
	 Je7By5WTk5t2qaUYCrUlwEYPoKrqoGYGpA0UimLjla1I66Ol1WvXVIR6rRb2t5LoNi
	 W6YCdlrzn+35CJdI4oC35koVqF8taK5QtXYHycoSO0FYVVi2rNvLvxAAvJPdVE/rjR
	 rSfJ7wlq/jr+mm0Zit45ifQGaElNNO0w0ajD3QKVPwU97kW9kNalgMguY7C9X5rfqZ
	 XYa92sljotYHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB0E7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173344355358.797.15209430680866758098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed528f05135ec644e9e4c27486dd689ca5944d27b50027a6d43f67c01d26e13
Date: Fri, 06 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733443553
