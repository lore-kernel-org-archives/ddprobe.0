Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97C12F5A34
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774539293; cv=none; b=enxgTJVoxd413QCOtZQjliHug0LttQ/c6Lhv9od90IVGsImDu9lIKFpcXR1CyHks5y/Vsai2j2fYcUkBXLSKczVPeYuShDWgborDj4EKirp7dydqmNnPCQ70oukR0Dx2YRFcE60d0VQBItbUuZEwSrlp+1HzgSaQMlE4NwR+0TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774539293; c=relaxed/simple;
	bh=LkYVK5LcCtBac/7fgv++GVLYXqysGlg+7oHTfJhst/s=;
	h=To:Subject:From:Message-Id:Date; b=AQOZpU7M9yOe0X4IUlvpVSFQHim3Xj5RrNVmPKS0SPadmS5f38ShIkZilz8OZzlCVO/TWhy48m7SO/VoqQM8RnyeknvGx+8fW03aSQ50lRGmm2ZUPxE5bUSp3FRoGt8Jnx8wYdye2SNxiShJQVv/Dfvq8oDKZ8S2gMdEAhKliwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE75/sQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE75/sQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3374C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774539293;
	bh=LkYVK5LcCtBac/7fgv++GVLYXqysGlg+7oHTfJhst/s=;
	h=To:Subject:From:Date:From;
	b=DE75/sQ6TlDPo62/13+IV7EHP/NLVPI2GUkon5chB5MGbTvAczFEW00aQdORnvVcF
	 SKj08Ywc5x7Bu5C12OYBVftObtwIhfaCpOMJ728eqbwSkah8r0uXJ9vWLMdCzVfwbP
	 DG74oEhRvCJErva4VgzL03IoIX5q9Iza8baQijMNYZcS/5p03JEHmlWpi40dVm7M86
	 g4k0rF5aZHDHbHxLVwAnjo+/E30Q0eUBVvZ9rIWmfDXs92M0TS26Yk6WEAatdNacuR
	 9MpAWe0rigNWEJaJHXDuV9gMAOB3Z0qgWXBR0LUmgHY47k9sWFEgl5c7DOW5WvFFFo
	 Lr84nyEtHrMwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F310A88E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453929359.20997.4614244290040916138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61622afd5ad155b579b632143c7f337d816b5f7c5727a65d8b9c9c865bf7f85
Date: Thu, 26 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774539293
