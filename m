Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5148C40D598
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781846794; cv=none; b=hXhY9omBCUQqdisF8A3fYICXGHeoflQL1ElV0meZo4aEOEXZQfL3Qe9bQB82hOljZ+TSRITFVJPEDGrFjgZIrEPVTnKXZ+eMBaH/pXsiVZoCoDvt0/uSgpGu4SiWLmzz2opxsUHPAewCQAns449x7028Fu7v7uwiHvJZrO/+ygI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781846794; c=relaxed/simple;
	bh=cjvmRvayVm0FYLL92pcHNHi4CqB5oWvAuD0X77xAwGE=;
	h=To:Subject:From:Message-Id:Date; b=QL9E6LPZqSkqpeCed3Xette6/Bwgxv5uLMdyeOgqRZB43k7jMs3AJWiUD+w5gZdJILLF9EK5OSlLHCgFEJmJK1SF967Klm0j5qNg9BMSpXGbL4lVSig38UEb8buJk1WxejdlKYfhS5onMEfPqsTt45xm/tCa615KoxqqUhtu+Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cd9vnGW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cd9vnGW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4659C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781846793;
	bh=cjvmRvayVm0FYLL92pcHNHi4CqB5oWvAuD0X77xAwGE=;
	h=To:Subject:From:Date:From;
	b=cd9vnGW0QNDL1Ml/lZ49uygT0wXz/+xgCFiI4MROs5p3Ox02YClQISyDk3MUA/pYD
	 c+obbo7iI4KePijAaNRUD57BGW7VgGMsIX75U5CHmlVIOlOsaW5HOe7MP9RIHz1P7w
	 H9yEmRVp5lY+ujf94v6Am1giSRXsSJyyWbkQSeat5VA28fFfLTp/oXcJ9RmCJ9upYb
	 XjpmZcqP5IXrrOMFO+dXvwn20pc40ucdaiSqtnZV68dmyM4dh9bCskS5XRio1URZlp
	 bwmC0A0pUU1V+kY/W5cvrbFV9qf9eSTYhUZFEYOVLUMsmuZkeyv4sdP4eAJv5pIUaj
	 zlmP0X6HCi6oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1479CD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184679370.20648.10453027294537313250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4730e27bd99aea04c833903472fc525480860355bec3dba9ed0343b18d04faa1
Date: Fri, 19 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781846793
