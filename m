Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAB52236FD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765063374; cv=none; b=SP1EHDaVGKYgFN8E5LapK3h0zlqlDfFzeL6TJ4sUYLsvpFSxp/5GTBPuJxsBskm8AZ2nwhdrN2GEb+2sJAPAQFwUGOLVe9k9LYc72rdwzdvrSt1klUgwxBjnT71jH8AQRC4CQwZEpXMobOPSjRA7QM0h1TF/acJzjRGpOR5p4OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765063374; c=relaxed/simple;
	bh=PvnURqrDkxI+2eCCY11SHK/7ryiJRhfT2M6X/SpQ46s=;
	h=To:Subject:From:Message-Id:Date; b=pk1bAdt+ol6moJSdMPP+KajkK8LOSBJgI10MMS2ZFw3wXHpAg+FMaxij2ocFWrMfhhYfUVQ16zrTdHjAu1ZbjH7oX5NXxWdAzrD7W00YiZ/iXnZFrlR73UCLV2h8qQWr5yp/yhIujFNcXfD/dEdnfb0IvtLTODqsH53rTFOshDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDq+n2+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDq+n2+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE45BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765063373;
	bh=PvnURqrDkxI+2eCCY11SHK/7ryiJRhfT2M6X/SpQ46s=;
	h=To:Subject:From:Date:From;
	b=DDq+n2+9IWtvGLHvfJtOdSnA1trquWn7+ql6v0A6PL9qZol5mW4AedEDJDru+Hstn
	 xsycyrN+WqP8EuOaztxgi4B93+SY8hfRpqb/PegNA0ejLBNXG7Z2p4wIVZinJ5i0mW
	 UWs5G79XMgQSkE52AKIJ28qWSdNF2r9Zf5jMnLcZNSBOD6mcbu8bYvwpAUDGAMtlBa
	 pUxlWVxehTyA0fiEF+JM29QVlNzwDLj/gR5LOQ0HM9Z9JzZQaqiPhJXB9/co0Eqx1J
	 oY/RRM5PaKXMKeEQzG0pM25Y9csLlRl/ARx7Kyq5njZG8ddIwl6hE2w/4ndC76LbPa
	 42gR1gSMDqIWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C4D3B7E1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506337358.24155.542443445851235607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c562b3651987ed08f75ec4175bee4de366be36522f493ed516a1a7e531157c
Date: Sat, 06 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765063373
