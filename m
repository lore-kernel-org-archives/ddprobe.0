Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D221171675
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716923663; cv=none; b=Hkp+XucMLw1KTsUlkM94MBNpoVpjLexL++EDSSo1cGgz4g78TtDMq369fvAdymJ4r8bzkB//FjX6iaccsxyo/HCQF6iWVUnyoLQ7DCLFgD8rzfhWZtBRHYfDMtCLBAU8/0yf2wztciEe1t636v73woF/sSPsR0EVKwFOVC0xbGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716923663; c=relaxed/simple;
	bh=DApDYKTp8ScZbl9MDOx3eu610v31CYv8r4C0s6g+Yx8=;
	h=To:Subject:From:Message-Id:Date; b=flw33Cd5xBRq77AWI6ZDQONiIzZvLr9Y7Egz7ykgt8jU8iJcGQuXIWMEg3UJKi7f1l+SXfB3nIt2PAondM7Of1UHiCj8f14yvPSzurQHNBrOBzMOfydornoOLZFll0dN+p12TQYjkcQWYbIzqfwHNsEGSmcv5bHwxDvCN/oCB9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swr7b3+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swr7b3+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2B2C32786
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716923662;
	bh=DApDYKTp8ScZbl9MDOx3eu610v31CYv8r4C0s6g+Yx8=;
	h=To:Subject:From:Date:From;
	b=swr7b3+9R37/OUW1/1yWUm9aip+g0h4Blktm2QQvD3L6nCV88TgItcRyRf56s1y1x
	 ugvttyhTajamFKlzhpD6knk+ltoVu94/wLMEH5Fvhiw7yb2NOiTg4NG+YVuZk9V6hx
	 UGLHTIbQnjYPDO6LznMTF2h/QiTl3frIvpM2qPjVl5lw/qTVFsxUBoYfsQX4KhVozF
	 MCJHOYH33JqTrz/04iaZe0wPIOTD0D2DvkBDFYLBe71zsrIyLEaOjQBCc0vYayNc3S
	 mvSgtjas4zjLTPwK0wFA7SKfp+ggM8PMU8A6lVa+HlBZ4Gbr6OjSh2S3k7Ze+fsaDi
	 O2DEtUOs/TrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FFBC25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692366280.1720.17225528857965161730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12492a4438e3ca8f0dc60e05940af9ed20c5d44a4ff55ffd0784aea8ae19f17c
Date: Tue, 28 May 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716923662
