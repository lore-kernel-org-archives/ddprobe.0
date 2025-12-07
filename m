Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E262D73A6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765093974; cv=none; b=Woaxuwobw8LGXoW8uGBZYF8cD8OMj/9lbSej32dXxYnSeXtRgOtJ41D3PnbF+GlJce3Dus0iesy0lMHSjM0SddaI+l+2kN9WuglGd5wtD63e36s8yNW/FTUYRsFwbDzGSkh6Cz5nkdbD4iVwq/Vt84nIWTJz/IgxF7NdoYDXW/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765093974; c=relaxed/simple;
	bh=6i3rFHx4E+RX0wDomEC6Z00ixHRiBOM8eCl2YdRgou4=;
	h=To:Subject:From:Message-Id:Date; b=Y1Wxnny1qpLXf91Q3enJ6HdC/fzqHbU62H4AAZSNTDuDplThTyXgMvC7GZdXk1nAXiLp3JDsfcgjUUaLnRZH8hKhtiHbKoTHo8Kh8UCI3xvs+Q7kP/rPjmtM+b3C4LSWQ2jx9KOuQ8SO0VPp0kNUito9BAT5ZbSMuivHFoJ8PAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAPS3krG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAPS3krG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2734C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765093973;
	bh=6i3rFHx4E+RX0wDomEC6Z00ixHRiBOM8eCl2YdRgou4=;
	h=To:Subject:From:Date:From;
	b=aAPS3krGh3Xbn8/QIJZLw1CO4T6eCDJ8wzQnUZ9eFk75VHjxbT2HlZKDyJXTAvm3R
	 O0QrYaZnuDDlUFCpK6eu4tUFSJI3g95YmDp9HCNrFo3pkGsiGWUUifRcyHOsUA1Ct8
	 Ga/VZINsUsJHfxtJ2B4/8BBT5yEdvMcV0NonQ6waAD5fBGSOUyP2Uh7kpGb3XSSbiI
	 jnQTVMfr7lYSGhL70LbT7k8E54qjca6l7p9PNvmLsTzytHBadLujy4QYscPQfNiWX0
	 s2yMo6JJESK3lONIag59KkH29GJhl3Jtu3m8z/9ViAr3jm8xPU77fcsY1RJaF0KzxN
	 zV12IREZkzAWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A36D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509397358.29520.10592529905947865441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd2a844130e352efa627844f8db40ee69ae74e41680d67fe4f6d744b82a84d5
Date: Sun, 07 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765093973
