Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D083C068
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706473097; cv=none; b=ZXKnKG2exeFwQNmAaJtTPExDqcLMPNPkm9qUIFGB082QWXEazYmUhnnLhHh3kf9YYkhCgyEZo/i2Z6tN0DRy+UEbqlhQHV0FE0LUR0gOIsXRtFFxlFgI4GfSXE7ZnuEFFzxJUczxbjmv4aSP1W+kha5lXqo/IH8aJNipO+kCVto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706473097; c=relaxed/simple;
	bh=ZYMjTKbNMoegHoHuKtBK/epuELTRZ4LzubuLYdt75hs=;
	h=To:Subject:From:Message-Id:Date; b=BDqsa2EooMCA9U5C7Zo3NJHgAZFtlNt3G+hFJ5POhLUwQQp8BusQ7zQzb7EPaORyTRckQFLdUkDTznrYmTRkRBdV+4IH7Umk6W9bFnXc4UotjHBkVc0Ie/J/EzGjy8SCgtRR5NLhsLQOmnjec209jBSpCHYHadAMXkdfERf8LFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PziY8jbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PziY8jbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79545C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706473096;
	bh=ZYMjTKbNMoegHoHuKtBK/epuELTRZ4LzubuLYdt75hs=;
	h=To:Subject:From:Date:From;
	b=PziY8jbuvkXl1tjzQ2nTdqVsqn8ytsutlNRtvm+MuzRAbOXY5s+T7L3PIPXsCUscj
	 g8lytGgeDYd+jZIkKRTkreaG0VzoTb2M35YpaXMKYIGqMz39TrTKBZK+COKz10dn49
	 9xJIbJYk7k5nCuWR9VmUP7/deYIbDTzEyZ/pCBIqH1veG6M2j9vBM0r1eDcT5eRTSp
	 1BI00nH4xuQ6v/iKYO5s/0G93mEJQa7o0U7pj6+dRTKR5ItnEB1bUBK5dO/UoN5iI1
	 M/Ct+cMRapfokaIKuJZxlI84QkHOyA35IzZJabUNnpMe7oCp7NUMs+6iKb5EF0w378
	 UIsf//bzkl4GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB6CC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170647309637.27187.7600971787098987889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd4e88d19f9622ada148f557709a98cd64237618c5d66626c53e9bc48a6704a
Date: Sun, 28 Jan 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706473096
