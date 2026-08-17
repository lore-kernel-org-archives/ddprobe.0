Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3351F63D9
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786996234; cv=none; b=CiF9vidjo6HbnYVUMhHKQWZfCk8oqu6hdfGAvZCVX63BTtzi/ZINkRfR1sWNTdPndIU+xIuHZPnu0reMFmOXbPROiFBUrPj3RQHlKzcKwS75L8vJ/G0JpaWoYm3a45/tyPbL2PpCjI3jd6JpTFKwpOGN3PVDDEfO/dniEawirbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786996234; c=relaxed/simple;
	bh=L73jEewHHymNBXijy0YKub8AGr6MA6Cv+dQClFob2mo=;
	h=To:Subject:From:Message-Id:Date; b=WOBKmVSZ3N+fjGlbz541KtmcHuzmc6CHrhKyEbLHL8tJhyrKKq7XRk0AMd9CUYyg7vuRJijFrGXWZmJk7DA0FnB6F7hoO+qwrl6b1KPAitXCnJw7gMxlyU0M//hWTS3PMDTI4X7UOmgomh1pSBj5xUrtwcN6ETaMjxWPSaOuTtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnA+ZBlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnA+ZBlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D272DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786996233;
	bh=L73jEewHHymNBXijy0YKub8AGr6MA6Cv+dQClFob2mo=;
	h=To:Subject:From:Date:From;
	b=hnA+ZBlbmsBeoXUsRzQL9HLTzE6nuO2LA6kMmFmrPAQPns+jH1P45bF6Yk6uaNmER
	 fGSSu8U2Pz1RTfHcaZPI/DV4kfGhNZ5glp4Bbw0Kl7v4cn1CuUe/SW6RToW+wBDvkb
	 A/GwXXmYUwT2aTbWWaXUmJypQIlA5geLy9ZwVD0RZ6yTU8V6LoAgakpP4Hr7kAtN9G
	 ilUp+pSu985sdx8DdG8D1eCGRSee8ooVAxZLdO6DbhefNp5fjeON4s9Bh0Y5sDk1vR
	 rMlVDxmC45S1inHQeVKL87ua2VmN69Iojp/2cmUjdSrY1eRpFBfF2zY8KFuQ20Mm/j
	 otwuvlp9G4PmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE06AC5DF7D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699623370.19325.1402099223711381366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2922f5efa6e60bfb79b520e7e2834aeb44fabdaa8bf02c307250629c13ddea2
Date: Mon, 17 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786996233
