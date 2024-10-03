Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43729126C09
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727942154; cv=none; b=EeAHrEeq/e8XQw1QnXAaUMKDpxC8X8cCNjv15htysngG47tWe1XNlMqvfiMSLLXV/fdaObXG7yjMNh2PMbEAV7HbiSJ+H/WRW8baMSbz3qjQwZweL9Wadz/Nx/N4NdQB9Gms4MmTf/ijd2Vjrhzd7Gn3sufOFAwDyFxiGE/QvLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727942154; c=relaxed/simple;
	bh=bgPyejrKHZ4iEHlkhem7JxB5HngHtsoYfpTA43LjmZw=;
	h=To:Subject:From:Message-Id:Date; b=AXFsnxqmsyYr/Wzc9aNUCieVO0CfGInPEH3Ki/KyXpGCDzWs1bX0mSU/vmbM21b7j2hdelex4ubCAQErVk/iI0Qvqo6pJ2K8NByj+/XaPNIBGWju4mLFornl7g+JzveFEehmb3BotQyXGqXl66xK8Q+F4uq3puDsQ4OTc8zD+As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+AwYpQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+AwYpQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D47C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727942153;
	bh=bgPyejrKHZ4iEHlkhem7JxB5HngHtsoYfpTA43LjmZw=;
	h=To:Subject:From:Date:From;
	b=c+AwYpQj6GvtVX9P7+bVcT0Ba17rv3p4fECVVoOQ07uRXk+cWZzMaZfgJuHh2AXbx
	 ohMiSZHOjGwntAr/Mm3vABH9ukcwktrV3wAJpBZtFf/X8CxN6sRmYQmhr8YKAyxojt
	 0w6zxzTMFb45QnqPlleInATNw4gOeovWefzatNovQPvDr5wytTIhVEYlzfpk5bqoEL
	 MwGwt+kr4/KmydsI0VT4DdKn1cvsgI4Yh4FPEinqTAPLulRb5lciuXv26UFU6hZFKf
	 0uCE6IVVkmtRaqJ1GrCoifXNuABI1fR24X7+bwMOgdajySavMzgvT8A6xoW00H6XJd
	 ppKSsfp3DXiMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBF9CF8567
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794215369.16637.2148150905220333886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf27392b8b27dc4bcf6f16c301de36da763385dd02737a66e09a7e36890b0e77
Date: Thu, 03 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727942153
