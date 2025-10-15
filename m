Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7C230BF67
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760543394; cv=none; b=iWxa7jHyV2juRVuqxVasmrulelT/RXndyU/gIP0lkU+7g7fSxQQKrHfIWAWRsjCr6tiEEXg9bu7YTgKcqt7slH4wKetdoiEBBe705eNu5ET3gLR+O7xLIcAPJNFjBxhp9N/sMBkEaJAKhGXSgLNA1vwkHTxa2I0a2Kh7/IzJPnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760543394; c=relaxed/simple;
	bh=r2s0EeP3Wi6EKMYKvvqc3btAcSRkDrGUUAmePffb948=;
	h=To:Subject:From:Message-Id:Date; b=FCMf/TDAR8Z4PjCXRLfSKDz1YriRIe1O6fkxiCduUUlv45m+XXiqoRlM0/4qQIcnOpeUVmkItA+CVbqgIGDYXPbmC2JNBOADt/+pA0PtC7CPECnkIdaCqKoW4OZZp3LZmVnMSzvQwrToJnjT288QeyYdu1/4XkvCRwp/caTbLoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clog20zG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clog20zG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB9AC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760543393;
	bh=r2s0EeP3Wi6EKMYKvvqc3btAcSRkDrGUUAmePffb948=;
	h=To:Subject:From:Date:From;
	b=clog20zGbZZ3ULm8TrcBwV/Y33fgOm+qW/yWBVajILL5HXq0Yt4JuUSvfNiyuoZeO
	 69p5UMCnlaAekNu3sk1KZTVxzHQITJhSrxlCiaxZwdtc0LFAMTp5PH80NIlqdribv/
	 GuQgTyaY/TlCrcfc4440gWgooDJ/2tgYL4A3iKUiUvzd+oJCAX6QmtBuG+2EL+ECvZ
	 OkuCFbZGnxmhzlXCOL+sieu6evWzeIWNvGaygV+VNIULNGVS4JHbdv2PrS0W9ycOpb
	 SSeMaEdVc8BSzZs0fs5XpBWmlRdLPciWmgLcAYjcXVaxhD0AuzLZ+yO8r9+ZHENXVM
	 SrbKqMTeDMDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F065CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054339357.32219.9563923260514109033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e949129505cbcc3533d1da29b85665e1c65fb4f381bdf42781b70f8b73721777
Date: Wed, 15 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760543393
