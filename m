Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E17BA27
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732584354; cv=none; b=QihRrWEa6oxRMgJkUUTNnlSthAXLvy2W0u3Cnm9czvYDgrEnxhkQ/EjId1sABz0RQUC48L25wIUwH45UT7dBYRiZOjT/CTO+FIptjF7XKYaSgr9nBLxsgtJOQlzcfSpMbnz0NgpY2jMQrSMMMZQOHKBxqzcYUfY+X+nasonKk58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732584354; c=relaxed/simple;
	bh=7NvV5V2Z82iM9vlsctb5LsgQiUMh7GkgU4A+yhc6wDo=;
	h=To:Subject:From:Message-Id:Date; b=Olo4HpCDpnq+yRSJthANkkQ3HIyokMtU7wno7Go68cVjTOmQe3ToFyGGQuuO4ay5EmcHs93eYWarhEO7mF2U9ZPiwEldBRMbrT8NcFlf25peLkPje3TNbwHoyOMc5O5M0EHXtaR+cQqUT0vMlSzEp9pe17vB1ktkkmxxZC4TfWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA1dzfDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eA1dzfDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B00C4CECE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732584353;
	bh=7NvV5V2Z82iM9vlsctb5LsgQiUMh7GkgU4A+yhc6wDo=;
	h=To:Subject:From:Date:From;
	b=eA1dzfDXhnrKcmkR4gqUkj40YSjQ7UrF1qQIyblu2KeEZYUGdnVVtjEsbzf9BdFtt
	 zR+/K4GxsEhxLm/QDii5dExS72KrK+0nyb58Wv4n35qY8FAM8Q/X5ia4TQsm/JYcEP
	 RpLtC80Tf5gnEM9r1mIY7xUO61Wwt32pp5h1o0D09/JiwpY7l/5//LywAPNE8zOP4J
	 6R2wWZUplF7tD3uznupeH3Y93opcFVUdpp0fkoWgAG/Mz1us1bdRdbCu1iDQD1hx2V
	 8OG4CReUNS6ru215ffAUXRbC+v7hGlMYMQcteExOoiwIf7jFxYe8zZ8NPZ3SyGNiJf
	 +BS1Fvj3V0D+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97442D59D88
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258435361.13964.8049340372213939354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28413ecb558f8fc3a049e3c9f66fd9f192ab7fafcf6e534e2069c119fa84001
Date: Tue, 26 Nov 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732584353
