Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D3F31770E
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755449394; cv=none; b=Kp0MjVGYbT7fFYZga2GhLQFVH6pVrMBTOtxVC3VqNqyi6Fm6Dev33ZVMOMewlAah4UsabLagEE6hPnk5w/JrdtGX9a+PVmYoWgzie3GkKC2rtMygwlkltczykQFfrjEqvkYkQQdU5ze5M7++Rao8X0Ry/dGs4NcTbMb3YR16OHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755449394; c=relaxed/simple;
	bh=FTJTkeJ2lZGFflqbPziDxpURN3bN60alqYxGeU4GJUo=;
	h=To:Subject:From:Message-Id:Date; b=KvARqyhkpzqCFV1+JvNFlXwxTqmLJM3PVl7br2iJM942OlzbOC7QD0VuDKP5OixDLz+z1/d1F9+AueeaeyyuucTP4V3YGoiLrMs2pP0AYO+z0ikEtr855KOCbaKpkFGcY6BM51xDIvUmy30wUCzdPUilQw37eyKJs/5sbFeUvC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJDkSC0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJDkSC0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0461C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755449393;
	bh=FTJTkeJ2lZGFflqbPziDxpURN3bN60alqYxGeU4GJUo=;
	h=To:Subject:From:Date:From;
	b=SJDkSC0jU5WxetIyvj3UfJk05oeoSXqiFajeaapF7/OJL3XbSAhZl1yu9xc4rF8m/
	 HT6UlBEWMUm3viuNt5AN/Taz2SmoWiCr9v3Be4NjvvrG05shSJtcns5VXvR/wKYLXG
	 I4DIr9jKDrPEL4HEfOtXktxlVRpLh9I6zOuruelG7zXO/6BF3XyzkD4Sln4yr59Fsk
	 8x0q9Lr2EA04cbf4QERwWak0q1qqf5PfMoZ9lZE1XIO6M6gFanIJjvVbN0VwSKfQ7d
	 tRAv89ZAxVBxbMoHaPPc6VpR19sf7jbXhm+FvGQnUdJc9o9dSpHOkkxNnJBWUdpUkN
	 XSa8evM9FGuiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0EFCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544939357.28186.6058316697009747987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6409152fd1acdf8035a5c335822e29fb7a89456ca7af58eb0a9547b39af1dd49
Date: Sun, 17 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755449393
