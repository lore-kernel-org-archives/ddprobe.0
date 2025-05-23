Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B8B7482
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748041194; cv=none; b=jlTE7mnbTIWuwS91XiVF784rQRcldEJGlMmE3bGotsvZRzOPSzhVRY0FQUX82Ck8UDhB7MrfkN87T8jrqbdt9YJn4POmASMhggOrh41Is8I8+vX7oN7OyKj88qJdOGmZVAV3cL30Yr9RTg9JN6PEgjbolyWngX2DmRgUW9eKobM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748041194; c=relaxed/simple;
	bh=gxESGKgRMJoi6NkRlb3E92lzkq+NsbvhI3qlfdtTkXc=;
	h=To:Subject:From:Message-Id:Date; b=WCI6k+flNRZhXYTNn1/OejCjAdP3oixKc+efIpOuBQyn3OVKRWdQHh76LsDNEJF5l+dYqW4ud/KtX9GnfOtyXwtcI83OcyKxduDuIZiZrd4b0x9QEUgtnYCQSaQR3rUcPpfFEJNB6PwAUQzFird21UE5xVh3Bcq7s7Zq2laFD+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7NzuBnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7NzuBnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B432FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748041193;
	bh=gxESGKgRMJoi6NkRlb3E92lzkq+NsbvhI3qlfdtTkXc=;
	h=To:Subject:From:Date:From;
	b=p7NzuBnVhTzrzMSDT2OSP6pM5FXVuBVhDaf5wKe/Qs8J36Ilth5QzW+51QBW3hvdx
	 7y3AtluWx019HXa9HZDAMDoB4PIo5K4NZvNYNgAZ9pgWbVD4s84GfJUKCllx0yc1hK
	 DuAZShshUdt4fgr8Pv/EKeUzbaBlx02uWnBzP87s0WQfbl5xc+h/VGuUhQGomizW7x
	 UD9fI5gmgpfB1SIO1iO1f/Xv+A9deowqA7oIlwrCFzmkTfH4cHKj+p9yKDB2sqzQN3
	 np54ws4nFQGxK8m6U21uZ7ROctdJjA2N+wQSGlBHl9x2jnfNIP7cRBFfHWepdWgcXC
	 rVGTOlGQf3VTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A126DC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804119357.9423.12707176833801942008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64619cd039f250a6298aeb8edf52620015dde20ea19f9629ae3ca4ffb3f24f1a
Date: Fri, 23 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748041193
