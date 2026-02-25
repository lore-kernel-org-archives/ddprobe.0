Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB16310636
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772021094; cv=none; b=CVa3hyOFfiJZ4DzzZcg2kUtWo1u+qH3tZMrtrz5455Rf504gnbpajrP5Vv/GmsgD9DjXQqb5egaN4cDY41o9GtPxwftL3OKt3HrZGM/CEBGDFrtn/cEmjMx+PGaIQ+dFukIQ6+DBjzR6gdNh8aBybNSDaHc0fyjBJa1f5iP3jek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772021094; c=relaxed/simple;
	bh=EuUhAoGsZGO36RXNhpajGSpmf/IGkrcdBJdWQ7sSGcs=;
	h=To:Subject:From:Message-Id:Date; b=ghdzYlhp/foGjUV9J6JqoKVCUU/6qXivyeG/MCmcC+AspRV12DhvA/pgLXyr9GZOeWYDwv2+Hgyjl8ORe36pFZOpIPeuNHLx9/pHOf6Gi2pSnDyxZHLoq64ePGlpCU8U2Xv53sN2grLmkGAvm+2GE+C/mr3ar+W2YdunS+R6HW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXQDmJNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXQDmJNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12C7C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772021093;
	bh=EuUhAoGsZGO36RXNhpajGSpmf/IGkrcdBJdWQ7sSGcs=;
	h=To:Subject:From:Date:From;
	b=PXQDmJNzABN1ixXGAVYRcTZieIEA67yQJTwd58OhbblJPjnffpqoxhnK/RBv0jZU3
	 XgY51ZcAoKWZdIWBihosyMjv2PAN2VYMU52ZwRoAtcpZi2VIY/wn1q8kNRXuxh9aTZ
	 GFD2W9x4aZPLo+d9NDDPpKf3UgBtoln7RC5BpZFPOsfE/wJFRfGmBn63OWJoJi2dRH
	 pGRUxEH1EwLFHcp/qa3wF/k08pRj3/wsT1o56B/47dMJBozBw6Wl+schLkihM4Jtl6
	 CNIrQpr33clF++hyDz6EkisENjW7Im2UJxnR6UFgriOtKJfb/lRWWAoFyz7+oXKVAI
	 68zOmVnwxP8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97602FCEE91
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202109360.13066.4618233935343762956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fea9a5e756b75e15225e57d03a7835720ea3b151dd3b30e82976d621ee601b
Date: Wed, 25 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772021093
