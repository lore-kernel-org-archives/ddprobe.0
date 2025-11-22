Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F5F223DD6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763820714; cv=none; b=n8st5ctd2xKY4zPGMW9MCmZ5+jSPkaO1lt4b8ezuEnV9yTcLJyuc8IUkZJ2dnQANsv1un7FUU8V2D0kMd45YzTSNzz0vbvelViWKMQM+iYq6lj2lYF34Ks7H/C9vzB/Q/qVoupChyG5dBR/A7uqRtvuhc7Prjc0Yewi1WyCSn94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763820714; c=relaxed/simple;
	bh=TIwmbLUJEamEyXRgei4pHOflY2GFGa7Jm6fmQ6NX/us=;
	h=To:Subject:From:Message-Id:Date; b=VbjQZFYx5hXRyNClYqLR+bEowPyH7XGUnSxxvQpsdu/OQsG5Hwi3z4IkIfdUvpb4GadPeyKHIKKeFVsf3ct6Ndh/gTQvac3uVkj4/2AsdLYOv5dBYdVYZOjmfu20z0UL03xnmvm7uf5YQf4cOlJCdDyIp+ibTlLVrzTdkIWt/kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0jIxt5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0jIxt5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C94C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763820713;
	bh=TIwmbLUJEamEyXRgei4pHOflY2GFGa7Jm6fmQ6NX/us=;
	h=To:Subject:From:Date:From;
	b=s0jIxt5S5HeWOV/sMD9Ft40Eu5ersm3KHElBL/BkgECLJllw+1NPZQ4ZXRaRf2R2q
	 DM82EFzy9FYflNCsO2zIeZlnmWNn2z1chEn/hfWCdWh0RxG/5gdUUZhBtxuMrN+om0
	 Yo/BUO8rN4BhGhS2I4L1fm+N6waGCiB029sG7IyINMoWWCh5s9UPqDmYuLvRoDhCwW
	 K3CsHXj7lGJcKct2Oo6CvOGK9FMp62Nt3JFfSOjo12WbPJPpj/bPfdzSFbotB9VCIM
	 7vLCh+BEENU1Uz2aLM6Try43b0rPJimoNP1JcM8RHTB41dgccfqFy2bR0vCBpqzlbx
	 +HOrVQR5rSI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97636CFC539
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382071358.27237.15374813062937508479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501443ed3b6dd2895aa5cd36f4e1b490b9ca229134bd16f8a7b1eccfc8432b14
Date: Sat, 22 Nov 2025 14:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763820713
