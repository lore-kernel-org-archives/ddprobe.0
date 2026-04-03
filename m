Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29612946A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775218534; cv=none; b=KdVwhsYVpua1UWUfVSIs0uC82lhDxNtfM1BV2lNyXRneb5RDU3LXW3n5FNMU6oSlOEsn5y48rEUnAkuuJBXWluhpvSCCFEXVVphvJnt2tmHpxLvkRSCcu3pyiLY6Ke60TtlpQVIvlUtswJbeIeGXyNtsLuvXoBnrnTiA69CVoqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775218534; c=relaxed/simple;
	bh=eVQfT28hs7F8VEuKf9XFXbIU5G3XknPcrmycOBPa6Oc=;
	h=To:Subject:From:Message-Id:Date; b=KtaiPxoYUfl9v1OsGEOazNH7QjWRzGKJhhLH11jfRoPX5Vo2psGqS2MELxEtkfF+AZhqn/mtyYTYydORtqE3R4dv6ZLDopj66KAhw4qTTDB/54TTaZ8DL37fwaYEso13VmBJyCLwJFBHTbramPLrn/8MJ1P0dNVUE/SKIgyVhUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZsitOKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZsitOKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F30C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775218533;
	bh=eVQfT28hs7F8VEuKf9XFXbIU5G3XknPcrmycOBPa6Oc=;
	h=To:Subject:From:Date:From;
	b=IZsitOKpPNZ36TiuDs0W4FjlCpOeO8rGKy6ryKDN0k/5FrUqiGhFW4By3ueSMu2gw
	 0+bx0Q1CDcpDBFAEBn56ZKREpN0gvXSVSRRpA7KfJPLniWqv6zlRfZuYJycYk3DouN
	 Md9OCDE3k0qTrkvnCP+v9kCiPww2CaBojmvwXqhQeRlQLi5NtqG/luIM6zHT/iHqU6
	 qWVaQ/vTqrDGUf2TTZLGXQcr1M/7VtseqhgKwcc5SO+bBfY908ZV1ZkJxB9hSg9BYK
	 zJqXzP49QkbTgf3hLoxho5MXRf5FlnSY5eHCSO7S02TKX80M2AB0G/krH33n99ALC7
	 ogr0Sa8CxjyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE2EE7E36C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521853369.667.6337798866514617351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5067971c84a051a83ad3c6dd34cd7bfec836fe2824165b45b7495d8e018eb4d0
Date: Fri, 03 Apr 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775218533
