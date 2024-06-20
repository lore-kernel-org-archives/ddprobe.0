Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF8736D
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718844563; cv=none; b=i20xOhnR9d8R+93eE/5VUUjNgkjcfaeLz8hxDWh763rVdS4LjMYyxhHn4CQgYoS6nATPHZvHj3YD8n9dGz8K4acmEW/7a7Qvq7XtuOs5s/sV/y1WZRFSKXzx8RlbH72Hf+oGGFXioTCUsCiOPHTO8tx03nKCSq3ciXXvcb7Dl9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718844563; c=relaxed/simple;
	bh=jUX+TgHgKEDsYP3h3qRwa+hCDiL+w7M/oLL0FZhhjPw=;
	h=To:Subject:From:Message-Id:Date; b=e/BItk2J1UpkGeg1ukuLEoCy2Sm577N12yQvK1tMlGX7y8qWbXiyNk0ZwAbFqsQ03TwTJ2MZSBwBdokRyI02ueIkBEhB+82hDVXkDFRi0cO6iAqCNCJaPTe0fuADlW0HlRb8VJwp5D4QdIp25f7JUEw6vNSJTYPLsBj3ldaeLzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJpc9qn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJpc9qn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA0FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718844562;
	bh=jUX+TgHgKEDsYP3h3qRwa+hCDiL+w7M/oLL0FZhhjPw=;
	h=To:Subject:From:Date:From;
	b=AJpc9qn30sY3ImpO1zTfHB+ezP/ZYIjI2l1G/9WrPNv+JzpjeBhn3CVvo313Lq2Vc
	 +XGHMBaE6DCjREDYANYkOQFMzg4YiMdqU5V1pen8YYyo/XckE+AciDgBZwWgs6jQSM
	 HIQJ8XYnp+5zuEOzG0MSbmndirKq6i4pR9LHti8pdyAnjYG81t/O0jg52e/h5AfLl6
	 VHGb9icdX9Jt1VgkQo+cV2D/ydDDXPGjyNsMeNYfG8pTdRUv6s2eRVu1LaAop6NNRl
	 h/5d9rMiq4fELQ/ceg6EDbOZxkMgOYvAkRel7RscMwyFIvKCKphBRON3jglqTEynPK
	 2B24aoUVO8Zdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB790C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884456279.32012.2759987131904754057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6592ed8fae77cf4e6b2ab0b1e80ae77c1f0e83afe5b02ae8e6905d2329c22c0
Date: Thu, 20 Jun 2024 00:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718844562
