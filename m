Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41468313534
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790213434; cv=none; b=NYbbzvjpmrAICZPm+rHTFK/AaVpnA3UUc62d1ChFqnsC5TTh+mtPUHOwx5MCH05NqeP9fTM2Tc5SMAG9lGH/wb43t3oe59XnZMx80ALRIT0/n/TCGbGY3aTlEwFAdbzQjllpMg9+m8ETWITDx8u6EyPUwbPRUNihMtkMAOeXgKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790213434; c=relaxed/simple;
	bh=zcPs1PyhB1e5+ykiqnh2Q+cNbBwc1RlSpvTmkpwqGIM=;
	h=To:Subject:From:Message-Id:Date; b=jHgT5anMJ18Thvz4dveNV4aQyhq70JTruJfAiIjI1dgqzACrUiLqOo9QLmw1llIL0ndM0yRac/izoH+/DcPIHdZ8E9Cz9ronVnGexny78w5aWFiB1lJD4dx/mKwQsD6D5eS7yfHJWXQMMk3qW7YleiX6FADdop0UTf1uFi3eg5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcrrDfkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcrrDfkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB8FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790213433;
	bh=zcPs1PyhB1e5+ykiqnh2Q+cNbBwc1RlSpvTmkpwqGIM=;
	h=To:Subject:From:Date:From;
	b=YcrrDfkVgZ9oPErxsF4jHKchQoGvdwczLc8//9yV4Y6sDtMMxlUHSkPPmum6BnVRO
	 zC7KIBASKMhB53uccZ89YWcSzzPHePzcMNi4OGsB1dLazIrYrJd0CSXa8xdWMBooUp
	 0BPYUmn8+hNY3Dkfw2wXyMo+rNm+bEcy01rMTKDPTiecDuZ8mkgFpbtgkSNMFph7Zu
	 7myJxc420dDbLnWgvwo/GTdXfOG6R2xKl/UEoW2njzeKOgbMsQNwjMSS4Yi2MjeT5U
	 7+vPjP73uBYjqwP58vIBiyfishOvUH6QSF5d7TLp575mIokRIY0GUejUF+pkgKi/t5
	 VAs2iL6xGeArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B298AC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021343370.23564.5811083276753942649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3940d40f78adb73b1b7d9fc54bf408f23941903766e2f6d58f7361fe753cd3
Date: Thu, 24 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790213433
