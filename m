Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE875028C
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719782063; cv=none; b=P9l4r0h/FD7olmtDLD5oDL/B+MHjuBmZ7eIzhA8XjKWOYnWxQT5jXdu+UupDipe0VO5eNkOoOdRIH/Bosp220HpQcXDrH+mE7WGfIR83eUxSK8sEFtFhQOFiJ8tPBzK1ZtEoPSEezULJcR88p5C1I9x1NH5rxEZX+IKhZ+9z55g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719782063; c=relaxed/simple;
	bh=K6DxR+p63fcFxLcIYEem/rvcbbidMYNr3BtVzF9THoM=;
	h=To:Subject:From:Message-Id:Date; b=RmyIPFcUxOwG/0gPcvWHK6O+OuFTXDqZgMmScMbrH3W2ORyxwAuycnKZxRRjorwQOzKMD2JBQFmNhuWZAal3wSeiNYxKmUwRCaZEGAd4Fj2++04ZHdd1CxnJVt3GI/NPJ5Jc0+5mCCV9AbVI1w4zFjIFAusDCQTUO5/Jltme7Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiEfEOyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiEfEOyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E5FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719782062;
	bh=K6DxR+p63fcFxLcIYEem/rvcbbidMYNr3BtVzF9THoM=;
	h=To:Subject:From:Date:From;
	b=NiEfEOyjXuuEk2SbrpLboTDvCT2Yc1CWr5rxRZOR8v42zqguzcg37GWmiDqUWwgCY
	 xYCHytzH0ExmIhcPjy+wKsZC8FY5jiK11C0Vpy/YLQ4RJNTl/SFRqlsZPkOvI+9JW6
	 TrirMGKKDHPQLobAdi1SBo/rJ0RlPKzOMootxgzUb8yRjfJjB+3uwMnfCnZujf/JcO
	 xUJu/xOe47d2au9FXN3x2pao+Y/kfFEK43amiAlqjHEAUnBHnHY+JLuT5c3xQIgE1/
	 qga6C0JbNvSLkyvtLC+B6MFMKKkrg5tlPxoA7GFhYJf7MUw1U/i6BLRc3/31IQm1gL
	 b5xGRLBok6luQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09D6C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978206276.16053.6386204082467149838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06b7bf1566e1e4b509ca9b5beb53754c01907a529ed1d91045787e3f5fc4916
Date: Sun, 30 Jun 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719782062
