Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6482CCA0
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708811297; cv=none; b=W6TdkOtpnkCt9AmXnj61OVYaL9ZFq4JlPODb6v7cIdhOrld9XSqiyvOhHtwDaFZh9QDFGNaONMgXdeye+W9m9IECTuuGzqi53kk0HQeQQ6Rl1nARTjt28TguGyVJ1bNNcPVnWCOTIOSJO6+YGd5RbKpaXjvR/Rn9fF5TPqT3C+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708811297; c=relaxed/simple;
	bh=DcUoWuBazzS91kboT8ldCuMBSbOcLXdKflSuAIASFbc=;
	h=To:Subject:From:Message-Id:Date; b=V3EP1Ntd6ZODBA9NqU3cTaPn5AHMkXBHsC06vhgIozkvpgy7EklavH9ex7OeM1wTycJ919kSyylg4SfLwoMG8NZMcAu4GUuX7IaFCgGdxc9/WqOWZEbBceLo2uCfr85BpQ2A06OGxe5u9orJY0R5ci6VoHKLbun7M5q7J+mp4Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+2+drjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+2+drjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 871DCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708811296;
	bh=DcUoWuBazzS91kboT8ldCuMBSbOcLXdKflSuAIASFbc=;
	h=To:Subject:From:Date:From;
	b=N+2+drjM2cJfXorG474sBiSYVBCgieuO2f5SVfFGghLyg99GNaUKhTBVFXsA2Z7uU
	 3v4/JQ9ZL3dj/vfHqVOFyLLnDceHtHoiznLDGl/Cf8QyAfJV50cfw9fL5Qr7QZ+VeS
	 2B/CciEyS6176/vmci5g4GK0jAqs0uQ8QGRiaEo++1IzVcsw+XmfLDs2hfPiPRCzh3
	 Cr476H/kFn/N0dAotiR/kVx1of2YVxpskuQEzNbKkNmfV8fMSZnl0cqI2B2FKcllp5
	 1Nwf1Ndv1TuBg8XyT5eLKDs45X5o86PfsFfbSdrLWVZOVkeDcWXly/T77eIyPYne1T
	 4VKcayvUxe5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66FB9C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170881129639.11826.11210271163269039077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5bdda082b83621c44d89756fba1529f4b9048166bab91e6d85d1f7db237031
Date: Sat, 24 Feb 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708811296
