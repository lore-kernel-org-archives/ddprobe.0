Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ADC1E48A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736994954; cv=none; b=mLuv9VIN53vjULuetuZiaWV3WKwMBS0AYnSgD5NMU2v33CzsobaYU6ia0T5TM9uBN+N+oZyJzgOXiZY0TV36W8fRXptkwqD0A9f7oBYRZC+UBIjTNpVRfsHLD4vuoHEJyry7HrlxoldsOrqaArSZ2jbfXOYPqCDGjdqDfJqu2UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736994954; c=relaxed/simple;
	bh=nIMmObzx9Bf6fdOfNIU3QK4kvUbY7KvkXaI5nKaClbs=;
	h=To:Subject:From:Message-Id:Date; b=MB6S3rQf+It+DKdQraACs68thAAZQqx6lVzYK5YpJxFC0Y/EUkFrMeh8yK7dAeuLSRgY8JkN6yvPiR6vaw96mSLw716F2ktcg+J61C7eztjxv0TrXMfg2SzIIIKxoX/1hWg8AKbMUhBYw9l4N6A8HV4d0DScjAQmjEPXVUmTRmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEcHwxY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEcHwxY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91D9C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736994953;
	bh=nIMmObzx9Bf6fdOfNIU3QK4kvUbY7KvkXaI5nKaClbs=;
	h=To:Subject:From:Date:From;
	b=gEcHwxY7mmGXrh6Fx31kA7D6ZDJ8m2rMmpxJmbh1Up7NjUx6Lfg/aSik8NX7O/pKf
	 a9PrjRiMiRFc9iHpm+EnvqjsyggCRxEjfoCPEp2o/4NMRsm0QaQAYgaGnl3J3yQ2NN
	 gHQU16OPT7ELRj51S/gkqs+2IRtYBr7lbPMBCWiZqD300+SOzYB9Lr3ZE/9mZTBi5v
	 XDcqf+ymxsA3Ba7Nap+5evQJ5EnCT9TsabSmdhE7Vo2aC1PC1GAjKsg7X7Tg5FHNQa
	 fBz7o0TQT1xyuwEk2fzW4jRSYXX4XpNjwSF/hqaxvSBgB5dbvVFYA1X9tu7wmDO8ev
	 UnNgz80Lt9g/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95278C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699495359.13039.4838105903708083182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674c2ff48fe20b364885270c1a04511781f98272a6cc4ae1d9ed7f7d6c6ac0af
Date: Thu, 16 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736994953
