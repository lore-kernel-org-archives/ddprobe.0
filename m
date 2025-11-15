Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6383C1F
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763173794; cv=none; b=DxV5FVJj5uWGkGZZWtONbYbPMjqxtcI5lKdviy8y2F4NGdnsbHSgHDDKU1+T9QIegjmYf9YnkytZiJKP7SeQ3Wj+cQ3XdXezXeSVdCC1oAK+bM5AqVWl0pKAS5gZIHt+cAnKNwR1+0e3jEvCpg5pJcpOL/K+eH15UjYEeQFYZn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763173794; c=relaxed/simple;
	bh=tYb8hAB8XB7Cw+IkJN4z1eFcN1YCJCRldWwSwMeJH9A=;
	h=To:Subject:From:Message-Id:Date; b=dt0dLt/ui/37Se2fQ8fHkXel6gSBqGeT/7DPrKtJR3SaruWRnbQllmELjZ2MNN46pLBGQqus+QqhowcGn2nDcYA4aDuSnlIYymLAaQ1RLfAo9aA+sbUJb9EQ8X6h/hJ6pr04gZ8zw4KEk22pnIouann63L8I4WXYyYtJn5hmaX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f57nB6nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f57nB6nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A0FC113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763173793;
	bh=tYb8hAB8XB7Cw+IkJN4z1eFcN1YCJCRldWwSwMeJH9A=;
	h=To:Subject:From:Date:From;
	b=f57nB6nqCwfnfM+UyZ1upOpJ72IHxKUu8WBal8vd4im+aQ2vf/my9WGHt5JtF31lg
	 JxDtDT+igfAMLJjKS7pxupnbW4t3ZMuuOrKOtGP6d4Vnk3rEVFVe/oEjzylGiJJ3f3
	 A4m5ZpJ2vMw+WXDCxN0MisukrzfNGLRaYBuB5UmkoDFnFp7fbNTDxQ69DXrMomfFjX
	 2OQ8xFHuTptK9WX8rrm+xWDfMt6viGaFj7DuhiOBaHvG7UlDVD2LEIBfGn7Vis7na/
	 YICXUe54SXds4DoWVrymhUssQ4g0pmweHIAIKqEB17QZDuo5cZPnSO0ELZ40jzqmdE
	 3AnFfZjVKMUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F47CE8D6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317379375.4184.2167653905542025822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c840f463ce597d19f4694c5e82617081885b9ba3fd876953c8ba6ba0523cbcbf
Date: Sat, 15 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763173793
