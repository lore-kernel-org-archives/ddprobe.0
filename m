Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5D321C9E1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751998194; cv=none; b=kCSjb2PkK4M5HP7o7G5fpDAPtCNJPdbUkyQK8CuxzsOkmx9Be2uZCBnhA9+q6wQaZVMsBEoSAPJ6wN/vP6VQo2tb3DcZ+iPhuKRhwHuakJVkfykTtUlBWVIZHXj9B7yz0n8P/Qqda/z71H0F4CEA40R/xoE9HGBkYKLDDN6Gqq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751998194; c=relaxed/simple;
	bh=WhXWi8wXUWc7C6WMAj5Bq6naTNhcfVfn8Yit9eik1f4=;
	h=To:Subject:From:Message-Id:Date; b=C+VG9PruoHaF/12s+1CV4rcBteJVw3omcYzUlLYlTwZCk54d4WAvG3arZPjZJAuiZuXBhTrVIlaav14O2ogx2aylfqrVHdQZrvK8q+oxz3Yn8jBO/7ZEW95usdFZZU6EcbUVr48SjOX+gc61RTbxwDruoSR7DHbe3hb7ZtwiiHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFUUzM8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFUUzM8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B1DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751998193;
	bh=WhXWi8wXUWc7C6WMAj5Bq6naTNhcfVfn8Yit9eik1f4=;
	h=To:Subject:From:Date:From;
	b=iFUUzM8XmR8GJ2cPcuUUtprCBsmdTUyYAQmkSeLLOVmpt6+XDSHshZ7f75LWI5Mbx
	 +BA63F5Z+6tlXbOYsfurZD+jaHw5ecmIsOwiJ6oau+TNkt5Cee8IZOfJJYW6rh8HAm
	 QvG5y4FBK8Fj8LZHKLuBDlOjPPiSwx7jDdGQJriWfQFCY035sBTz4RS8Z9xlsq8QS7
	 Aqwa6BeBOQerDF9Q4wkAHD3hjiXXCVI3050SnjoC9CgqWRGKuEboHFgtJ7N6I5efhE
	 uGAdxQ834a/KqxQ0oqNc2LOFIF9JsXuoeJiSRwobMqfObXrP7bzIeitzYct2xgByhc
	 GqfTa0R0RGpag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92106C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199819359.6023.10846801548097093219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af68ad1887ce5ff8b21b3f5af35d9e9a29b6fa9bbb24eacd90cf57083c839e8
Date: Tue, 08 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751998193
