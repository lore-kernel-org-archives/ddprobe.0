Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6820A3E1D1B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781018134; cv=none; b=u1e+1+wpT+tTmMiaKnexGyYe/7l7P+URZoTRWUCEkjgEhPEvfReAcMEimCKFIkQnbxLmFVwzuQimBWS2DEqTLy1uHJOq3AaHkT5zQ6UNv1FB/ifyn3vTTQzL+4tQ8YaoUUaKpVX68yH/vEr2X47yd97cyGFiZwMyGW2oO/TjQys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781018134; c=relaxed/simple;
	bh=laZAkfoaaICwepsgl7Gk3PYTehXIedWtj0Q5Wborqxw=;
	h=To:Subject:From:Message-Id:Date; b=OGhIrD2Qe3rUMOxU8JpJQ5ow6niIrAVct+en/Psgq4Mh5uU+yMLXFQhUgKyN6vvUCH3VCpScnv3chXvMMnB+B1rxaHGz7cik8lWIIlK0tH6TFiLbXemnfRdjE97PwDWPr+o6Cb/c702n5qTmhB4oIzPCzyUB7TMOq3aM7yzreLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHM3Im17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHM3Im17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8150C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781018133;
	bh=laZAkfoaaICwepsgl7Gk3PYTehXIedWtj0Q5Wborqxw=;
	h=To:Subject:From:Date:From;
	b=tHM3Im17nL1gcJo72BVqAvRO8CD2cRQ6tPLtVAyDWEWadc9Xy2QKDbFYYY5J0mBJT
	 gRMuCZEE6+MRqc9DdFLcTRiUL6ov2sb9FbB3POCwHPk0j7cMcdXB+I4kfRPUeO9ZxR
	 2BJmd6OJTXuC0o/xqbG1ptpf/Iq8QNqKyG8L0ZRYgTGyxceSUQQf/R8jnd4p2Z3UBg
	 KPtQ4ZDbfLDJ03GQlA8K4v5e2jFqeR6YDQT0r4oksf0OrNcgjvG6kf6u9SMxmznDFT
	 aBmlqKHnVLX3BFztr9KwsH7gQjhD51LvgA2uEE683VlPjKlf/kuoKPaHNfOQOm1eyZ
	 Osiilw0jakFIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C03CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101813373.17409.13112039265783789506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92cd13cec32e80b7fd4016c84ec48f07211985080bc0ea7b5d71637dc01040a
Date: Tue, 09 Jun 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781018133
