Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AABB25F992
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741852734; cv=none; b=sfasITJtuwF8XJt3uxmQX7RYGScYDc3NM1n7tdkwzAxRKt4cn4ly4XdysyUWNzAALUX9YJVSZInZJDyG0HhpLIe3Qrdj1tJa6vQsnPHoJISjzUtmzyGEv9j2E8ItKlKSe2/AJC8XI7wq8EX/4C8XuJSgUBvvuHevvuLgnMhcThg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741852734; c=relaxed/simple;
	bh=ZwwWUmLGO8oG25f2x5vTiFFBYm3t1DpAOJPcvn5DNHw=;
	h=To:Subject:From:Message-Id:Date; b=PmU6KZbzUnCnLdqZ/BH8FFTMoDc9xXDwSYpxHXsbIZsYxgZNOskkvyoZrK5uIuAiONVokYG+ap8dxzd4zjHwfpClzEs/FX9cFOJs0wDYA6onh5EbgNZTZzZPy61x9x5nrjls495C9Nzq2Oq0cevXqB5cJ8dyxSAvxc4hXfJmki0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgLi+74a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgLi+74a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5A2C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741852733;
	bh=ZwwWUmLGO8oG25f2x5vTiFFBYm3t1DpAOJPcvn5DNHw=;
	h=To:Subject:From:Date:From;
	b=QgLi+74ag+c8np5r9gsWRBxNSfl0elDM8bvahF0H3zhHfxToHj0AHaLq/uI3uZUwq
	 57/H4a7SsVWb/kDOWMLyAnL4w2r34NLTZKIXB9FbXBrQOmEG3hJ6IArWu94X+61pjH
	 suLcff5283gSt12eASZ3ms7cWrXYoTPwZEuANaAabYHJezA1KUewXBml4K2lElfBIN
	 9CxLr3Q2ErkyptBmVq0Oh61rDfGizmWVtNy4K79EFpIcqxeLgKKFP7yDxHWhg3iHXM
	 0py6cVCR+DNh97HxPABvRvdwC+pRmlowCYq5i2yNdVqgAfA/t2qGCFh7qPnDQkZmQX
	 i9S5mH82HfATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA3C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174185273360.13451.17760387845302661916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d52ed99f7d07361afff77b3fbbd3c85c5f6282b6cc43b7130c7a52a88842a52
Date: Thu, 13 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741852733
