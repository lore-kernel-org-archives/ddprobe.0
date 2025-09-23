Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAC61F1534
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758638995; cv=none; b=uXSFiuBW1RbykR3PF10FHvX3XR3ucnaL4eB1G8+vwfzK5SHK/1flsakWcKch3XMPGu41gSXD+AuQIfrXFQx5zgh4aBe943jFYQumjx7JuYrge4fti+I8deDpzpKPOqwel8TSD+qAhhuPAw02K8+TUpziMcnh9wNBEA4UdHtodU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758638995; c=relaxed/simple;
	bh=Z4jCMI6mszalA8UfVLLTf5o+gaOD5TFEZ0OvwKednWM=;
	h=To:Subject:From:Message-Id:Date; b=T5V51f8tEBaVzJWDoKksv893OaN6AF0b2ghh4llHhF/uqYdb2NLrbQMjLwCGM9XFLeQqTNOW0Rbzwf7AVQje6XTkCOuBn+yQbNTy0bWe30ZcBTBn4ol84HT2BcECGybk64PPvTRAVfgOdENfYNp7oPcgnvkCUQIv9aH4fB7crDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/ewcHa2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/ewcHa2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D54C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758638993;
	bh=Z4jCMI6mszalA8UfVLLTf5o+gaOD5TFEZ0OvwKednWM=;
	h=To:Subject:From:Date:From;
	b=B/ewcHa2fxse7uu1Kvu9r9BJmXCm6fh53RsZW+r5rBjVj2A+n2+rXNTuCEoK8gcIF
	 lYoC6/TBOZi88noku7fU21NPIPMPgoJanSJU/Hpj7F1HW0/20oQwpf0Ilp7pgrZX3i
	 Gf4T6CPfdbftrXtCk+MD9oVx4ZVMZnkBwyhjHYG0MZ7GPBloxDosxUxSD4rXowQwHn
	 LJr0eSeAamyYUbNriHlLnDzwhh4/QtCMBmOpbnHHs/3le9buGM2I7UAbiVLB8oKDDd
	 tYukM7DsvGMZ6G8r7CAyZDKDtE2eEWVipj/DMb5ZdaRUnAis0EE8P/kkvLnm69zAkd
	 kjvjTbaL/rm8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90263CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863899358.30117.8063000755864094403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06d0cada0783f36a3f399a5bf51cd01c9dac79a30f214271be123112907d7c4
Date: Tue, 23 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758638993
