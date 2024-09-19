Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F629429
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726777554; cv=none; b=l+5qalRupZCZtqsQJ9QnikjXybiH0QSwDWqx73xF5S6sMcwX2sr8U4uMIvsJGT64U85oBNk/Vr9zjubaHTZczTyDDEous6fT3vPpai4qlqzZXp2Vxt852z07Zad5Tgje1USjqDrw826lPBuGDevTDL/jN9mKK1wiAghMBvAT9IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726777554; c=relaxed/simple;
	bh=wiD2spZewvjuqo6HYEo87GxFi+Tz04y1O6LfV8Xk35w=;
	h=To:Subject:From:Message-Id:Date; b=apRvm9i+Ouebav66OxCKOdtQMrMIK6G6KRpJt7fls3HpsxiRY9/gESirp/ycGdffMvvZ8FMcWVrW+aASvpAteB8jqUdQCOUBm38AJFcdLVB++NkPDuHcI9skH6KK614i1advevPUu5Rl3XyorICd5r/P6fTMHFIP7JCbA0zV8OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3Paqu3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3Paqu3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE924C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726777553;
	bh=wiD2spZewvjuqo6HYEo87GxFi+Tz04y1O6LfV8Xk35w=;
	h=To:Subject:From:Date:From;
	b=J3Paqu3xm6V7l5MY1FL86pbKgvxgXcc3Qv27uL1pD+pcn1jFpJzzr9VKbPWnPFtdq
	 CFl0Zf6kFDtzMGWU5V+SkIOQd5zp3wAcI+yexrXnedIespwZ9J1mIJGMqKPHHRxiRn
	 sHLpm8mKCOJCa/yZRwMmqBeGE/QD0UsPmnB106n7bjQH/+Tw4e6goEYUPEZGuzfyjV
	 9OaXxy38s4QOaZALaGbJFJRg7B0Gy5PKcD3avlgpI3J3WNNL7CMq/GGaWLK49JP27Q
	 pcmYiwbIeM9ylbdDu4QAG0Hsfz4d4GUIfeM1qXu1DDKdOBbkMwkFni12Amxsk+IMjj
	 /r1EkLxeAi3ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADFECF396A
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677755359.18448.6960018497097948300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fc9ccc1a9cf32692e033a252156d27bb160a2d21af4d8e545bf9fb1e1e212c
Date: Thu, 19 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726777553
