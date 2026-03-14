Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175801DDA24
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773469494; cv=none; b=ecNYAJnbZTV0qFmPBUusANiI3Y+t/kH7P4u/RN4cxGwBojPR05hrQpRAA0BSAhrLqkP8LkOBejMnn4omc/C06RCyQ/aAwJ0IbF4kky4UcmXNBLCZW+m0SDdjjbP4R8jo1zkfo2Jd8Y+KBcw90AQBoCUp36pb/+SxvXysAT5IOP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773469494; c=relaxed/simple;
	bh=7FbjjX61Rfss18k4OQxp/2mtY6wM0cPiZiJ3U0hd7rU=;
	h=To:Subject:From:Message-Id:Date; b=k0319DJoUhAKR0gJlzIJNkL+NLO38mplCBm6j8FH7uKXJEMSOn/N+8iGEdIZijMylo8y4Co0SOMf7eEdIIVcng+7ghyrN7BEkFZySAgdQcSbwFnrrZTQT5fL58cwgKlsdX+kVnuJc0js77mxwrcZcl2YOOSNvEBuHyxIwcBwtHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2r7vf1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2r7vf1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66A5C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773469493;
	bh=7FbjjX61Rfss18k4OQxp/2mtY6wM0cPiZiJ3U0hd7rU=;
	h=To:Subject:From:Date:From;
	b=O2r7vf1WbYbYK8yiImb9TH+r/3KM89tKqhM13/RlVFoY9Ecw4h81VLDSV7SllsdCp
	 Q2KyaoEFq9yuqFQ515fb7rJjBIDl+YIVp2jlxpn6vcmfXFVI6M5MTZCSuIg1reGR1u
	 Z/5pHyOgZma7TfSnuSN8fnqMA9lSE0uoGOMAjVOo/uGC9hUM/bQ+fpsd7DvMBbyDwZ
	 myCDV+hCqKOcKxQujknu2Y12hN3KbecijfkKbPkw3W+gKLkIWj0IXiNBjcFOdWHOTZ
	 U2GDyqcSTc9VmW61NRgdsJ7RfmStvSpf4DcOijrVLWT0k8rkiOrSEeAPkmE7BV7Myf
	 Y/CVaNuwnVYlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9573E107BCEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346949358.4391.1438304795042097983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9035fe3f3c489512661ac5e643574bca2f562d564ef2c94e36334e85abd92d44
Date: Sat, 14 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773469493
