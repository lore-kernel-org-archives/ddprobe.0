Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14172184524
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776704254; cv=none; b=URl9Puaz8/RT4RDMfV5w7LvmdQVaqj+d6eaw2zC5oyyrZf6y2cg8TB1rgRFUgkPzKiCOETSTZBZwYp+rcVsCDkCDXZ++DV6IaxEoDrwHGwlSjoWk2JvagKYxNUkbX518LKknbDsgQ3YAKnCXIzhtWNQxlHz5D1MrlWve+azSTgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776704254; c=relaxed/simple;
	bh=2ax607kWObwBWOjINq8FEJIaGCmuNBAMLSa3k8eBrgs=;
	h=To:Subject:From:Message-Id:Date; b=eip0tT1+PtE6okXqwNacAVx1FbDJoFvFO7xNtRhtBM5MLui0VLv8wqP2uGvxrQLC6t9OB4YDc1A/CZ4DsZUoUr3Tezzw7OiEGCmKDy6u8j/wt7AaABV9Z5+BMtlqf7l9uO+IIA+vCSNgoNhqAq85od6MD4tNUG3XRYYDXh+BAHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZ4sNfGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZ4sNfGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44F8C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776704253;
	bh=2ax607kWObwBWOjINq8FEJIaGCmuNBAMLSa3k8eBrgs=;
	h=To:Subject:From:Date:From;
	b=EZ4sNfGBcEzaRGJnZmQQA4Gy9mXfuVXSLlZLjdzE8AdbyKRpw6JxiGre95ZFXzYIM
	 i/gQrx2tQ40ct9cLXaDTNfks0iVWB9hTfJSE1PbqzOo9orcVFATUoLa+n5vj3T+v4n
	 EJGM1emUajj+V0InhFu8ENONSHM+K1cNVa6Fdg6R9TaVibb4B5p7x0rNdaxYRqd7Hz
	 8pEdW3u3k4k0zHY+kSRbm2mvpwmLjmYV0jqxddGBDYmUbB/4xmqD7O9MYqFLQ/NyXQ
	 9Ybe6Vi7UheZobLhMVMuVIzQ8N+VgVC2TvGhH4B7htgcglHqRuwfpNxeZKNDJG8EpY
	 QeAwWFg4Dr6AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E1F5A8A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670425369.28519.6601996028395594358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703a51497542875df47bc2f6b934ff9b03e523c991b7427dff894f8b289b9d58
Date: Mon, 20 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776704253
