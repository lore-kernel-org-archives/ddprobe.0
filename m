Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3AA252904
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744957194; cv=none; b=SJKW6ZgO3tGvahQEo64trJCRkzsoKANmGinnqrFfoYWOpcNcuL0oqZjm06FFehxVLgeV9h+q9ZJSwT8EnV6s7kcEwjjXq9fztMKusf/U7CUI8VH9mWqXZVv3lBUEPImSRzm93k4cHRDFzvAlZ6X2C7P23vUMJVOx2wI1xyf3rDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744957194; c=relaxed/simple;
	bh=3uFF/Et440HS8hD5t+oxR/T5TCE4vLKysusQksstAt4=;
	h=To:Subject:From:Message-Id:Date; b=LBR7adE7sbKa5XINbs1BaeWogo2P6eEPFf6Hstdisfga1QpI7nN/WTjnIoQMSRbTZO4tcM4fyCF/63dkql+2y2RQKC8CdvZtCZmrN/1WxkL8gjF2Y7XpLWd+s9m85Eka3HQXZW/viVAdmmdFPh2u/nUJqCDKxtxkVfmHUip2GNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUqvLnpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUqvLnpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0895C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744957193;
	bh=3uFF/Et440HS8hD5t+oxR/T5TCE4vLKysusQksstAt4=;
	h=To:Subject:From:Date:From;
	b=MUqvLnpR9W12ue0GY3yd/ohY7I64Yw7eJYjTpa6SyOKVWyJleWptC/gISdbLON5Xa
	 BqfYitjy22v+3vM2+2L1vKomB03EpFcgaRHIo/+JXNrm6HkbbSVWYtkK5qJOlkV1ZZ
	 QGXZKiI/PK3o7/1jBetKXFzOcL3zaTWObhg5glBFoSAh+xhGXo4CP8EF4dd87zWu3E
	 AFWHpJUhn37dqmlTHGISNPSoyPho3MAl4Z+GMrigi2xL2DeA5OfL8O9MnavlUM4Jgh
	 dhqnUZN17paZPlSG7UISAP3CqBQUP/cDr7EX/xfGusaR1L23yyDsnZ4ZkYAThylAMh
	 jjZSgF8uJHXxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97210C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495719360.23527.11046953744866679838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567a500fc9b8926dc8da5ab141a1871d812d0e895e47d466b2a6718ce6c86261
Date: Fri, 18 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744957193
