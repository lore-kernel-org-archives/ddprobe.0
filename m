Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B08410F9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737176154; cv=none; b=VGxPcnTsZCZW9LNp7IZV3un7gg2FM4pWFNKSlJH0PJ/PyNQEAhabQqcmD58sGyg9uVtbl7h+sIcIKqrBMXJk4CneBczUsCUDTpVAkuy7YoganwxsJ2Yg+rbRKxJCayn189/rT1qpyyAfeiyL6zPfyCRhZjA3s07nsFGZo0Y5XaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737176154; c=relaxed/simple;
	bh=iwCalUg9erYdnPQpHCk1sRv3SUR7OzArw0sEz84ykP8=;
	h=To:Subject:From:Message-Id:Date; b=BZO3TH5V9CtL0iKktwFr8Ymz8cvCFhMg+GVc84+gh0xssTawHtJ+W41Jca7ekNDhfq6CcM5fjp6WjvVKQm/Maq8i/l6jbR5jH6M5dzqD2yNYJ+iCeKU48DCJO06RJycYF1qAuak/pbGVHZjEx/ERRDnduJwBkY34CSpj9y2V4NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZYEiGer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZYEiGer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA81EC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737176153;
	bh=iwCalUg9erYdnPQpHCk1sRv3SUR7OzArw0sEz84ykP8=;
	h=To:Subject:From:Date:From;
	b=DZYEiGerD9x5T48DWnoMYvFT8/34VknAZQyEB42h+ofxe7npcVXAD+L+pw6STEbo9
	 lU9I6h/OLnTj2a2wDPuOFEQLsNdGSGZDjN3jDWXfc5O6qdpS/ZHQjnCeQuWpvEhee4
	 1A/nci6dTk0cWzO6kQkoAYqH2ENckt+eOyoifVg/Qn97DBx+RSqLmYDzfCIaMdNr0p
	 g9EciZgna4qcS9hRZmG+FWyJTIkKLvnms3aLi7hIGvjCb4Q0ZggleAkVgdx6DGfPwy
	 JokLZ93O93n2x6Sc/DybRTBfS5LbMJxoxN4Zg1q1Ey+694XidHXxiVwGK7cFXUZUm4
	 yGW2p378kkP8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96826C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717615359.18669.12020938845583083889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4222f0af5db5fa20f9baa20b9d1c3d2460c19b8f31fee0d1b8a432a9207f119
Date: Sat, 18 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737176153
