Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9FA77102
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729214754; cv=none; b=b4S0zUWYr1XB5uZ8CyTd3FhGqYsjCcudt11hUVWriYTCOdvvS8txI1KyBU2r+hgrgvclmV4U8R10nX2MXl8+gVSu7yqbzZNoC9WzRumlnnDQWroFAy4JYqRghuHKq5J8Jq3hL7C8IxcLdaTxhFJ4k5rSmvj+/Gkcx4wz8hyUfPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729214754; c=relaxed/simple;
	bh=TmTMOdx7/IscGMyTvs9S6BKBhAFbrw3uG4zkS4Uw2f0=;
	h=To:Subject:From:Message-Id:Date; b=SCFPa5FvRaiPo0yB+54Ej+y8GpUHf/hB5X+phKSj6zHVC4iuEeLWZKoafyqSpSYm9PQWZr2LAgISjo0C6m5gEw9wzILi8e57ZZVlUQVypN4hCGOPXn9Iml4YjTKvCh/Myo6be5CSFT9wYT9p0EIPeuf6pQ5IVv02IHfOX6CvBVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZNRdbOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZNRdbOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE57C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729214753;
	bh=TmTMOdx7/IscGMyTvs9S6BKBhAFbrw3uG4zkS4Uw2f0=;
	h=To:Subject:From:Date:From;
	b=NZNRdbOMwEX8DBLZH8EVHu6M7Kn64tXJ5+dfTebecuzw0IvkQhVX/tvK+L0IbKBC+
	 F2lag8NMgPRrqU1meGCeJ6hjXug58GNxdFDbHHhrj48oo/aJ+2G2Nyc2d2Y5KGxl7G
	 qGfPSc7KCsqQgAvdJcvFTvIAn9V30Mc4TvdYS+8civchuK7Fcu8tcNvASCzfAK0Jsl
	 KsalFAYcB44wvcPsjLqtKyIEZPGvUw0UQdUSIgQEI9ArmX5z5gVSlcfkTHlHnhFPdD
	 9kmcnTr7/ZoRfIkWtLqziY1L9n0Kh55jLtvOUNArfPpfPu3inet7v2qS/CNNgeHERv
	 rKIPRkC+lQQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E34D3C53E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921475358.4412.17861303961881048965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad55beee9eefaf2b66eb95f49a4740fe4c9dc46be564e813b2734615210b8331
Date: Fri, 18 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729214753
