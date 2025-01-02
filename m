Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B41A125D6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735808154; cv=none; b=Ho1kAa0RjFBafdpIks8fH/DJSNa0uVSUQqaOYrYnalvQOYijUuQzaNy1zv7p52eMywtc2kLEuxwve62KvadfE1bk49YJ4ynm2YCn7zcLmTtQBTXA9adxeHXSL9FzwRu4vcJeIctbEDyaSt9vjO6+D/ok/esggx15dNeJiL/fD9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735808154; c=relaxed/simple;
	bh=hPHapv7yKozIysx5FQGKBxCWn1rm+yzA9IyVMp1wkKg=;
	h=To:Subject:From:Message-Id:Date; b=e4L8ufNTdVwckJkhtVi5JvVgsoiC4zk2RVLWBgge/PXM2oMyMgJcg5C0P4E1y7bUCfII/U+UEcdRXN4dsFAXPFkb2PFGuK8RzRquV5oVce5GITukFgimvn3SPW7QkgrsnwcYbZ6s5tb5SaguwXn+Dehyh0SSPJ6TriSFX5sUrRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbxK0n5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbxK0n5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1C4C4CEDC
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735808153;
	bh=hPHapv7yKozIysx5FQGKBxCWn1rm+yzA9IyVMp1wkKg=;
	h=To:Subject:From:Date:From;
	b=LbxK0n5ZoX2pviQdo+VaBSsYhX+7dWupWSrKCUlF85+vG9pkveblR+Dw2vGYK88EI
	 XP9JPlGpnqypfXECLWWuv+61WIcZBJBEgKOkGv8lVqenbUPzI6soPKsNspsxyHQZZz
	 yWJLjzn5b2RLbXQ/YYwMGpjPUEKaGNffZqN4y8V5maCbGbH6/dyLCBaGRxpvQi21LT
	 ikit4NFn8BP8e6xLJfTMSb5Inuoew6/VS0tZ1MyMN7zHMNXo7+GutSrlH+dH86rIWk
	 g2zqi9XGrSQCBOjbNv2Reev7HHnCsQ+XxIXsH3iwSOwgrnukO7mxUrC/wnBQNqr3ea
	 wy4rwAxdHengQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7DAE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580815361.29631.13427623939414185494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310b7292dc6068a4624174eb64b8d76382adc4332c5f496b6764542a05f0f4a4
Date: Thu, 02 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735808153
