Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3092A2F3E
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746062395; cv=none; b=IL8o9a6VJLTGPmYc/5Vnl0kwH0q0rd855L7uVTOAz94kXNqsf+PfMhLRjMtXl/KYpf5QbwH6FkjJclbG3Qn+LGMi1aPr//KleO6gERiMrm3RUjINbPzOjI7u1TCk8su6cOOEHu+csx6v9Oltdy8v41+Pek7eEM5dDOe9rFvrm2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746062395; c=relaxed/simple;
	bh=igLKlV3Lu9fCbWVz6dEwAFeP69SuafbGoWPbfhvsKLE=;
	h=To:Subject:From:Message-Id:Date; b=XyYgnUnRMZrPUPCozY6aXd8w+XvgICfoV+iV6EkYlSuFW9X91BxZEa4YfEOxwin6MqaCpE04eLyIVmZmuWIEUm6jY6CW7TavdTjm8dP3sbXY7Xla06YTZXUvjJTBrbpAIVbBSh7qnHhraYiU4v9rEEwbuEbICRq5lXbcx0hOrak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFCbnKvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFCbnKvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70BAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746062393;
	bh=igLKlV3Lu9fCbWVz6dEwAFeP69SuafbGoWPbfhvsKLE=;
	h=To:Subject:From:Date:From;
	b=kFCbnKvGnj94rIb9hXLx+jo4fD66O+A/f+f/V+aRlHfwWgHWx1k8tU6eFZiKJq2r2
	 YPJ/HbrXlUSmwAEVCPO9b+pX33UzxfXW6h6eMM/T61QegvIjjILZ+uA+U6qlTAvM02
	 o2YdeO+13DDrT07nCGWqqqqgr7nvosWmwrbQJ+DFqE+6DkmUnyLNTOFFKGCqo7M1PM
	 /mPWZ+w83X47Mtdk8wc0QWbEd6d5APHS46P1KTRSxKicHM0WWCLbW5NzEwLHQGZQ/Q
	 cp3j3IniyT02RCMcUm8hkLEwNRshmJ3MSOTVCr/JoaCDah2X5CKM9HMKdKNlbeivO1
	 w/oBFB0GU5AyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E2C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606239359.16200.4036383709016284652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c38ad9461eb55b53c0914548754988174796681f851089ea250a97820126cf6
Date: Thu, 01 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746062393
