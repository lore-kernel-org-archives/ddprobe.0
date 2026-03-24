Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6A13E63AF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774352094; cv=none; b=DRBoQgnEHlh0RXW+uBEbnjlfMKzSKYvYGjalNAvmBTJRpE3HRda9MT12m7oLnIOUAaONMA1ArQUAVRqF6+IeHau5MM/89W9f6E+pAE58YZJQXhy3uoM5Xo8P3vf0S1ShESwZ1yevSxLtS6vIGhwQpBysdm3wDKUpMH8U/OrziCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774352094; c=relaxed/simple;
	bh=vgSOftS7BIxeHOBrjNsrPSitLqoG4rI32O3Fu5kJ4AI=;
	h=To:Subject:From:Message-Id:Date; b=XLg9JGeBdRtxvk0duHJ4ofgkZlIz7px700gg4a6YmJAqETe8w+ZUTlAKMW+nF9XsoS2+Y4zt1HA7xFY9VVeHIsUqXRZXFdIfupty4zca4ENO0Nxg8C4bB0nG8JZ1p4O/EGWmqr3F35ZuoioJWVXQODsxbHA+oRlXC838yIXlyFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv7K1221; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv7K1221"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F67AC2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774352093;
	bh=vgSOftS7BIxeHOBrjNsrPSitLqoG4rI32O3Fu5kJ4AI=;
	h=To:Subject:From:Date:From;
	b=Sv7K12215w6Y1cPf14QjR8OwNWFl+kOYAsdbArpvnNCVQCwIKwagjfUn1DUDkepRo
	 RWuoq6jaQJopRmCMU0d9V8THerINcTnJSLRJhdHJtaWigTTPajIM8hVxOXxQWuXGxI
	 PFLJcSupLyoCNN1WUM8wUJ1hWXqzYX8QiEUWsWxSwxU0XF/4v8iK49vp07oia05FqZ
	 3fXcFRAtrDiRUNkBHad07EZ3vHV5xXkJJlAWVKt/7nJRJrulml1UZ0EnLRZeg0BIbE
	 /HHQTrfICHAX5vkBfcXWipf+FskbQ0wbIgGg5pE2W32/uPSb9Ojg41SqS/iyeCp2BY
	 Nwe6zINacUPjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F11E9A76B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435209358.26372.1123397011373160098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091b7a9ba4e12654c67bc2b3ff7ebf3e71a9954e326cea0bd89e659b942f7890
Date: Tue, 24 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774352093
