Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C7A2DEA77
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767623634; cv=none; b=mCxXXDolJ9jjyLQbxUrElor0tvXkEB7cC4UyPkO7EA2lvz70A0fTWRBrVNDZI/0z6OSX34DqLFoeAs13l7d0exJqnAGyScgSgMKKrfUM/C6V51BTM/9z2j/ypnWCQJXMqMS8LlACiCyE6ycx24YKaEfKAbzoLFEnv3XcXIHZF64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767623634; c=relaxed/simple;
	bh=tlvCa/Zu4yZZnJjy5+mSKOak1/jtf9WWhjlDISAyjfY=;
	h=To:Subject:From:Message-Id:Date; b=lNmlM7XkhHFj2f5AiCx24Bnh3Fi243S2UqsS5zxy9s3TdO0cgMIk7pnGRNMOMMJOHX2x1gqsI0yPL2ygQ9vdJmD6385EvGp4epf1KaTandUsGGGj1++jb73e23GCOBBSrz2g6Vs9TorhXK51+FRXEhDa75/BnS2Py3470lsKtj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unNTI61c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unNTI61c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE60C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767623633;
	bh=tlvCa/Zu4yZZnJjy5+mSKOak1/jtf9WWhjlDISAyjfY=;
	h=To:Subject:From:Date:From;
	b=unNTI61cUpOTzVXEFhgHEfRmt8BB1phAf4W1awSUq5NWp6vc59wC0uTaSAuavfV9G
	 KgGBLmlL73lvHbQBbPw+4AP9e3kPNWp1O5IcFiIL4bBE8WpRYKdmBsrnkjUV38BYa/
	 0gNlW8ywLQ6Ly/aySqGyriD4SojElfJeErgussi9IfIqSC+ykwKjQyYAR0o4K/HBB3
	 Rt8vgsh6SIB5QDE/IE6DWekxnKq13GbiDjd8qrla3rMgAyzY+Mlju3ZSMV36waTsXL
	 FnPcDbdK5bbkt8xKWmEBNIVYbi/WXmm7pAsYHGgZjgdhx3uqaocH46nGlC6b8F/1YA
	 0sTQfJtqvVWqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E45FC79F9C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762363357.2115.12356713843431067203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a969a1b67d171854ed1096274da63ba3c18f6fb0869015ed601d9e5b12fef99
Date: Mon, 05 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767623633
