Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29655433A0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732723554; cv=none; b=Seu++MsF9YA3hjFJ5QfpkReb2KjCVeACJs6NBS0xGeQZEiEps1eHmky8NqmnmD7d9sefY0azQq+ZANfGChGs6HPCyFK/J8DnYyJuKX8B+ZVVtKZk5RwPibzPwPpIzi8HB+EfuBzWJc1UEqTIC0e3HVv8M9Mkn3gCT6rbo1lNgSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732723554; c=relaxed/simple;
	bh=hlCl7hq1x4TxORpn9AQsb6uJh26QESCX1eiklIlGWz0=;
	h=To:Subject:From:Message-Id:Date; b=nNYTzM0rtehDBoHIh/rZJ0oe1HzyEUN8VyKELtIQ3wDbQIlXcojy4wh8SXzDNBW6zWyqgoMj+rwLTQiO4a0/Rg093py3R6hcgR5lSXmcMI/3T49UlO/tRNr1cwKXK26Ug1qbMHvzMdNgIdmiIVh4cu4BNQivACNlgeIYTp1yRl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roJc7FsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roJc7FsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF72DC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732723553;
	bh=hlCl7hq1x4TxORpn9AQsb6uJh26QESCX1eiklIlGWz0=;
	h=To:Subject:From:Date:From;
	b=roJc7FsUxpzp7tsU/d8TYJpXp3GXT3NE65YptA94Lc+19g9XK7mdJS4i2S7PtlZUX
	 8MsE6m3/V+V1a/wTkSopB0GUtYlcQT42zDPc19NuxotBhT4tL15h7ZBCO+nVcSNNz1
	 51t5qcG50mvu9mqgsek6B2o0LRFkNxYw94JaxOEn3Mb7CRoLKulp7a6jwXMc6n5BnS
	 kU0q3pXZ00nDfVPPPAhLHcszWYUkShWA3D5zmK2cFFx1GGjfHWSYqYUAOP4+h8SUUC
	 z4RYJnRPZUkMXwBOnMhKFb30GWBN+t+f3OmZgfnwOiLXwAaMmvi2DaTOc0+n1+fekc
	 QMMVYeK0kbv0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940EBD6ACF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272355359.21008.11799330819254181631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b53ec784643e51c6397331056e61052c949585615aff857c5513046f233debef
Date: Wed, 27 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732723553
