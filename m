Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2AD38645E
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788507634; cv=none; b=BT8be0icVf+OSAtTZy/Qe6EmoqvCTqqTYrg9m1/69XfndVUkqDyXDk+RDnw1U9cKppir1g6j9sK6XbxsWyB4oLjNoc1dLamHehBcBSbdCDiH0BquranZ7CnyQMgc8DbktCpGsnqcuCHNNfyuGtgYbzbCSolt0F2r9qbXXQyuxY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788507634; c=relaxed/simple;
	bh=t1b21THy5fNbz8xA6q8ERVZ3nSbGOkyQ13XH9yEnuTI=;
	h=To:Subject:From:Message-Id:Date; b=CESia+lgskUyPhRyYjTTmB6ii0M9vokjTygCdsQ5dj8fmqq5e3d+lLbNyeTGaQzKqjGhmCC5IKHkzzfPPMerezdHUx6PAw+UyMauxkJHnLBa77ySeatpteynr69VHBWdXzDAe71p1s2lL5crW/Rs5zCc5W3zIs8YDi0FfiZD8Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvptLJIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvptLJIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6557C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788507633;
	bh=t1b21THy5fNbz8xA6q8ERVZ3nSbGOkyQ13XH9yEnuTI=;
	h=To:Subject:From:Date:From;
	b=BvptLJITxcgvixwQQKEQe1lbEyWUnzXZETkEFmPlD77c0NMXahbys5UYBhNBfI4Pa
	 LGkGUDBGCpi/ZYWED4CkBv2VYV1MMUOF1JcyNNyfy2nrgV4tHSm6zrI87M7ohppSop
	 95U430gqeVbapNysiQ+7K3RA3+MYKtUkKct0MkhkC0J6CC8LZFdSni/Ft8wvzSJmlu
	 m6mprBkhMORaCTzX5R/T+Y0lnMDVZeVrn95FAq/Iu6gA7BDfOMEQ1EtKPMNWXgksr2
	 GPtvP05LiQ/dIhb41cFozkZuan7B0sdbVz3jVjEUSo96olsMgnDoHQ9lWAifvkZuop
	 chVbSbioAVJFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8DC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850763369.5619.17846094055179077053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c644678f11041f154b8f4690deaa1786096b0457f96a8b9de1988ce01e27729
Date: Fri, 04 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788507633
