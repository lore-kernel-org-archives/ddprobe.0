Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E4619ABC6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769654034; cv=none; b=Gx/Db/4UzeYTBJalaC5hJUPYKJqGPsgTM5a32rwwiA6fUsudY4E7ZkyFKlZbjNlakis2ECDrJV/RJcdRm+vKaKGe+wl+1Nj3Lr1pJ0A/HeH2PdVSNPDfYESQyR98VWkOkI5kQuBD3ihcM/77z65JXEzHeyLlnkNVHBDvyp/K+lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769654034; c=relaxed/simple;
	bh=vIog3GWkEfC0YRapLMEnBYvDtHmkPbTx9AVvY49lFgM=;
	h=To:Subject:From:Message-Id:Date; b=sXbvbsDhx8KBykucRFxD8AQjqTyQilUhae+szZ8oVXpySKKlQRA+Lo8nYEw7JEmF6QGmoe1WkIiyda8YMIruvE+5gEQqzc5M1rkfIkijCcCiLo/133PVATeB2jE4y3HjnMPcwiY/08BKR8HP58Xoeis8oivcU6Erz/8c7mjwfKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4waqUNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4waqUNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D45C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769654033;
	bh=vIog3GWkEfC0YRapLMEnBYvDtHmkPbTx9AVvY49lFgM=;
	h=To:Subject:From:Date:From;
	b=P4waqUNAL9CFZxmyI3N9z0o9ZG2NN+HYoSQ3hR92gg+9wZQg54D+fdWJBNix/X4E1
	 9Gl5v/Vwu3rmb6xqqRIeJgzd3Zsuu+bi7s1ZwL83u72VcaeMGvfF/dnQQmaoiywIfW
	 CKenCLHNCAbgr1qDXh2odfxS2HUjVrnAGQkdPSufBgY+FwG6iK1yZ0JcXAiaWIUTYj
	 9UXzHS0ydmyTHpuPPcEJoK+P5M9crkCAhW5y1yvzMMuRMCVviVjdra+5t/AobmxxZT
	 /BhEz5inr99oC1MxZ+xFO0N5ybktGKw2OmYVs038CxPUM6EAjKKfLz+l1vcnsT2Pt1
	 2HyK1MO7EvgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F926D46BF0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965403358.18224.5948733175645601653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8146d4a6f1e425330c862906702eb5e72ffc3cef2756813f530b5ffbc0a95fa
Date: Thu, 29 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769654033
