Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6D027F18B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768278834; cv=none; b=ZOF8E1W92SvxD0CCwcdc3R3pl8H9g5e2/x43KaZ0ZKFEGn6dqSVvqKjjloT0DHYtbjth5AMwg1tlcAjM3xWvdRCtVW45gNs3mz3hH/rEsbGiHuBiInLjrN3Y2XUFuFo1eP3+wzj6xSiLajj8HV+kz8bfZEI4dOYwyeYOaRZjqHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768278834; c=relaxed/simple;
	bh=gz3c9lo9I54tBhzEdTJbMX1fGwK4SlkHtyYh4fdUehs=;
	h=To:Subject:From:Message-Id:Date; b=hAMJn37nA5vm0P6bArL/HVWQL3DaWhVW+E2/yva7bTvgOVedDhTOzjATmp+A09GB6gr57G4yvfAWIwIB9LpmSzTz+Bh8ESZcmhw0EyUVTKxnq6F5wvAicreKG6Z3YyuR5s51S4oX6acXr6huC40PsVII4adAU5vPp0chW7wq3O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu6tb63v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu6tb63v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B795EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768278833;
	bh=gz3c9lo9I54tBhzEdTJbMX1fGwK4SlkHtyYh4fdUehs=;
	h=To:Subject:From:Date:From;
	b=iu6tb63vfIFVII/0g6tAUvNyO/aLbIxgmjlRCYcc81gq8oFF5NGbVQa904tOcMVrb
	 eqXVatUMCJ1V9aJoYasrLe3sp+io+KcKYFPsaHLI/Pa/MPGmrPU7COTTiKCHVNG4zt
	 TORvhaafhupMWgOvbvWBCXJhO3OKWSJsoqtRjUSAdN0OzhzJKTcV5wKejs1v4aLa2w
	 BM8pzWSlciFtpyDyIPXTls3VF5lr4yMssdUpuITfuUeWsYCK+wFzvuizxd+ALBWzm+
	 Qyci9QF1mtATP9Xivv9dyQfuYgHYj/pXesbN2xhO9xj+Jyxg8t/UzmwsvcIZy3EL3x
	 TEWcCddkmydGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6395D29DC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827883360.15456.17147076942960541887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085ee8cc17d4dd30d4f779baba4aa972cb2566f4068c7412b2f649823827f070
Date: Tue, 13 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768278833
