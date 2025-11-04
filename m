Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E5F284694
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762259394; cv=none; b=taTWrBsWTMtR3beQyq/xwT/k9ldOeoNRGkPSiIyHbrEBkhzehvC7pWAJ8m9maumPn+Gd8tF6W8Cqgod1ep9r2XOWgT2LbmAbQ01Twsdg0QY6y13g6trMY240/iHOWYqq9kyLjdzE5KSd29vQ4vXlxhpC6dJXOkF0RUVEb9Ykzvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762259394; c=relaxed/simple;
	bh=KXtE6eIyteXXDazqF2CoUQgiY2Axhq/8QXiOsMSKRHs=;
	h=To:Subject:From:Message-Id:Date; b=px/KAhLCwt9ht9z40efFxGW4AsJHYLYUlYu6oT/BslQolysFhtwu4pyktXkIn+kzrKxsCOGUpSqvNwEphQO7R+kjvvwzepYgZq3UeOayXl/ZWODkYaU6oSu65x8zucQ1+j2YyayI7s6kHNISkbLLaEXB0o/MXpiF94ge4PspP88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/eJeXkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/eJeXkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A067EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762259393;
	bh=KXtE6eIyteXXDazqF2CoUQgiY2Axhq/8QXiOsMSKRHs=;
	h=To:Subject:From:Date:From;
	b=c/eJeXkHKSDeQktSyD2DZUmUxMGy+1KXi+G88rMrqB7L9UAhiSkWSJouryoB127IF
	 NgXs0bUaBiwYZ2h5xjrcNNwHMPxC5BUhywusQkzSLtC4INf5Xtk/ZGkP6pWM7ObYbj
	 4fJxUN54BwOyDjMh84Id1gUndEOh8PAsx8gJOP4SxqTKqwNimx7DnA7pbnVakxpkSM
	 B08Ziuve9ZoFm6o55PiR9BLDRYUFIHIpOBoCQBAZTWKeJcKYgnja1wMzuAdkb5e+PU
	 XX3EyUsXsixc8z2Ev3D+HFSZd9KlOkkdq1ZWwSKeoBCXqNjnLxxbiPbWxBVbBQ4UT1
	 dORB/VkVDNs2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92060CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225939358.22487.16029424236041139419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3429446f176f8adf590f45bba9e7a5dbec589b75f2eaab5e8d7c7096d82d2ec3
Date: Tue, 04 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762259393
