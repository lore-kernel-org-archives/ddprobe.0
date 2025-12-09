Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC322C08DC
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765297374; cv=none; b=e+mEYSh87dBtitCFrpWi2+Vstd1bZdTtnABGwj/0t71kNROFDMOdiE2ORo57CCT5+SIA5lX7jeOmeXNJOvFmH/yIf5HZkGPYq6fJQ5DEjxKDh3did39pn1y64XCuI107BI8gpu8nngtOqaKOB0jJD/+iuUiy0jNr3nWCJrFtf+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765297374; c=relaxed/simple;
	bh=aBN6IfVmXHxiM6ae5EKB6jf1+oHChVI6EzW9omfyxR0=;
	h=To:Subject:From:Message-Id:Date; b=nAswnZvW7gGZIy373uH/dNHaMHZwE/B6o4Kjp3uNE+8Q1Uigie7hmdqdWBUBpJgDVZZ87OB+84lGtPS0GRePeYrFBvRW3o0A9zz82E1nnT3NHlNkqr9/WwFqOXXwVMAnkwB2+PhZeqCmY2DYQ98d+dPhX6Kehd/WpfND1F4cEkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TC4x/9bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TC4x/9bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19DC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765297373;
	bh=aBN6IfVmXHxiM6ae5EKB6jf1+oHChVI6EzW9omfyxR0=;
	h=To:Subject:From:Date:From;
	b=TC4x/9bzOpnj77hmXkAey+5UXW6SqVBY5Trur6JCWdD0pedvFDsZBRx639zmNRJNl
	 +pKhDGxeyBnsQN1w98WxB6r5egHP24MCavnPV9bJSLZ6Z14Fj0+fD6sdPwwvzuvhot
	 v2gSGlclSM4fLpMoGCWEZLDayEPiZXBLZnyKcHarFVcWWIQe23iqemzvDNBrSpKDzM
	 fiUNhppi7ilwGMKpA2Ph9FpQwGisBfXJQ/9PWs7FXz8ibqnSpOoQsDdjmjBQ6jflWd
	 lqsAgL3zLlfzpwIhjm8pl7qILbjZS+Bz0+f5KW2NxuBAmLge5S9cP6h7bF/f77pyHk
	 bCOtkK1qRKzPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A6D3B7F8
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529737358.22705.4474385450415730267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c69c6ea02399ee85dfc0f2a71d5ab525d8180dd4125a1823d6aa299f681b414
Date: Tue, 09 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765297373
