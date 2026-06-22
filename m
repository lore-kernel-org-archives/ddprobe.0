Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA2A3998AE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782127594; cv=none; b=UAL83N8a6mvQEmiLX7jZjoLDxKyVTyWzrisxD30pIYNVZSVd4ptAfOP+jYCWCv4APGFMvcvrEC+X0CTCnxyJBmnR6MqjYTVE1w3Thn/tnSP0oeLb7lx6fpkasyOlwNaO1sRGQZ2WKysEXgr4SCd1+K7NZsxKYaGbidU25OnawP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782127594; c=relaxed/simple;
	bh=XDjdRjCuitizjMP0Ef0krQ3SvHbUTI9ZhSQWUDVBRzU=;
	h=To:Subject:From:Message-Id:Date; b=gb6Rx9uTJj3WkDTGWRuSzpHSeoO49ZOqcYjXo99D6iwDBjUoFieTeoNVfKXYWtTCbTrto+HaAFX3Ug85bwx94O5cdbZZuUpGTO6GBOfncE1SjqW3C5tuQZoerx4MIp0yg5T/9ESMGFVXQlfARZhHSkR8mnEHfDlaE55cIv29hPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXRLIekW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXRLIekW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01BCCC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782127594;
	bh=XDjdRjCuitizjMP0Ef0krQ3SvHbUTI9ZhSQWUDVBRzU=;
	h=To:Subject:From:Date:From;
	b=TXRLIekWcHPGiQtamRDkIBVf2cJFmOGyUfYf1bodHukwe1FGr6BF6fF3Zs4MfAO2t
	 b709Dy70SGreXuRqQ9uCpRyi23LJR0g1GEenYfjts6tfZKiI7rqEgvJur8A2bkCgGv
	 YkxgwiL7RciR9E/BmVXG6HQPk3+2TgVE51WG3sseUXqWTfMu4yswVkY69x/TlN/mYj
	 jHFKqeYsDBzBy0GYdBqvwxVAxVsbWnsiJ9tL7moj8tbx7KnUYTswLVs/3VoSKHom2r
	 j1F28SXsezHzmFfcZS6rbA0IJbAmanl8ET6W+hmqWpzO14ZtBtyMtO74slgMMBleXQ
	 G1MV9BYnsqZeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6792CDB470
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212759379.8649.5055954110207834933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb9a90a026dbeb5d40a34ff5e7dbc080e0c4f60d5ab7d026906753064d5d016
Date: Mon, 22 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782127593
