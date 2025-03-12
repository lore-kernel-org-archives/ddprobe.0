Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2081D5146
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741809534; cv=none; b=XWpeKdZuCwiD+i0BKnQA1BM43ihLFA+a+nfi+Wu9bDxoT9R3tueuW4KZQKOkxp0v1CORXCmh45vtHI47k2pCPBvk0v+ZBdvC+GLhky3IbrEv5ZbtA3mvYL4mxnJzk+U5V2rhCKuTVBuHbx9ZE9tnm1nXLelVJy/caXb4lyZ7wbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741809534; c=relaxed/simple;
	bh=9UddyKqNKBukrv08cPwcLLbGMWbD81k0u6rj2EKpPao=;
	h=To:Subject:From:Message-Id:Date; b=cbSl7jjlX6gmTDAQubflLpNfTm5h2ugo27GnTKN1EPgzYx3jJLLlXrTcghJ1V8eJgbbFj05eMTv82Tb0RgBm1t0hykGfx85kLPelxLz0kIJIHZAqpA2zhUYXbcuXUeAmgYHK/j3cBp9+Z9+od8s4YVYApzdUKhN9pq2khSuiZac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUr7AL19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUr7AL19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F2CC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741809533;
	bh=9UddyKqNKBukrv08cPwcLLbGMWbD81k0u6rj2EKpPao=;
	h=To:Subject:From:Date:From;
	b=eUr7AL19zgGlObvg+0y0wnxr2/3z6paMOYTDEUfBJ0lSawGPKj3c2Rim3MJWCf96b
	 fi5RgMKR7vck4VCNijw7/gA2z1towI++RrmDHp5P08U8xkzHJW0HDPWNRBgakI3KsF
	 AbeZCthOKNbAJilz6QNIdYcKqgz00RevZ+m8HQgg4OfBsIVzaaK8BZIL42w1zuQB2c
	 YPCZ9tPNpnyUkpy81xGmJdX3u6rO77IhMRN4AtU0qDkxV9NzKlzS7GqA9uHNlZgvAD
	 P3GE/eVUqjiI5i4IBI7+DmEhscBET/qSsCQEp00pRAc5Odp4366HexGmF93bTIwp2O
	 vO6a3RgAmleIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91345C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174180953358.24008.780622379011724309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c897e2e0e32fc68c2c4c70f224a963fcb3e621ce905ea748dcf60a078d5301fb
Date: Wed, 12 Mar 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741809533
