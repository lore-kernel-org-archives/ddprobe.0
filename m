Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9A67F9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735790754; cv=none; b=oFKo0M5LfU5EETQek/5/guKwmOsbzBeacErwFwDMTbN4c1hhia7Z58t0CQMbd/JDdm7N9ZCiD+p/zP6e/AB9ifFJ45WXz+eZtgoFFqfvosWfQZmWk6ktoOwkMeTJdk5ISw1DuAiATSV3NcUzTmG3VXdUCEGUjV2pDkxPd91fB0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735790754; c=relaxed/simple;
	bh=9g0fjvVvx+7Pt8AGzD2SyaJoA7R3zyjfriB49HTJq/I=;
	h=To:Subject:From:Message-Id:Date; b=Lgba1B42QKJZvE7Crvffg2jKUpU3nWb4u7qKYvqGpBKhU3sLijFS8ztf8SbscmOoCMSSH/EgZiKyPsNbJ0To8zJRTn3Hqaok2sD5kq4DInIsMVrtU14iWbgyA8C7z7oNb4QULMCU4kpkWJhVn3QeBOibQOKJj35rcO6Rp3NRax0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxOW1Hwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxOW1Hwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504AC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735790753;
	bh=9g0fjvVvx+7Pt8AGzD2SyaJoA7R3zyjfriB49HTJq/I=;
	h=To:Subject:From:Date:From;
	b=QxOW1HwqPUxfAMQV6py0zDVAe0lM05MkUWXzDvkWLGxHtvTCP4ILmfWFj24/2Pgrz
	 Hd4jNk5a2MMdjwtW1p+k8nPDywuOx+vtYdvDptVokqPTR08o+FL01nXOzryByCjAjg
	 pBqVnEa97O+WpRT1Vhx4vzXduCfkvQtuEKl0EmzosEHErk0iVgYJBOM/w2t8gZJ/E+
	 e4muyGttn4aysEO4RQY0t+wMXgODlcqpKUcwoIHhOV9w1k83Iek9BouJfK2E/cStP3
	 V8TGISAB9nCVYJokJNYsK4FfpZ0vtTrCyVeEGW9O+4FZz9da04BewPjOozPd4JyyOK
	 yGDWtFYtV09bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E86CE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579075357.395.10201948305048968339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f109e10cd37296118b3c2c176ac03966a2bef4b5802205429a7086c28ba50839
Date: Thu, 02 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735790753
