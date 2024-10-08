Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4EA29A5
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728347754; cv=none; b=Uje+msSCmo1Ysrz8F4kNaioFN1XuMpjM1sa2//DgvZo9hbpLDB3tWFbE270jqZnmHoQTUQWqrdFrKa6hFwPBGzO8/F/lTfimR+Qnzel54AV23ZmjFNkPslFXZnzwD17AK3dGE8tze7xQb5UO1cgXMlzKS9RU3PgC8jaDcU3FRSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728347754; c=relaxed/simple;
	bh=GnZG+sJbD+oyIYf4u802CVqi3mGJ4EhZkIxcBhwAZOM=;
	h=To:Subject:From:Message-Id:Date; b=qhyoH6UcrcG5JwlhXbZvuGpMxj+g6eByWc48D4woarnXdvjBG/O4KgHWiCYGz5sGRdat9h5xU66UaXge3Flo9LRE5wn1yDfRp8yJRmV1ayLBlNy8X3cX8Ye/BfkShjp5dZLm82wRG753NyqZ1B3TvXuNLbjXUgNHG8oDz3IhMTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJfshxff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJfshxff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8007C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728347753;
	bh=GnZG+sJbD+oyIYf4u802CVqi3mGJ4EhZkIxcBhwAZOM=;
	h=To:Subject:From:Date:From;
	b=gJfshxff1qHMBykDVIDQ5ugzRWYgAXPktCF/nirgtPGwRpi3uCKQjCsg0hZ2tA7+n
	 bivL+YRm7dt54CPEkCIJZquPHqSUX2lfbndN1TRmyubBbbsGPGr/LWRyuj9xUrc9jF
	 PPuzeyi2ZbDkV7bO/pMeWdHkt36ShmSiM4RDlt7bqlgXMlru2Rqv3fk0CaCziPQzog
	 +V6D3A//aghL/EPyY/KVqKKz0VgiTZzXagaHOurx82Wex3bWs8mzwtpRUnjWCOihJ8
	 xKeLEwX9+Ryklbx+4qg/OntqDUzLSLnYaufc0JLIDqktMSP0wybjPUXMnn4m19lEDf
	 VN1bN1rvSdqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E08CED24E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834775360.7637.15642265177824317860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54cc85d81b707c8fd90a11b1cf17f80177e700ec94345a8e7acac29c4ee4899
Date: Tue, 08 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728347753
