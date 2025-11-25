Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430671A9FA4
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764100974; cv=none; b=DA88uLH1aAcZ2GJ8PIhmbxMp9elNRBCvc0P1WUXAtPfZ9zAYP8YvH+D8zgnD4FyzhMwVBbLupdYeZxa+NfkToxRjA+io6g9rXAC/ZsUe0uHmwQxjBFd+5mC7bSnt8qsNs/xIgHKKNSz0YYwhfq3cA73Pv9F1zZGf10nLFlK9ZG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764100974; c=relaxed/simple;
	bh=nuZzKYfMnuHYCt9h55kVqhs3IfdtTpppWiBSeCKoxeA=;
	h=To:Subject:From:Message-Id:Date; b=IEUm/QKATbMlfL71u1EM5xHE5f2CtwIijhh1d8bZjHNxRrrGiAwvG5jdnzNYz14UeT3wKykVIwg8dXdlfIhs5Z3FzpjLNVe41h9ZkZpsE9kpmbcVS12Fl0TPZJMeM6LJ4G3TRe/gbfpzWw30Wf6waQbqEmZuDWrxhpE/HgkU3K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijwkHQl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijwkHQl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79B7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764100973;
	bh=nuZzKYfMnuHYCt9h55kVqhs3IfdtTpppWiBSeCKoxeA=;
	h=To:Subject:From:Date:From;
	b=ijwkHQl96RfhA86L/4mSKwJLapgSWffVapSsRvCy4IgDTSdBFvYCG3ddnAGmJO7i0
	 CMLYiI3AhuaQTfPfKDzZ5FhNIQuYwZoS9JBBJ9w4ODUeHCb/elsleRBTdXkTldATBP
	 V4LxA8VTuuVe0UlvQyODZEWvu2tHgidkyEgwGqg5vtjb9CM3BHAWqCLh8YBBCxazwy
	 MT6aoBPc7guCuGTnpuwmYnP33uM16lgi/EGrOTp8ZyoiZhcWtrog57YpJpF00fl58g
	 HcNwvIyKMC9d4K8zwCvnJjZlwkACp0FifMcbXAwCydk/DEvnl1MkA1/4oKrDjGQTTm
	 D8zejE2o7THLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A10D0EE13
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410097364.22607.1088053268751023045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf8fe98a4b3cb7e9535ea876377edfd4c683aea7d611b1cd1809cc839e6bc3a
Date: Tue, 25 Nov 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764100973
