Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FE544D685
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778843434; cv=none; b=UnI6leyMHG0YsgsC2ZV+YR5+6skenDb3NrfXmA51/wfPBkZa6Ug1APT+Xs2NNUweDFtjF+iiVJTDXS+KbfKjNhUZ1Iijj4ve0njJYB7CHrPC4DXrRP9ZLx1UDO6HiNQ1mC0bFYn2BoddKsWW9y+lbDi9l2q+Wz3ckghCdpSbaM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778843434; c=relaxed/simple;
	bh=zlTrBgB9FKOOL2iUEl/bXuLVHloIVjFD3xuNGD3bTKI=;
	h=To:Subject:From:Message-Id:Date; b=kjaFTnJAbm0p0Kx+fnzGNVGsrwp4PHVeEJ0KaTnMrrue3e3OoO85S7U4ORRqkVfnZTR1SKexgltJ6opJXC2GO2+8Ww3kS4yWfnw0IJjoILa8jo0SZNFlXRWNwy4AGdMg7TypJ35cW3VrCZjI6pe+pcgHCIqzy5vCtlN2a/zXVmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUYdroIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUYdroIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9407C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778843433;
	bh=zlTrBgB9FKOOL2iUEl/bXuLVHloIVjFD3xuNGD3bTKI=;
	h=To:Subject:From:Date:From;
	b=tUYdroIQDArBbmqeeg8nIgSEDcouU8UO78+SXEcLNgPLcfETcqdFETYdNKZl+xRL4
	 7beQdWj9U3XbrUSKU5MYa/RBCUiloptvVYrbyHDUOZDIJ7LkcVA0KvUxC3But0Zwav
	 EzVcHxuu8r8HPrSk45XgUaBCRwxUyXGznIS0uu5xQpyevKaMXW8e7vMMBseY0XexQU
	 Mckt/sWbRCWN47AYxs02b7D/CMKwTJNN/gWhW+BeUbl8sa4n1Uj/5y40BVe4s4+x9o
	 k2hDGbnDx5YXgph+U/p2zzxx3wYddOq88U/dlmn21rzrFQQxigGC2oxwtF9fLKixTJ
	 g9XTT1GBUQFkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B038ECD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884343371.6990.8277876012010521667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b22be3c1c4fd63f596590773f166556a4449b65e3b5bd2fbbaeb2204136997
Date: Fri, 15 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778843433
