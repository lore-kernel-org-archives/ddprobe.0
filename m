Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335BF2DCBE6
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747978194; cv=none; b=gKuF6x9rd2K7KlqoBLnb+Nn4+aVJr3jO9OB9HJnzJRj10OfycTiIcF4LRcuhLgSQJG4AVJd3oPL0nZwjXDxy3E0R86PQQItjrjlGxANhUOXQmw5xYrRSPRB1xsfmY7VOiN0xiWJInnT5QCZFJr8/BbsBURozg7nHLk9vA39NN5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747978194; c=relaxed/simple;
	bh=G8FrugzOpANTiugT5/5WT5VjbSwIj/2yfV/RafK6l+4=;
	h=To:Subject:From:Message-Id:Date; b=UYTU+R979+l7f9I0fSakzx8ceAoD50Z5K9kmocCTVhJSseLhsDApGZk9P1CRiCEUXURGY+ngLd2MwkgA4qn8JJyg/9VWQF/icefai/Uojg1q27OzxPUJY6Vioz47kLkt0t7Fa4n4KF5qCfp8eXZARZNEjlSTDw/kNdZbFuk1V18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISZcdabG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISZcdabG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E2C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747978193;
	bh=G8FrugzOpANTiugT5/5WT5VjbSwIj/2yfV/RafK6l+4=;
	h=To:Subject:From:Date:From;
	b=ISZcdabGfIZHoiHck30dztg/yQ/cvmJnOL2KpZgyiKxjHDds0Zw9EbMezTqx6HzU9
	 68rqwoTfi0gH8h3H7h1y/9s4vw9pSlBl8EjOJAO61AK8yue+NBEYmeaiAPd6U6vQH/
	 hpjLsg5xdoBqdP7MkPH0mX4flS/DAk8Cg3s03KOj5jU1zrXUimOTzjVrxyXUF85TEY
	 nbxJupHppyWHjCQLY/KdYt977P/m4uTVvvEApinUWmMm1R/8p+HAl9frxWyhiF5EZ/
	 3Lbn+QGSop+fwOyuh3aC6QZ4o/2SR2YhqrvL8j3298rBR5N9KPdeeAMfMqdnEh2oQc
	 77c2rm26fTvhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C61C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797819357.2633.15605826039194661621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9bc3b74cd989b6974bb1283650a206771377b5551dc971c036b98928d654b86
Date: Fri, 23 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747978193
