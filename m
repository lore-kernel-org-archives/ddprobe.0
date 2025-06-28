Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE00214A94
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751125794; cv=none; b=jHYYEyBQZhlwKaB6lZU29Acyd7VIU4nv1WGvRT+5pLn227tuy0tEYvZZay6jwLmgnm77I+vfF6JbyctO35u+q7tcUH6+7KAIsbQcGN13FUK6V41cDlgXZPWIWiG+gviOAPWlPLl8qLRezyFSGbozxWF9Yc4a8GpBAxX8DRz+wZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751125794; c=relaxed/simple;
	bh=hkimlc02fm8ktOdaAE9oILb/+4I9VmiRbWuEs7Fmx9c=;
	h=To:Subject:From:Message-Id:Date; b=FuZlF8EOKPWLC+r8WdkKhCr77BTFIqgAs88+z87NVIYuAg5gpo9vXqN5RkSkmt7RP+waVE7l9sB7KzSVxJ98iKWnnzZT3k3nmycWlI3HjCqiX3qsVldozsX5c389Ic+IFbtC2TqyA6BB+zHPDgKsvNoNkOfrzAvHkaOZcg6Tfa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOk3UOmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOk3UOmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85D3C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751125793;
	bh=hkimlc02fm8ktOdaAE9oILb/+4I9VmiRbWuEs7Fmx9c=;
	h=To:Subject:From:Date:From;
	b=aOk3UOmqbobCGfJ0hWQ55XJsA+/fIP4RiKluAq7Qzff9uGKN3IR2pZq2/4XzT+bAl
	 KCWTEbQSrIa45q4/m7hPJvO9TEE11HDY2cR3LcP33DcUtt33OUxm55AOJzkBGG1vS3
	 gJm7yaqDPm1i04ELa/Z6ZnWVmgV6F7LrMyfOdC/zIhGKe9jmNn5OmeGgPNsTlTipSF
	 oNu/7tRN80TQ7n+wxfk9pchLhjQb1RgMLrawAXXrzIeJ52kYlfBWI8RFGCVPOapMF1
	 oD3uD/WAFbjXuwxv7TUf9un152jbVmsPW5cjEEIxVXSBWa99ouv/cpauKESu7/VRUs
	 4xZnm9ngBbtdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CCC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112579357.14373.9020069699990187913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef53e13ad7a7bcee3178afee46a95b99bcbb5bde00a0bf1e9d58d7b34fc7177
Date: Sat, 28 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751125793
