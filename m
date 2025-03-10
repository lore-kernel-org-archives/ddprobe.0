Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C3E1C07D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741610335; cv=none; b=EFC2OecllXkEtsEgw5BrEweFKeZl8nXSGBwmg6tHJCrAlkF9XBVP5cEb5RhuqX+DEatke45nvOxsedgR2bSXud8luUR2FkC8MkkdU0CCR2Kxp6RaBUg9215vfVYeXGJwDxYFepR3sNOZYs1x0pzQvO1IwxYtfnxz1JXWbwloPbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741610335; c=relaxed/simple;
	bh=M45F2Z4KSG8y2PbVflNecpfUM1jdtWd9OjDmfh3l6gw=;
	h=To:Subject:From:Message-Id:Date; b=k5w3ZQkpzCcwRuNOg/09kmIEVR2amK8iHajo8naM6LWruiAjuVhNsixnjzOQp9WymRZdH002v10hm0k6NuulAWe4BYm+49ogY+JccDTqFpdtw599CjFeFTlcXS1WU2/atMu2lDa4Wx3pv/42ahLmlxzEYgVRL9beKNTKhN5r+lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwXqXKs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwXqXKs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E19C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741610333;
	bh=M45F2Z4KSG8y2PbVflNecpfUM1jdtWd9OjDmfh3l6gw=;
	h=To:Subject:From:Date:From;
	b=RwXqXKs7SJ7wCxKnWwPl7t1yb3TKdNfZbRXs6dNDD9ZXZ31cAyRlRsxJS7KMrK2Z5
	 YqYlBS+CvpUevDwGvs6hT9UX/l4v4pqoccGtGWG3pMT/I6uGW7zuZt7F0UtoOVK5DU
	 JeTkZrixsHefcudCe+bHiEjrinE80aFRa/9UE7esTRxm/aYd2uAomSUh4D7UWh/9gc
	 XLMtruudiFa+/DpgXo30LMugiLzBYj4qS1UUOlGQlDUsNwt6fgoqGb+GdiwoR8vGlX
	 zTHsmE7Xy+n3Kf/Y8Deky1reD4oAb2jnmyIYy92F31ski+cVZl7S1ThWVmY0603Ii7
	 YiPDsFW/t0brA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EABC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161033359.26149.8288067256316029559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb71854974c02ce57756343ef907d3ae8aa849e3a3701f1a5ca4dd4bb207e84e
Date: Mon, 10 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741610333
