Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B831922C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724440554; cv=none; b=Um0VfGeNx90nVE00+AYvdEVY5m87K6i1y/bagURbD9nRHFcuvaE9DA8FIPTZju0LlqKzGccbDkxPZr/2Gn1DQoZxRA4FVVZgZ3Tdh87LH6xxZBfQuWgGiygO0d5fkDxRnRCJr3PDCVeYkVIDztM6ES6PaR18ghpRSTwPS0QYtVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724440554; c=relaxed/simple;
	bh=vhUHbYEC05rRdO/Osxq5emmpl/3XxkBfraRPy53L+lc=;
	h=To:Subject:From:Message-Id:Date; b=n0fkiMkl3dmWrH4OMEfiLF52ryuzCfDah/1YPw7LHFgFlH800HeM8Adf5QCvBTItubTPhfioS8Rg6Vdmrqfbsv+KD7mOOQlgLqlv3CH0j/bzs7phz+NNRP43YacqeKQKvypeFfDzqsrSo5a/LkJg3CdCj8EkaQoJnPpiD2VNUh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crGyFX+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crGyFX+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C8C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724440553;
	bh=vhUHbYEC05rRdO/Osxq5emmpl/3XxkBfraRPy53L+lc=;
	h=To:Subject:From:Date:From;
	b=crGyFX+Rx1/X7dQcI9MyVY5cFlGP565RDUA76sq3s+cqRV2dbO669PPsobLalwh+n
	 GdISCEsqjInuwe6fLo0B5hnESna5z0W2COgTJH9xld5JnUnwi13vI/4HGiQUh0Sph5
	 5a8WMr898Fa6oP8UCh70jnVdHlbXFs/obku5UnjqrgPMLpWW10/DLdlBh/vBk6589V
	 yiZdtvgyxW9RjDKW3k7TwkTH8rlsIGdoanH3KcNe4xRIf0ZtUcGePi63SRyJyZ65Xf
	 s5ip9/2M7n0PLwD2LWsrzEKTbyTpSIDeEUrVJLgXOgMAI/03aezEbogzKLwLc/gyyk
	 UfP4OQuwoPOcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91292C5321D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444055358.13764.16745116593727768953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce36d190eb87d7c7e009d6f64894c0d95f1466f7b51c59b5a2638b03d83cecb1
Date: Fri, 23 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724440553
