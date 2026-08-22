Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEBA1F8723
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787383234; cv=none; b=ovVwTP/jE+2tyb0fUU53foa2lsCfyviYm1Ym7PAqK/qentrRzTGKIVmRnLnpVLDrkTA2vGaqGeKnDH8tpKJkaW/r0rbK6tcB4I/5iVkOlI2zAiRAsxYk573s/1R2CNztcvz2UsFxQ/2comsZHHA5dJjihJvgO+N25/5mJKdelvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787383234; c=relaxed/simple;
	bh=bdw2bI2cbs3c23m9VOag5bPJhoWtV9gg5GcNCu+pM90=;
	h=To:Subject:From:Message-Id:Date; b=DsEDroo6cVkrOGffdxiXaXx8p+HVQ0+YYNsmPIZN21IBKgShdMaFAvz/okbMG90f6BBGBf0LwTFUrCsJEVak3Owj00Im+XxB3Y9Rkpp2H7uMibuWtrNLIVBBbWIlOZPnBVOKbeU3p6K5KC31WU7ZKz8I+t/fe54/HB3LaITCEGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shhGRUWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shhGRUWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57FBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787383233;
	bh=bdw2bI2cbs3c23m9VOag5bPJhoWtV9gg5GcNCu+pM90=;
	h=To:Subject:From:Date:From;
	b=shhGRUWp7NjVG2DX3pFMpt+UtHD6smynI4fA//tQt7yOZ3he0O4cUXipyJRXCoCSR
	 46QMbvKSVzaLTWWbJPxvjy1a8ifwiKm2QPI4mFi5IOgz4ZNr28sv1LqtmJitxNm30O
	 mBRtB0SeOqcZgMDtiB3cGH+dvkF+NHdlo0nhmenYy8/zNMfeqsapaAKLFS+/o2cDc3
	 9wbd3ZhtpJBByoZxVkZZxogXiLpR9kEohy6EjYJkMBV1fdhRTIcP4mz5ET83Egxi2b
	 lblGY0sAwBRgx0zQPqE4Gik+7HUzxuCMurSmcTzrjRdLvstz1mAyn0abuuIIHEhjqA
	 OERhcU5cf8EDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD67DC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738323368.23488.6525287334835637502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c05812917acba941e5fd15611e5447a75b89e9fc2e3f810979e76935332130f
Date: Sat, 22 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787383233
