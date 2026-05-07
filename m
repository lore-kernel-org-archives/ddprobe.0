Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59C740DFCC
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778120254; cv=none; b=c45kASWWRRrTot3XoYhD5MkHXvNco91DwDwHsVPf659ETEcgqnzyvdza5jDW7m9M+PnPh3hjyT5Qnkaiq/VHfLqedxXuUxb7x4GLdWXtLy2Dz5B9rwM95i2b5IfPMDyDxfJontZ3hIiz9HoFJSuLb3jLu+8P2dYiJFfeV6VaNho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778120254; c=relaxed/simple;
	bh=sE26dI8lVzE1jvc8Sm9BchbJe8OlOf5vP2GpO6Rk/O4=;
	h=To:Subject:From:Message-Id:Date; b=RSv68i14KttCluTV8Mvd0tgHJm5lNOzmX4BpNVM/IAhX0G5NIbvrZrEnvchkBPApaNnaPqjv0BCcCVAD7W7A8ovXkYhnD7u4mwjzXU/qV0rXqISPqvil/gJvAJKTLtI/+MAnKtzjlE8NQWcgSpVvmjquq4u+jSVYYfsA5zZks8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL8MaWU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL8MaWU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0247C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778120253;
	bh=sE26dI8lVzE1jvc8Sm9BchbJe8OlOf5vP2GpO6Rk/O4=;
	h=To:Subject:From:Date:From;
	b=XL8MaWU43vQAgVatdwbchvWvcSHIFGz0IjSYOCGI0Ser/mOzZKDD31b6BeAuyp93n
	 dNf0QIX+3F6muJyPA5xl9e1/hcu/ZBtuDDlyRg5051ktd0KBwn/FJEXGgh5zOdxUtb
	 iOnS7p9YAVXZ4gUpqOqn+44d3iPYLIxhrK09wVFqdqjaae/owOJeclKjVJnT3tlMRb
	 SfbCQBl2x2UaL5zOZ6EvGWZL9UhS0h2F7WgqxI8HJK51VgL7omhH70KlX5SYOiHmLy
	 LfNm1LmBefBqJmprZlkhFJeo5skJQaCQA3SvSHHm35CTQ2TG9ApOsiDZQTp7UFP4os
	 T0YX3LBdcQc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B057BCD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812025368.21994.4407165972293598289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1f0421961819cb174cec7cb126c55c7bebeeda2037d09b855047b0523288d9
Date: Thu, 07 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778120253
