Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8F8134AB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764373974; cv=none; b=CN8zZkvQnJ6JOOLfFvQgny9/JVksjEv/NOJ7ZrVgPzyricwQpr8NFlDzaetlaYds0paOvhnn+oN5DmJ8Rk2mc8lKuyi+4V6bJ90PZF37dnOUcAVyJaJFB4cAgWgZAzz7nVUZEzM5BRZ9okjNECVpDMEp0WLzsayq/tcjDfKCH/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764373974; c=relaxed/simple;
	bh=+YO72uHrtHH/Jq0wqiyvkVyYNgM3dpRRkXFEvewocrM=;
	h=To:Subject:From:Message-Id:Date; b=qrUz9refTkLEKjjiE6xVNWieVC/F089tEt+r76+FxRjE1S5VcRhVmYQbQtZU8KrVGARjnRB3fIQXPzoCj6Ygwwkk2wn7Vy8Z9oz6d2HV8iAIXTc/nkVI0U4jVCVgRDyTDdDhPxfqPBe4Dk7vfC6MaTT4gNnb2WAxzEQejXKGD4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vsn3VUfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vsn3VUfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A95C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764373973;
	bh=+YO72uHrtHH/Jq0wqiyvkVyYNgM3dpRRkXFEvewocrM=;
	h=To:Subject:From:Date:From;
	b=Vsn3VUfWI9TL6GxnWh2Xs1UUBaOofRYnwpYftQ06agcBi35XXLUDKZCcFNa4JiPkt
	 5tosDiSsZEON8UohZ/CQ3jW1Aq6AzCu1wm6ULPezO3jhGSevfi/CTc0+AS2W6AzeFj
	 Oh+VzSyXhXf4M08VH9HExYx6fRPh7BmbD+aXzwFKXDvIm/9aNAHNKHEz5zTPdFGaTz
	 8AwLbgKWMI9pSjz1cL2YNev1xS7GxjGBR53K1ClDPEGfi8BhX64YirHtpLU2nNZoVg
	 We4eTSziHagGdzBjXyILeH/Zd8Ph75D8DenZuQQbMdeHkakCRqAp0h53BXSjFovfLr
	 UGeeXuw8+PLtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE7D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437397358.16114.3930304357174947306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd01cee08a751f96d747a5f6411ff336f20580d95e7d7c3c4a771cdbb4eb6b5f
Date: Fri, 28 Nov 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764373973
