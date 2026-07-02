Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543ED318BB3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783018114; cv=none; b=XzCtK9hB7PCLOaA8cgGpB3bR636VQw+G/j8gKZDRRlEbrJrOE+WUV7yFklyH3OlvvXHG0+81Sdrt6R8c33oN3+1u798hZppA8rGa99aoNUxHW0TsEAOHmqxcswBcG8MdbvEWUc1IN4bxzrNIxbHEtQGSXHrMoLKY682EFDy1q/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783018114; c=relaxed/simple;
	bh=ypCqkiHMdeIp9RkUVafaw7QI3ygh/0W5T0ZnmCZAhV4=;
	h=To:Subject:From:Message-Id:Date; b=ChSMVFKu/g+ANhj5Nmv2QgK5crRJOBCG/M10Vol7EyK3uXv12Lh83Oub4luVrx/kPk6d1lVP/czeGHNVBA6M9O9CY9qLBoPyaN0j2uGBhr0HQNhHGnDss9skQNaDclUadg8nleC3gOOjhkbb/Z9OkD1B2FlkfCOKKr7rZLagXKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXAlMlr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXAlMlr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72EEC2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783018113;
	bh=ypCqkiHMdeIp9RkUVafaw7QI3ygh/0W5T0ZnmCZAhV4=;
	h=To:Subject:From:Date:From;
	b=kXAlMlr7Immx5ei7kf5YI5I2EO/NTT8YjNRXWyzI59Xa9tQhcTA7eIqJuTR2UQHOV
	 HiTnVZO7aKMMzUemnezo8mM5fSlMDlxG8HQwgwy/kplzqGZcLelPCumnyNTjjrW1+4
	 qH8BPQzvzqI7A/C0PNkakM7DDwuESsYF0M5Ugl9at0JF94R5X1cfjp3HBKP/57AYMi
	 JlNX6lTYSNDgh/lB6GwitZdY0IEAj+s4rdfpLELetxKXYNMs3uw12LT0FGb8aw9eIA
	 5d0OisDF2joTyQcQ7s4qT5LmHKaY1IQEnU2IB8lTTcz8CCpoBBul2qYyus/NAKmpCJ
	 hVs5Lf5WNGRrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC344C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301811368.3196.13928567530154875185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63523a6e09686d87b3b3e11a6f84b44bc31111b8e018a77d2c26ac9f5b0316a3
Date: Thu, 02 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783018113
