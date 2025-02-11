Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDD71FA243
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 11:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739272196; cv=none; b=tbTutgkKyMxbnLNNuJY5R9iqT5q6Yiq44qAjuYQvszEsl6s0mUXyckVIznpiu2KQDiOOdBzElEKPKdRiVamtFWcn30q8oQPNRA5Pehx6zbpY+XtzKGRmSVQwjBnN6DXvggSW0QzG7eveQ/Wjw8O+Hgg51fMm254JYlTmAnmYTuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739272196; c=relaxed/simple;
	bh=6p1niVqHGOJJ8QZvNbiTeLFtRzKGvz4lABZghlx+a6w=;
	h=To:Subject:From:Message-Id:Date; b=BibLv4xUBpmTv9Hhy82d2C2u1H9TZyTXBcCwaD/5zujljvb0uKrQfWAi51fU8ciBPI/If8A4n1jI1voY8QHiAqu2huDOp5dIhqNCs08tif2ooYcBFcoyUITp5qoAv1m2QoLj8FULBz8bxQMkSmIEtSTrlzg2TMDsWxXTglDIVl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuQVGAtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuQVGAtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14CDC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 11:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739272195;
	bh=6p1niVqHGOJJ8QZvNbiTeLFtRzKGvz4lABZghlx+a6w=;
	h=To:Subject:From:Date:From;
	b=FuQVGAtqNhgFPfdZOl8dMI7AFbJAz0B3pSs5sqZ9rdsq0ObHZuGJOKqCuW858z4W8
	 exgXqW7G9uY5IVzy8cCNg/fNV2pn8GP31qW9fTVhm/GdnKECWl7xrzdORLU4+xm3Di
	 abbK+d9O1IfPO3ug92hPdAHzTMlEu0u10Mu3Ld2i9NAxU1ELq9bMblpqkjivB50JJw
	 2phCe9ki4Vt0JOTotzdjMgYAKim71bc37MKSOTAGkINlHL4CfkZQ7mZC/pyRYQdqpt
	 pszzMnDLRk8nYhTw4TOY7fQzBybagUXooxKNOqgD/G/aZtxyyqIagmpPgNMeKqv0ms
	 A0luYUVSltcAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3DDFC0219D
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 11:09:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173927219479.21251.12768229159101168795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1172f3ba8dc6a9a1489cd10bebf27e343663185f2b477bed5c22fe20c7cc3e0e
Date: Tue, 11 Feb 2025 11:09:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739272194
