Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CCC3BB670
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785277234; cv=none; b=tEV3qlqqlXAv35wKsX7N5PR0W8oMWlyTlFA0gmzOU9ZKAHAIBkXDM8pVFsMaUSloDy8ht6+2ONvtRQ8W8K69JC2x+HYJpqCB2gGNmmFPCn+agq46yyCUDjpNx4ZUKlJMWqpB9yKEj9jyoHZmNm4AQwlqQMScPncxfYK7DkXAt8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785277234; c=relaxed/simple;
	bh=LBZvm1VQuLuYH7Su15jnhcJi//OzTXDNIWm1SvW5D6k=;
	h=To:Subject:From:Message-Id:Date; b=QZHAUYbkCW4c+XZst8H1detl60Q8LCsauPSrpzqZGmQGsXXvH5GfWBjFiQvKSz4yOcdvSviCL086KQmv74WKn+tSs/Y3jqk/GvfcIQdihmtYTEYo+IjzPj+YrVQ8YIRDI7JI5U3eF+KxDARr/wKpvuTMhavlOv4zmm3ExVWG+P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOrssF1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOrssF1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAB9C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785277233;
	bh=LBZvm1VQuLuYH7Su15jnhcJi//OzTXDNIWm1SvW5D6k=;
	h=To:Subject:From:Date:From;
	b=pOrssF1HA32zlk2e2DG4a2Y3TS8ePipgQdnLfDIKp5fmiiSPVXeMUF8Vf6ypxuvOd
	 L1pWzXRFN8S+GImTMehciVW74uERA2clPJSX8YBkMtLSPQsULp1Ro/8ZodqLE3VZ9T
	 bwHw/lC/+ayoeDeJ8euW5LUDaOInlGhT87tnwNHsDwb+FWj1vYeN580iEeUE3RiapV
	 UZcquP9K5x003xHqh02/5tdO46yKdfoirkKJfCafPksU84P7lV7GWBWBrusbtzu9iq
	 WVup1GZvicO9mCLfmqQ+fYDdk1zPcYN0Dwhe/7ikW3IF7bAi7nL/KODmB8SOiZpd6j
	 1hYt8R+iZV6ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE2FC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527723368.12448.13652353380264363090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f60b6a3ce09e8644d277b707fa287a0f8c2917c0b6dd81801976fc2f358abef
Date: Tue, 28 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785277233
