Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF0D37CD40
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776005854; cv=none; b=SQPaxLY+sJfO0O784w4lI/pFBYcfXDsGtYQF+FDgmjBNO0zVQkUn79kJOE2Uj4kRLOGAd8dIgp1wu2ciqewUcUdMUKbj4WQjCp4PoaYLmBgzUZ28MT0E54SSEaztCYD6VNH6aqP0Jo9lyKFE7zQw3pA0Tk5JxTaBsyJ/rLqokIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776005854; c=relaxed/simple;
	bh=jJqscQZJ7+EQgSb9fQxl5wIbizIG2Jbpjs5fQasApbQ=;
	h=To:Subject:From:Message-Id:Date; b=OL7HzBlDegpq0xiYoF2TXbUCMkyVvJseXJuXcDYyYDG+QQPuv2RIGKVwflocQM9LR2Y6htjiqHGfhTZ4EqC6w8zHZHUZuML02DrY7EAwJU6NK31t9TM0H84UfQEEBKpW+rr1ixrEKYQgvDUuDwGEvXPyg9cyP73oJCA96a8gCks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWNnfPMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWNnfPMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD82C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776005853;
	bh=jJqscQZJ7+EQgSb9fQxl5wIbizIG2Jbpjs5fQasApbQ=;
	h=To:Subject:From:Date:From;
	b=bWNnfPMb8SVJl8Izau4pHXzsi+kJEQzzwiK1tvzRmNT0WtYlWTqiaGx3UPQWPiLMB
	 lJkzTt3wtGOVr6ZsAuZwogrPW96Xkzna/F0q75UKFh0g0DMvvY3mfwDq9z5Sxm6DXc
	 es3WLQQzbfpVZSeJ/sHMtFkxDOVLYWHElxH4j+kOobUi+MGv165g7lR6maVu0HxOnT
	 ubMbq2ny0mT37CI5idpUqn+zsY/QZ1Jls4RHsgIeJYzh8cooxtD7gw8FCNCKCJ9bkE
	 plrdD0OSXokrvLsZg1RJVOdMo2HwNyZRDKJxlj5UP+Qn2L4IoNnlTh9oHJPfrH3u5v
	 FIVH9fyhBTpGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6EFE937E5
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600585368.12122.11494191613114950264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac590d8d1cb150ddfaa3e4aa91e9af4f8b33b08b7fb478efc2b0963540c1a4e
Date: Sun, 12 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776005853
