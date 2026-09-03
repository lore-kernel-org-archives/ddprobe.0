Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7619C42983C
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788420634; cv=none; b=hKuhZWrAH1i9rEvFSvzMT3uLinDdoHz5T9vtXyzIid6GGJij6aoZImz8smBea7uODrOxdgBk2bnQF5+Bkpch57OjtiRmHrRl1ptOrkOuyfN5k2j6iihRuP8k+Z5l9jynXczipO4QwD66i1AtXz62wjIUkNaYRL69KpStlYy76Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788420634; c=relaxed/simple;
	bh=hEbOgEEsjiQNVurgymVfnU4IW+tAdDjUuAfls0QuB+E=;
	h=To:Subject:From:Message-Id:Date; b=ShnUIbywb21CyGFpA4j610UMybg1KR4Nxoce2xuh7klSorZUgU+1EoaX5O5f64b8WIeLvAVF3nNySA2URjYKGdHbDCi8pDP1K8Q7JjTBtNT02xQedgyoh51rhoAdt12D9+4p4Tk7RMzAsaQByKY6cjZfVYDy79VWMY1MOnhC+L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrYC7NY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrYC7NY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4626C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788420633;
	bh=hEbOgEEsjiQNVurgymVfnU4IW+tAdDjUuAfls0QuB+E=;
	h=To:Subject:From:Date:From;
	b=GrYC7NY464UNrB/BrZLYD3b+AGV1s4+QjxcX1B9PsAS66uJX0Q8rCaNy8tz0E4l6M
	 BY81MR3vdkMOZRYH9cXAlEaxA7VGL9kQFyTM+GGcqp65vb5J5pjtS1mC3h5QpYFIxM
	 ZShRKjWY/wPxVzP4IC/M9YvljdXzD5s4yxJG+PD/Y/AUbg0isoGiRaLjjqzG5S5EHZ
	 tiXPDB2czePA4AoaIY/8fjiQb+GJRs1+E0fNWVDbCK551h/cw3M7mUjL19ZukQ3efD
	 2P10aTxjtoWRkjGMz/rEJZZC5/0/5mmtMu5N2dMn6Mw/q1H7y0GS+OgFgDT4cBDRiL
	 gSTO43dYDQn1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0350C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842063369.26313.13174274245117379625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1c7bdb0277c58c188332cc7d2f72292a72eac02a2633ef2066936181c41751
Date: Thu, 03 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788420633
