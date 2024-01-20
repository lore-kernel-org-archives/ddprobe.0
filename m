Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32847F7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705714697; cv=none; b=L11po5mT5T6LfrLZdEDZ5LYxlbzad1oyQj89+DdJrIzcKMTk8AbEJ/A/ayIselDrePM/VB3QhKHJiUqY8tx4KjRJi0Xm9DxbH28YB8x2ZDXeYZgdQCHaaLB/PAUEcxJ9xVNjOE48cFQ6mGdkoYZ8/pqgFggcq8ZEswRwL7310Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705714697; c=relaxed/simple;
	bh=pwPokV8a8b566X17kX/UPEz+2dOz5cqcHDYAz7Mmy3A=;
	h=To:Subject:From:Message-Id:Date; b=T253rt+jvKsDtojXGV7s8+O0pdzs8vbkYEnSsQK4sy1YDP2JiLnZkaIS/arfDzNYcW+HnhjJurPP+FCQQ5RxGXejbGZayzeLLpWmRPKtqttCUNPeNO9fp10WkgCA9bfjsBGHNlaa+ZxCAg9aQjdkjRFU3v4WW3JOmxOZ5G894vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoAxY92t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoAxY92t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E639C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705714696;
	bh=pwPokV8a8b566X17kX/UPEz+2dOz5cqcHDYAz7Mmy3A=;
	h=To:Subject:From:Date:From;
	b=HoAxY92t5D+YneB/RVEeO8pbkQLsphCYh/Y6TrZwbQFXTeJ2Xnr/m/r+hk/f5Vjam
	 pMMVAOv8CY6X2ezjfKAQl6mVFaRuIyeJe5UqdWgkOjLpeTECug9meOo8rz5LVAm380
	 TnzcC1qMNwyAzRQlC8H9P9LQWxnkk17rXa9DSj8/u14cq6BYe/SeN4aQ7/V4ThSeSa
	 q/PFsnx1h0GfdsiJo/3lRq12JoXx4s1YE04yShGM6cHNFxjX6NN/8UxZEbEfW1qCtk
	 wEE55sitPzWcAX0VdorfyKQg4hWLHVYaG7k/sZt6mIpA8raHoGNZFo1vObqdmGipmI
	 nAwXeEYAvKmpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDD7C4725D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170571469636.10728.3580408207367506897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23c8857f711ce6a13168e07c4f3424758f1838c4712950c333a290a7f5682d0
Date: Sat, 20 Jan 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705714696
