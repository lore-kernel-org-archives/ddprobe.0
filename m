Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2252613774D
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751398794; cv=none; b=LTX7NWfzJnMHdDN7kioKNS76y6271JVlaghqP0URmCtea9aORE8gXpU1zWwotwwOLjMo0EDFAFmNa5nE/iDMadtItunXGiyiYK9RhipX7043EtGwxUeUeibBGbry0g4YknAVuNw3xsePmVLq1x0lhjNHJ5KKE8leZ2fa/Jvph1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751398794; c=relaxed/simple;
	bh=M8HLH9tVA3ZMgkkzlGDnP5PST1VXq/hhHXjVZaVqXa4=;
	h=To:Subject:From:Message-Id:Date; b=ne+Yget1yLJ9LVre7A+h22+CgZsEwDQ76AjwMQQ+RyOlN5PM6uC2Dmbqovuo74YXbdTt/TB8BxHczdrbnBR77eMPA4AJbywaKXl+BURDMWFq504F9X5hiveN8yuij52nMW9KQH9NJbCFa1Yp8zqpphkucUddspkWKLwIHvM7zaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kv6TXX36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kv6TXX36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D50EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751398793;
	bh=M8HLH9tVA3ZMgkkzlGDnP5PST1VXq/hhHXjVZaVqXa4=;
	h=To:Subject:From:Date:From;
	b=kv6TXX36HhovqvXDEfcjP/hlpjgt4G8yardzRtUew7Y7yVFY9bObiLJ0SC2IGwp9d
	 VexrkucE8RG1pibps9JROytbrYZan0npW2/YWzT/eU+bPtls454gbCIjIRB72WSqN2
	 +Yz7BoT7pppAsMGu5uG3r/i/thD/fJzONeqB++70bFn3vXKE84nc6PBJ2iOHTEOXLF
	 ZRSgo5u8qXEI4hwCwPXg+rlBMokf7FPsKH1vOM5Hnu9w2vstIwfJnfYg5IrVFDlKh4
	 FfMy39D4n0JhQyqfsfrcku0UpUEF6ApFFujiGwuwVmulmjKCpLnhS/9cmdMgSlzfit
	 ZeBBsZDnKcQbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE02C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139879357.949.10107146289975665136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 807c9444839e2d3a1eb29a4a6f474fc83d80716e620f19b290addb7e753c1413
Date: Tue, 01 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751398793
