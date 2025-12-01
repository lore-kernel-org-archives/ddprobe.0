Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1614C1F5851
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764619374; cv=none; b=H3TVY/mwMpn9RxEKIIhC2Seen7NMJcvhCiNtEDtiaF7vzG1Uvtt9zGK/f7Q6nVnFqYGGXBR5B7s1mYq/uAfpSFGzcoIF0dGZyDygtbiPA8ZdYilS2eU6KfrZtK6FAwkgNVxqkE6O2MgsZ5/2vnwku5/Q+51wHvEkjcaLtwWhiwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764619374; c=relaxed/simple;
	bh=irtdnNT9kC1Qj7JvP+wKMLR6ucTc82DGkYEzuMywDTc=;
	h=To:Subject:From:Message-Id:Date; b=qbLlWkPBbNQFXmUOHxm+Mk92VVtk9JGlLsDVFCTlmH4W7/u0msHCvl1Yoq4xYq8dEbsf6Iza5jFgubpgQaJIkHzd0Kz6GVosrX/nNF7Zad+eHLRfJYgRTYVGNKuIzg5OUSNWbXKEvpg8eouWaSu7RUfZPFky/MOywEqz7j+dE4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbcTaOBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbcTaOBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CB1C116D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764619373;
	bh=irtdnNT9kC1Qj7JvP+wKMLR6ucTc82DGkYEzuMywDTc=;
	h=To:Subject:From:Date:From;
	b=LbcTaOBB6ZYMAxwTPON3A5vkxz0g1yfmScEdcjdMJAP3Lh4AjhA8i8ifZFRn2n45m
	 lzRzaBh9JUoNHu7uaMHLh5nX6a8p1TUzObRxsD+N5DszPk8L2Rn97ekJsuG2UEyKTQ
	 U73vyTZX2pyyh1Vq4z0mMaJUI6sF9fWojEhAPjG6KX6TbBDC7XOgD8/PESuMFma5Co
	 iQYGSmUn2f0wxgsLd7+S+80oC3gaAvzzojMX5A0JTAUb6H89oFKgInZUwKOYvs8k2X
	 qgVqnjI+uldg6Tp4ewRmfm34ZUtz1mXA6CA8BYJbnEFl5Xi9ieUjM3OBebaddrt4El
	 oCFD7lyKy4XlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB2D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461937358.2257.10438272959529640906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f26a03eae83fac63d8ddcf63b562a032b1cc5059432be88fd4f64f31d862d7
Date: Mon, 01 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764619373
