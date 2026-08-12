Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19458357D1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786522834; cv=none; b=S3lng7WjNJMkdZQRn8sTgvg+2iMf5IIZ+dDBAnINnScMPiDDfCsJbX8Mr6zzpy+fsReyqZUBbhq7rLIhb8giNiyUD4/K+m7PytSLi6xhP6LWPMX33Ko683bd2orBQufl1h7Slbi2p6vt5WCOZ3r4iW6T957TqioTbp8HIgYN+yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786522834; c=relaxed/simple;
	bh=hZWnDVKf1nXqOI22uSWMNaoTVc2ZVc020H0E62dbQOQ=;
	h=To:Subject:From:Message-Id:Date; b=g+rEUYOeY8C1oO88PYA7pesLgxsvV8HJj0rRNRgBdlujf+yuHlCkZVkibj6Aa0HUKZ2t0TT3zNroOON6b4WED5wiQldum07+z1h/m0AL+3QKdwafqpIXB8PsTeVjTnA5ZW2eC+eEhxdMcQPvsH1bKmEJxew8xup12BccMGHG6Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKy0Vq+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKy0Vq+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC719C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786522833;
	bh=hZWnDVKf1nXqOI22uSWMNaoTVc2ZVc020H0E62dbQOQ=;
	h=To:Subject:From:Date:From;
	b=oKy0Vq+DQ2YKJtbacuPMb7kMMW8ZCpHK5WbjQEZBgbWsShgpVUYwgelhSKodlha7h
	 dKdzHdxGA2XzfprVJB5bWKynWNr7JSllIhhcH4e+Tmm4D5jAcR4Pea6trgIvkDrRTc
	 6ZXDqZ+kNZtgNeH9gWEJqu0gCYODhWMT/LRTOC+1FdG2GQ2rv8ngB3wScfAJLeZKqy
	 pq8zHpx37HS9iwxN34OLsPE1d0bsSvk4opYpuykFm4T6r9PbMVbPmK5K2NxUHxmb6R
	 KOXpoRW+rxuZvTtkh+5kSk0WdimOTKnb4/rzoLJTDXwki3Pr8gzmVBrK2CLYnmFpfa
	 dvywg9YO10Psw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB053C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652283369.8025.11166928377646502953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8bd8aa2bf6e6f4f869cef9d0e7a1d4e637da3c7d3be90c780cd35aa67cc67c
Date: Wed, 12 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786522833
