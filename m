Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E57D20C029
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753521594; cv=none; b=Zn4+8lOQpBi/56dEQZxRzdffvWnoa5okE8r+Tx/rcAUbcZHZeZqiRBafAoRNveEvxVX2YIjgoElubt3MQSfwHzX5Gt72xiT4vJwBLWpgkP7yZWCj42L4Y8Mev6AfCSQPOxksh/vDZ6IXw9GvUDNM62z0C6wUV/ASchRG9p7n9k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753521594; c=relaxed/simple;
	bh=TSvewNH5YsCkA8O7gk4GU7Mr+uXHf0JxPJG/BH3NJ8s=;
	h=To:Subject:From:Message-Id:Date; b=Vr/yrnDk0LKzB0Sjgeb80s0rCQU3NmRarIC0DOaoC/BNNXp+P3xKnXqPUl6f/7V+Y5Gd/iQ+pjOcHLm2NgmsemYuQXN0TNyi+i9uKyx+Wj7dGlKlbhbtlORCtOfEw7QuDNInSufmfI5IhjmsMNHkzYQiiGPaICzHXVzhvui6o2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UL+PD5a/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UL+PD5a/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3189C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753521593;
	bh=TSvewNH5YsCkA8O7gk4GU7Mr+uXHf0JxPJG/BH3NJ8s=;
	h=To:Subject:From:Date:From;
	b=UL+PD5a/I08pG1kt17ewFgs66WcwigriTReWK/nHP1p3NDJ4DqfPIUEmeMhdIQf20
	 ZupW6gJaSKdF55iaNZq/1TyRbbMT4aw7lBfG0k85NPbYhfFZ+lzD4poTqWjYGHGrGU
	 c1pr9I3qc0VmcE6kgscsMREjdJNbrQ31kTwiuQDNnxfvpiI/mCnFk3tth7vSowhIHv
	 m6CfZHnQj50ihOJ2cq9yoHGFwH6cr/RVutTZuqa0XvVHRYD/CB1ZDiPCUz+wZMNtDp
	 nk+UW+VcZPOtBmJzZyJLATI9N0hFBZjJcf0PB3WNcq5THIli+xYOsZI8avO4Df5vti
	 1GeH7HO6hQnfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914AEC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352159357.1482.14781140146925324814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d911936f9aff53ab0f1bd908739d4ad52a0a7b217f7c00d238db7756b380df
Date: Sat, 26 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753521593
