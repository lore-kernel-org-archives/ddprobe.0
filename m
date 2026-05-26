Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338AE29D29F
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779793354; cv=none; b=cpMQhYhCtFFRro01uzwrXeg7jLJo7RoHlG/BqZpQB6mtzaJ5HzaNh8OYQ8phJlFvbqbQCz3qMe2XKKkwGrUjS2a64rNy2wCPIK6YHNhq4dP9TtL+VKHdzIrn7o0skf7EyWmwgK5JFibstqQ4YhudrooDhy7u3xr3AWu6P2LfVmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779793354; c=relaxed/simple;
	bh=fxk7/uxfaoQR6RIuz4rPQtgnWu9OtMwP/ySbMN6dQn8=;
	h=To:Subject:From:Message-Id:Date; b=RCR/aBUvkzRnGubMWotl/+V9uDLCqcRYIF2hXAA7ZpH27nRKnluy4l0ZbP3WQTz+VmSNVD8Fr3TJrpUXthH9CvHM3Xfx/gKof0/V0N5FeRAaVDdrNSN4qTsCaaaSHocIhXnupLwL5MHLOPx9usUOR8YGoUWCLVj3W4h4fDlIH2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEbsuJJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEbsuJJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA736C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779793353;
	bh=fxk7/uxfaoQR6RIuz4rPQtgnWu9OtMwP/ySbMN6dQn8=;
	h=To:Subject:From:Date:From;
	b=DEbsuJJcT9MAhz8YhOZqnwkDXYpiHKuoNgI+gdKwNIGez5YG/QpkwqA5f/WObdjy6
	 4N6ofBnSb7A+BXb2epL5WsNnJ2RbHc/kDWaqG8hNo28FhQK6fopMq5mYbw06Qjx6t1
	 v/BvxgMnhn+TA73UJfQG4lOACkyiOje6LQSkAvI3vMTXTKJJ/drBr+5jV2dIbE52ys
	 h5aGVo6Gd/Eq5aeB5Bg2qrjrz/OuIb2d4El/Q7k3T4lVnDOJUG2ddNQqP8afHay6Z2
	 u8vhWoX2cA9GDWSSF6e7HTq7VGlGxa9oRYfulWKgEPZXCm1ipyaSs0yak8bmR48ICb
	 Z4rvV5A6wlZ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF37CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979335368.27930.15674497323822551372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382f02c5f137b17cde024e33f2c83131896478a6f41d307ec302bd968605adf8
Date: Tue, 26 May 2026 11:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779793353
