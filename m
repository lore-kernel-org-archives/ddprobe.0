Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F848F5D
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719054143; cv=none; b=tpzfwqVJSDa7jYB9O0gsAEIj6odk94M+1MtkKKmpm4LzTdjroOpL6sT2jS/kPNisDSNA3bWt09Yq8FxmEHq3ahAtr+fz5LBK822xbctQT7wdhHPZnggwj7mjUcYRIHwdltzlyZijAXWsKZ5gxL38ElfSw9t2Pvwyf1wnzMED7ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719054143; c=relaxed/simple;
	bh=8sAC1JGRxsPrlJ8LSZTS+DcurptaFeDJw8E1ionMw4Q=;
	h=To:Subject:From:Message-Id:Date; b=fMCua1+ivxc+KNvHyEHquwscsg8lM4y2Ni+88M/CwaSISQWr1ZE795HXivOH1AR05znZEA8DkMGdKs3U1i+/PTXnvgdgNn7z8kWuvgdK6t/I7Ps5Q2O501vazUO/lMJUqrCZ+/GbC/A/JmCm0CmbGB5tUADjdJsqjLCCaOOMQLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBgfIAZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBgfIAZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1E8C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719054143;
	bh=8sAC1JGRxsPrlJ8LSZTS+DcurptaFeDJw8E1ionMw4Q=;
	h=To:Subject:From:Date:From;
	b=jBgfIAZlC5mdb/eAMTgcfUJbJTiIPp8jZE4BGzzEqghdXDf2h2VnubyYPUw1/49Kn
	 yTiYngsqc30T0HaBxA2Fv7QcvdiexcuaVLtCPmeodt2b4oRX3LgLGr574dpz3fcENX
	 DUmHJkHpdZUuWOvSrpyuKA+N36WYyvHO0qSLXA3lXKkNMvbDYrW9HGbkBnt5nlg5eu
	 tPUL0GuGPrLAXmuxl9//R+qVE5EwEqDn3b9zLeQI8RxqqXkXIlgwk7RLyoiBhlhf1+
	 tXZ8VZijZtTU2Oz8uQkhpDZmXlfQXKiVi0VxMD7sCuldi3efVOHqH7Q1IiCPUkTiSf
	 8PadBWFBJmu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD4EC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905414281.17150.5301639409522674131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce3160acc93bf6acdcefd32a639db24a54507a9e7a20ee23079132946777c44
Date: Sat, 22 Jun 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719054142
