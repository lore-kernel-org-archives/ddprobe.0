Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3F348F850
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792396234; cv=none; b=DciGdX/hTQXPitHzHCuzIfpZ38giga3Vn5nhO28PSGhEFJ5fbzFjSR8WiVaHklk4IsEWXa3k4a73leQKJiTGwmkMfXx/m5gl8wrq7qP3ymvvZUCk1W/jMk3soDqKzWNuOAqzS4uQalLKYjJjrPjWBRFET3M3EGtDBMGAlCHyO5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792396234; c=relaxed/simple;
	bh=tGWmdg2/PLfePmUYEKQPWnQj32cTnDHJVqQ1rKIWckA=;
	h=To:Subject:From:Message-Id:Date; b=VBppqRgOtxpWluWlL3f6U22A/jLVBMHNHiMLK85Zwv9RZl3148AWJgaAE1be1GCYce9TtDuQUNT/Jhd8Djt0CC/iMR4997oR3om+2JceYoqwzetf/3mDiPMdlLiwJJxbhzslp8FyMDJv4rXNsIvG9TxJtHLNPWT/i0HGsNlbahE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=act7zivK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="act7zivK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD743C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792396233;
	bh=tGWmdg2/PLfePmUYEKQPWnQj32cTnDHJVqQ1rKIWckA=;
	h=To:Subject:From:Date:From;
	b=act7zivKHHrMmhcgmDB/vt2j1HGNTCzwfFJSQHiiV/5mHufDkKUGJBt2gW/3O5bvI
	 k9hDtPr/XPTxGEkQY3Efm1dsWeYUYTWOcjuMsZXTegSmouIrvVyxh7PeYOkkTEo5ac
	 RDurogRwTfDEcLh6IdzDKOOt0Nb7DGdoWjknyjwrGZhZ+q29FJhnINBHJy0jZ9Z4/l
	 0fY6Qrq78f4fcSdHvoGQqC3B12nTO0w9GPDb30zB9ESVhsg6Jxu5sIXAJj6fOMlb1Q
	 d42ljlAklyZmjPP/s5wSxFM10QrwBq6lJH0VWByjep7mzJrpm6ApW7u56sciBhHHoC
	 c49v+IWw3Vlcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B813DCCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239623371.2376.14714228469682716922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a104bc17b0765de3af07927a695d6a2503a7889b914d963bf1194c5a9c8c322
Date: Mon, 19 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792396233
