Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209302BCF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766429034; cv=none; b=e94g2sloS37l9BQ0Mi7fiDB56EWrEIJc0YxU+adm3XBRdD6UofApJRVPIJPj8z/ouSawgdVYqho9apgetqQuQFqrw+XgoF85QxdMqJVcu6fa26aUeWZKSS3lVCSjzK7pzkFWt1Tl4+7KaogS5JyslrS/MNXBDSgGeBRiV7S/17k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766429034; c=relaxed/simple;
	bh=wwK/nqqAxWEna+XcQrpuU3CBBhUbOPS5H1XXYSejpVk=;
	h=To:Subject:From:Message-Id:Date; b=aOJoTZQiEY3PdmOb/dMLmjdlfl2IIG7a05xAMbERoOxOcY/KEjvcN6MuBJubHQpQ0h4dMa2EXviXgacuO/t5uUB0LigA1Hb9a0HJp2R+R2f9dcBOwq+mbH9x0IrlRvkzIfi609WqUMp9OW8yJQRzj9AO7A/qg3I2Iw8YEJiqP9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptT7u94m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptT7u94m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766429033;
	bh=wwK/nqqAxWEna+XcQrpuU3CBBhUbOPS5H1XXYSejpVk=;
	h=To:Subject:From:Date:From;
	b=ptT7u94mz8GimDZfhNlRJ1LpU6dyJOMXlhCSD96IoCbQFfdI2e/66aH/JJwdjsuEg
	 2i4Iw6MmONXHt00prlFJ64Yt4npkYvpgk2m/VfQt1Aju4tKJUFqHBbwckuqVrKO9z4
	 msXQ+zoiEoZ+JTGadfoOaYwfCVvSL/LPpKXXmRu3bJi9oW20XV+naGdlHlwu9pMft3
	 RByNlNEoT5/oS+mmT6RH8KLPtxuuhaLPTDl6JzrtF5wr3Fyy4Zyem1MrJXvmSjJ60h
	 kc2O6CqX25NSPbNQiu1UrgO/3YbAoTuQ3L4eh84OJv0sLBD22pXdThy2WIFUpASGh/
	 Md40Xzt84REbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B3BE67810
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642903358.11097.17206929733063447019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c01fc58ff9a391bc641de39808e3beeaa1377cc8a83dc03db0d56f83313249d
Date: Mon, 22 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766429033
