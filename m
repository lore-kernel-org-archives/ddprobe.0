Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB133BBD7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718465303; cv=none; b=o7T2AsPwe1lbVORxf1HcY7sSOjBDZwEFRHhLbr0MtuKL+SJMhGO/8Kd1nCeJI3z2ulId9c5QHtLOMXCrbhKCIhjW7anEk3Iv0HkndcAG8fEkh1yAfiQOe9R99BVtIg2LKOtuTZt65WjuQu9QIutJjwgsQxL28EXA286jMeGkq3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718465303; c=relaxed/simple;
	bh=aSUuQ/piUXyHYvIEX+O7HeWCBAacGAvMG7Sd7r/XuMM=;
	h=To:Subject:From:Message-Id:Date; b=gb0JG2Hh3dDSbmTEGZ+/eYaNWH0ttDPtySnNeSAaK5OR4chqtBB8DqKVmqJd8pJCnkhQptSBgRnKfoGwm0mJ/CeF7EFxuI860FJCvaSmkV+4ivgweAEwFIkaUg2/uYd9+t+m/lkWGxFrJdY7mTLNvnyS1WnGJrSzy545LSHKGf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXmh3cgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXmh3cgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4D3C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718465302;
	bh=aSUuQ/piUXyHYvIEX+O7HeWCBAacGAvMG7Sd7r/XuMM=;
	h=To:Subject:From:Date:From;
	b=ZXmh3cgrUgIqWHZNBMurpa/MoC43cIas76CdTG/VKlzuiYvjSwXhQL5J16Vhh9JNA
	 PQSmPoSjB99S9O0EF9YS0r39uM/p9g80Pml5Jzwsiqmri8oGEsCufUOtzJpnLpUDXa
	 7ulZbtgh0Ca9BgKZwsKLQUO++tW2spm6dPYvtWxAQfnRSXtjfIVWcdLLc/4GSM8Bzi
	 muJLnKmyhiJSfrAdSQLKSc3NdGeB89D9LY1FWKT4Y45ovh802noJiltSycu8AxCVrz
	 OUfuO8ur4fLF+7QnmbsbFTRxqh2kBv/QMlChJD3w8Fj5NFiTa/IdYa7+Qfv22l0+Sf
	 QVnbP4TDoPIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70F1C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846530280.26717.11527829660785212677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a405a407b20a67375b6fd38e972f5f753ecba0f16d67a5b23ceb12e14294838
Date: Sat, 15 Jun 2024 15:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718465302
