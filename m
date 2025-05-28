Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC7654764
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748404794; cv=none; b=NNK4v+8xreL+Fic6edwraWgkhh4Vl4/alKY6EEUmPJx77S5bLanEvWk0Jbnc2Ms0wYHi2zahNEoJdXsdNfrf2JEdvsGWYdPehGkKU4cibLfj4vipeBm4A94I8cgfvmSQEi29OQvysTG5IbNn8LSet3rLCxWRiD4ms7uEFlNPCvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748404794; c=relaxed/simple;
	bh=QGSXGHGm6u+w0IySAyvLLDWtiFjvsEuAj/0ZgLeMHk8=;
	h=To:Subject:From:Message-Id:Date; b=iXLXsbIkRP+YJyCReONVeCjLwPl1A106mLTOgKOy4Cj8uubaiZ7FzkSyC7712O9jDoYZELI7W/5p8OnB/caMB0Q+mZorcFEtrZCbH+KV8320NI9KtC2FzKcRct4YB0A8+eg+TeClMJ9QWOxNaV8QcFxUQPItcpvmPVA05Izp1tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9csKY+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9csKY+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748404793;
	bh=QGSXGHGm6u+w0IySAyvLLDWtiFjvsEuAj/0ZgLeMHk8=;
	h=To:Subject:From:Date:From;
	b=R9csKY+cCahltdiDXNfHXMEsiZv7JMEfYDPOuJ0Lddz+EmVLh/GFCXhYznZaMTBxW
	 Ehcb/Td2yXBDKzzctVIRD7HZ1FK2jNkqvl8zb1IkU1iRIB66qRoAFNMrkW39z+IZM+
	 1QGrf1YhFwLgJM+vd4UM9Z955fyczqjWyShQTqVBFdwS2Dgaag5+0Kxo3q6gopyKCc
	 2B6XGNuE5vA4E/nYzfHhjovSLm+RVLIkJ4wtwjNv9UesYN+19sq2HuGDoS8TQVcghG
	 +pzjzvQBakkLWPjwWMHEhKi+kM/NRLRUm10Zv6P74ksVi/vyc/4oG7nTv5qCFXj5FD
	 udTKxYUty1qCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FEC5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840479357.5339.10722825351859326505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da35d83440b5b1ee2d13ec8d15cb69f7097bd3588f9b9601f3c70692683677b
Date: Wed, 28 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748404793
