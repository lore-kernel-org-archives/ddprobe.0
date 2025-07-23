Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7F6335BA
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753232994; cv=none; b=Sz6zrFX60qgEViTsyFTZjB4tkF6p7rO5k6594L6k368/Ng/vY0FO2OJSy2DKfR/JN9uExzK44q9JUvLYViZAYANzuDoOGn8ekkjykDRhUwtMkG7MRR2g3AAQhadQXGFTa1iAlXWl44FkkHjBiqK01waZ0G93Nz8AhxjE+KV9Lww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753232994; c=relaxed/simple;
	bh=704DuPmZZOzPzPimV6vrpqZjvGaENop5rQwvAS6nbkE=;
	h=To:Subject:From:Message-Id:Date; b=KzKOnofxN0NIo+NRVu3M0fjIyv7dp8YPVkFv8cGwtqK20jJK4opObLFJPYeY6k5uHNvtFJv57k8sENS1gsOEAkVW7SfMN+XV5apud02/gqnJr2NwvjGwz8ePDj+knZV/eTPVMXkCPeeMVCMLGDmHj0n7prAYih7+yMW141GgxII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmLsTXXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmLsTXXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF14AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753232993;
	bh=704DuPmZZOzPzPimV6vrpqZjvGaENop5rQwvAS6nbkE=;
	h=To:Subject:From:Date:From;
	b=qmLsTXXU2lbclNQ4QeBw9OCDw3JqHOrEAPq0BHN3LsVx/6/WmuX7BpaChiPC7XkQY
	 Iw+G6id7UcAO8xDFdSiHkpXvP1wxxdgBQHP5bEA4A3qHQVqnjuPCtcQ9wieooyqLSf
	 yXDV4WqZAMJotDvLb8vIk1WJ5j8ejgxcji20m4hJTWwRv9Sm4tavvJ4P8HZDjKYX17
	 7iKicQtjBDAwTdoX4hCGS1j2ZeWtM38wqrV0LpmWxcNUkKaL9WG0At+9CBsb+6czUN
	 dUN3GyH9W1LFC9fkevkQTI5V8ciE9xqpps8PTEkMeaWSauJq+WdnymMOBY5WOp7hlO
	 4mzgfKTNyC5Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F86BC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323299358.3057.1943806530634845969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c53ca578dfc0aefc1cd026704883c444c105da30256f0e38ac88ca5648f6df1
Date: Wed, 23 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753232993
