Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2F7E56E
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727023554; cv=none; b=RQxygDy6pnzXHY2IB95DZ4Vdn8RzNtaQcwPeWqNp815UXoQrsGTTMs+CUCWrixiqeEaYwH+T1o0uEQuuJTw+wh+1Lv8sp0swFhATf9gaQDiekVaQxjgFYYuvgytdYCXRKJ13pS2MEGnG11jhaxYpQkSmQHzzZ/6Zxkh0Zm/oSOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727023554; c=relaxed/simple;
	bh=/lsDoPe6TpxTG6b+39AYBtj0OK7VPrUYf8WRIV0tDB8=;
	h=To:Subject:From:Message-Id:Date; b=grSCja8o90N2rpQzhn7hSTVWT6vTPJc6jI/acV5JGKG76O8/bZNvVyRz5VPXt3rK4PrdxRAWKcQfrqRZ3l4Ha8NBWsf5HghYiPr+b9FXqJU584xHXTqzFZvELF5NULeIABnGMl8v4VJ3EFlANdkafGdRk4iUOmm62go5Se+fvI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKn/xRWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKn/xRWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9767C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727023553;
	bh=/lsDoPe6TpxTG6b+39AYBtj0OK7VPrUYf8WRIV0tDB8=;
	h=To:Subject:From:Date:From;
	b=DKn/xRWO+caGooiRPj2c7X0r5wVkCY2lFvhlixFMLYPWlD0HdlaKAjV0ViAI6e4PR
	 LF88h0cnpVwY5/Uo8i4VFERRSMLG5Iz1vskoHNtqyKw7xq2kqsMVhTrzk1C6Y/FXfs
	 5RHsmO+7lK/CgftckbPTzXNxFS3ykV+Eo9h3I0SX2ZlEHJI+NxPm4wh73t3jzrHj2y
	 pi/dxtOKgYQ3245S84bExQax0VIPk5F/tNen3KU5VXY5iL6QBbZjPLNrhEN/jRzdrG
	 Rx/xnqJjfgo7zMsTmaWc44aPjdG+Cr0ec7DVy2fizJt32UjgMnysl55bDjRSQo+6Fa
	 GUa5BIwmxI4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5317CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702355366.11266.18201610773761404368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc4d7f2c6811b9cca1db99376bebb99f72d2ad56bde775352f99bbe8538957d
Date: Sun, 22 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727023553
