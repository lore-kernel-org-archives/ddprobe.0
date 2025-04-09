Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2DC2116F1
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744234796; cv=none; b=AZxyqAa/3uC6Xa+vvPXpIRvM7+gAAkfKmjc1LJC4o/JczycoWcyWq+Yj0BrApR7N8FvzD1WC3jPpht4iBCA16zb+345PCj2G9kSGA+V6SC/9uj1GxytBD4eHFatlsii123RnG4H8hcCM72tTtzJKyxVLFQB5w3UjqngRJM+ajPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744234796; c=relaxed/simple;
	bh=5KTyKRQxJ4HEjqi0pcC7KUn66oeGW/P38ivI8p3rvQ8=;
	h=To:Subject:From:Message-Id:Date; b=Hps1+AJY5qaAD5niGQBrNeI2c0bTHpdtyavDqmhupfo5i/ra1LC85oNExXjiAruWm6vHyB8GrAxWR69+YRvgjDHQGzVpLsi+B8Iq2XEpa8SszyzlPDoJHPaYjqnTjh7tPhE4bCWratJuxaDZgAaIsddDLHXwSAib6353xoZSvJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwLz5uJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwLz5uJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4178C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744234793;
	bh=5KTyKRQxJ4HEjqi0pcC7KUn66oeGW/P38ivI8p3rvQ8=;
	h=To:Subject:From:Date:From;
	b=dwLz5uJaEXELZueADHiBSjqzxTIOp8SqtZ14Jk4QZtNTKBj56k0CcRTE9S8Jmq6gf
	 rH539GnTdielaAlXbTRKBUZJBbJ5jjCGWcaPlfeXCoUc12gVf9KOZyatrRwJPz5RlD
	 DxMf45ozpAPj2JSf/eWYl/N14+w0iU4G1V+4SrR3CbPUScb+NoDV1FbmbtmoTEkw8Z
	 e8/D2BdGfgwSaeKKse5SnPkz8xqwg1hc0JTN8JyRAP/AUavXeqiGaevkhsJfelhlpr
	 YIXF2H85bFmT1EDl4Gx36Ps0V5NYizOL94Zy/weUSZnb/y82R1xMx77XCzexDv+gar
	 t92uiF+TVzxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEFC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423479358.9544.444418762090811297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdfe6ffec626571ea3126e1c03883e4c215777eef65cc37d2cf6acce77ed6d1
Date: Wed, 09 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744234793
