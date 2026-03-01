Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAED7430BA3
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772326493; cv=none; b=E7wsRrCIW4q4xRPHNIh/75q55XOheHj8WriAnwrwbfAIiFaP5xT8b0DccRi9WWb3EKgAds5oXW61yLvj63hX5fjGFOmYQIUW7FQgvtFXSo1hJz8Mf4lJvBqysqAcTw4Uunne/QgHP7TKOI1Tk6brotThGAJEwrHdOtwFv9iO8Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772326493; c=relaxed/simple;
	bh=jN7EfMWqrjDVUFM6Rxzx9VG4gzc+K0M6howo8jjdpIA=;
	h=To:Subject:From:Message-Id:Date; b=n7Wp12cfEN31bTpWQetmj9X9aSbBtRNXIgLBf2xI/XzGzA1CR9zzN7zshDuceJmOzONs/VsMOkztab6ObUnVMHaSWpNyKLHrTECdYJ3+PInl+4SCY5PM+NzWlbMaAOnalxB/x7o6Aauugc87oAK5YQjECBQLAEWX79dgERnlzhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCSCk0Kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCSCk0Kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE013C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772326493;
	bh=jN7EfMWqrjDVUFM6Rxzx9VG4gzc+K0M6howo8jjdpIA=;
	h=To:Subject:From:Date:From;
	b=ZCSCk0KzOvktaNJs/jJaWq61xKbpu7Uscq2vGoXvDYrdAqtfDwZIZxQKvKn3uCL5o
	 jFAeGNnF36WRd6dG24PSb2Nc7t1yjNx05ZyoFd2c3wzn+IHQRrNXw4/yxstNWJhG/M
	 oxjN/VXa48TtwhieA5+5TnmS5bqNsF5M9Gyi5s4lKZ9jPmej+wLYeAAkQlvZcveZgE
	 fIeJf8jSQKOXAocOZQTlNLMhW6qe+YoSkjy4Y4jvZcECOLo93N4Efqh5KZTndXhIBq
	 Xr98LkcBTIbN+6JA+uc9lNIJp7SYL9RbhHRMxfGEqcMBbIvmdqJhBKEnu0B0itnjbm
	 aXBx7n1DsCMhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A954FD0049
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232649359.26281.3414866016303721316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64db92d114602168e5dffd30955e9f96a6741811f1327b167aa3b5d5bda90cbf
Date: Sun, 01 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772326493
