Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D0C30FC3A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763629914; cv=none; b=IHa0dl74ayDK6NMWkzxr8/tz3W1iBjVe6a73CZ7CUoJKYvkzrch1g7gU1U5lasyi/Ms2g5rYnfMKfD7awdUZ7miBFedYYO2aMZi0vPSNRwqUUWYF5dtlAbkzCc3MpgRUEzD+tqlVUSSc1nAQEdXQHiYvDTemYZGTaaDEvpIwfyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763629914; c=relaxed/simple;
	bh=/tAEwOp8o3fCzybmTPfmkoYEzREx5H3GXpx931eQbRI=;
	h=To:Subject:From:Message-Id:Date; b=YHo5xeV8Nqr3CBM7czGV3HjgnELyTuRsVNiamGLDMSnk2EGzPb0ahuYjvFjarClD+xCzmrsJl2HCWJkDvI6Vhf2P7ZVziVUrG709j17sTy0CHVjB4idQR6Rejbdaq1AbLOOp/iFljnk1pcsFV1WMvIor/qdIe3qnOPNKoUgqUt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtZ0AsAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtZ0AsAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94F0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763629913;
	bh=/tAEwOp8o3fCzybmTPfmkoYEzREx5H3GXpx931eQbRI=;
	h=To:Subject:From:Date:From;
	b=YtZ0AsAfjDSmKmKTy2rDZLpPbVn2YPv9yXvwfh3i513ICyHTrL7+z/ycGkeuLF6YR
	 kpHfGTysvUh8KKxKPK9j3Mqywr2NDQaWhqxwqxeO3us6P7eXuwiTUqAH9aykAN8gZX
	 FBF/mm+gnc6nYa+N77nnA5m1p+MPSqKEJXG4ti4y/dGq/U7RGIKfXNjXz4QJvibblh
	 vq2oomHjFMqcBRziFP1Z8kvOUh38OOQ6wo9UPkN7eViBUW8kmn+TKJ/L2XQPkSYE8x
	 zOfD0/fbG3PSU5Db/QudodxEtfgBTQd30va5Of2+MzSymPP55IyqD2ur9zdjtvM4kT
	 /kQ/wv8SQrnYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A3BCF8564
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362991360.24992.7248263626150421574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d825083bc40ca9216e1533913166e10a6f43747511575d3802bd93afb576caa5
Date: Thu, 20 Nov 2025 09:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763629913
