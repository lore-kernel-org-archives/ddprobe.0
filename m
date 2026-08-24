Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB5630648C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787549434; cv=none; b=IQ0xJALfDkZifBwoPJuPExuK+KCI2Pot41NFgy9rJYhcAwsC+JwTmO2wb6uY059s9q+UTVPorGl8K/2OcArJj1DfYbg1D204bt3DUTC2l1CGyyJEeFIuy8rBf222v5qMQ/aBjej4klDqWz6J6+Y66hhHKioWG+K7KcMia2fAvtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787549434; c=relaxed/simple;
	bh=Z2paG78XzYvF7N7lI4UCvYbUEgSkIHPIWYUCl7224C4=;
	h=To:Subject:From:Message-Id:Date; b=RlyMHx10l9qKHwuK6SExGwCBaNRNjpPDdUXmleuRkTW2kK/opJJl1uCpVhU/l3ThGQ4hzXRWab6SYz5aJvfDx/8fUzZYNYX45CzCKnZq6AHqGYvqmSGdO48LKpXFUIADvPN7r7BPDRDejcvcRP9OSOlCqb0qeLChTbTLDavuPHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdpypKlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdpypKlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C19C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787549433;
	bh=Z2paG78XzYvF7N7lI4UCvYbUEgSkIHPIWYUCl7224C4=;
	h=To:Subject:From:Date:From;
	b=GdpypKlNUhtQ5gxN08PTWinamQ2O6BAxNQVZA3bV6tyElxgVfOEXJ7Xtwonwpcbzf
	 qXwEmCFEVbcOS0dnzWSOSL2KykO4KUk0vg1gkA+kv9/6F5ASOjUKuFIxfCm6LpKmh2
	 KTTJ2TPh83rdUlCo5sU1q2TovEY8fYRq+Qh8gHSe+GaPHuHYSwNzo+cDGH7vnzMNqj
	 64EkDyL1FBW7rI/3B2IgE4bEEKj+2GuhzgoKLcBUjDNeYmbEgm50EWMu6/pMb68La/
	 XRlZlQ8sv0FrN2u8TcH0faZfrTmRcR59RD2BQ5J+u5ftBc2v1eLy15Zj8/8lK3fS6E
	 Mzza5Lwhr+DIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2B1C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754943369.12076.2320522739248295392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f0c272d281bd6615b5a6727695f7368c2c9b60a22a685346cd1f5bb6251307
Date: Mon, 24 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787549433
