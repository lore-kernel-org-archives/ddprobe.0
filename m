Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E74381A5
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705878497; cv=none; b=f0bt9rET/Yzup49PRUrz6rx9LloawlZ7i7U5jHTJrgfwfoPOwNT9ENl3RYXeyLjTDYBCSWvlQJlPQnfchikr5SMqxg6+eynQeWbSBqW6n1oD7tXtTg67oWf4yJozDx3860HZX9pzr6FLmgeO1r5uZN1PjE2rT3g6TVFuwIs6iJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705878497; c=relaxed/simple;
	bh=SGdXWITc/UOtgaw/paR7iyGpgWnezIKxCpHBRjyxpT0=;
	h=To:Subject:From:Message-Id:Date; b=P/XqCIZuf/jkAgowkbc+gVScQQ38xCsOsmB/MrnWOSvujvZMiCO6X+uB/i34rYa5vfqP0hw87DmLVmjQlz19rWCuCYnn/fDE1kW/tbTKC1krO2bLdO0/15/AP9pisMH/ArTLuRmw1giHLAhoV7Ze2UA69oGPmJSabUK0qtYLXKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJYzXq/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJYzXq/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 753F3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705878496;
	bh=SGdXWITc/UOtgaw/paR7iyGpgWnezIKxCpHBRjyxpT0=;
	h=To:Subject:From:Date:From;
	b=CJYzXq/Dxp8VI6bxDyRfi1PsIixw56ciPMDYeisFgz+PytQcl4zIa27YrbZrVAitD
	 zLwOrlSFpY/Yha3vKzUsDJcM4uZYgP09fobQa0bMw5i8TKgHjnyZX/JjPY77jPyCdp
	 2CpjGuBsAvEktsdEO3Nq7HAfmFQo1RNLGEoYMSuGDkKbo70h/XFF8h/u3U78HKWeP+
	 zDvRmvbl8Rb1VOHP8Af+2wZNP/skf2ZEtpVha1FB+jUpib1TZ36xpxqcQVFdhF141A
	 x4scqYHr+uEpgNm0iKmO01TDEpCo++zdDYihHkibd3mgVptKSmw6kjk1kEDWgXHM0/
	 /Bztxez6IfqNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F437C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170587849636.31667.14575689942162809465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbfe334b631e989777dc7fec24a5e459581f7800949446e20db61b5a0f36e96
Date: Sun, 21 Jan 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705878496
