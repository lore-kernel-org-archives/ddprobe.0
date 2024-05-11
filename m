Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D38847A
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715413943; cv=none; b=gNEhdYR6qUctA0Ek64FqnYTDR0rD9dh3peFORuWSWMZ2eRyFiHeAB0iT0QWTq3Z2w1geUi6Kv1pskb3L77pVLxHgZMOfCy/Qbfs+f3JjUWqMI4dst7NIkPrmeUW75hTZfUFrS5oq11Blwm4uaCiF6YOhCQMzpLr5R5759eoPCJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715413943; c=relaxed/simple;
	bh=Bp6Bvt40TCu+spC07faVzUTq+lmKNHtAszLOyklCcp0=;
	h=To:Subject:From:Message-Id:Date; b=iUz5VX1DaKs7O4lSahwkk3uJFthZ3t1Coww3qtfLdW9AwXLLKdKjy9+4WElIvttZ0twGaB7FP48c34/C3Xyyes5JxBrbsB/E0QX+FyZFzhKVVaZcR0/0t5C+GiAy9WQs+YxCiYvGxG/4pTykGTM4GMF3+i8XLrlFZ/PPnI4rRbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zvyan6Ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zvyan6Ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D248EC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715413942;
	bh=Bp6Bvt40TCu+spC07faVzUTq+lmKNHtAszLOyklCcp0=;
	h=To:Subject:From:Date:From;
	b=Zvyan6UeU5HeZ+KybX4eAcSFSI+QcU9gOGCDoneiGrlw0DapIID/7TzZ8btCwp+UD
	 gHhVkaaqDAR+CfCGBGZitsOfFB6q8lVLmuZcAZCahsf1EcOOtckKMNwDc37Vvmsd1g
	 MvU+vbxlRaqW5MDdFnTUCQQHGfbOtyQ4U0wFwK1bjNU9SeUibvjij+iYhSE4tfj086
	 FSWsO7ezkyKghqtRClWVuFH93Mg71HSupipt78+64m1PSQt59ERAYEkwRWnl9BwhDw
	 VucwGXPOQx7ThRPd3+H8tTruYiysNTAcgaDEp1rtsiujFM4dyHbBrKmfOxh0NzRGDA
	 hevvTCHiTNy6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C087FC25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541394278.859.14207955664097490179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43bd4d1fd3339caef97691096cddf8c7e512cb79259224e3dad058c86516ff4
Date: Sat, 11 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715413942
