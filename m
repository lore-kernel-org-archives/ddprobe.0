Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A89175AD
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726491354; cv=none; b=CvAbXGpsWRStpkDVPpwCnWHO4w7RT7SCialXXO8ci0/1ujBTWUBzlon2CTomedItzNa8HW7sPOOUB41Ib3DGq9O/JX3ejHK2pIqmoOBne1rhZo3XEK4zJuCOMcFUBoktG+SfGxjnwMdfjH+2wHSDV95rH3hVWG4sILUnb/g1GPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726491354; c=relaxed/simple;
	bh=zBhTSbZTXdEsUfua+WZnTA3lYkAc+wQdcZd+pn6qvsY=;
	h=To:Subject:From:Message-Id:Date; b=Pww0ZeWspNDSGC0YybsKMToKUROABZTGtEZDrGr30QaGiN2K3HPlNgLGR/ND0o9A+z+2EB8X8ECTi9zVwPAbkgyothKoQGEM2OZBNOozBBzXexlzCUdzwLIlQXZviviAg8wg/s2sTm+8pRrx+/o/byapw0rAK7LKA1DXZXE4594=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QauIE8Yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QauIE8Yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3B8C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726491353;
	bh=zBhTSbZTXdEsUfua+WZnTA3lYkAc+wQdcZd+pn6qvsY=;
	h=To:Subject:From:Date:From;
	b=QauIE8YiVxsOgk07BIeigd7RTOl5XanTarbRI+skIKTTJXwu28nwHfs10qL+bmOEq
	 ZDh35hHsMQ1VzqFieLcDEGOpfOZfEO+c8hKioLhaJWxLqZz3oYMgWj5z1nCqLJjWWI
	 PpGDSzikt20OL9s9wLlrCHHHQCe9BO/LfGy0+s52DylIEe64eVdBNAILrYIM+gpqP1
	 ApzaraZA6gQ0wi2fVGzz2tYTdwXSKVZHdDnR20uB8T7CgdOeYI4Jvizi7GlIwxAyD6
	 Kb+vQ3Xxds4ULft5hJ+qQfd/aWH9TbcCGkcKKtQuskDYbT2l2vQ8/H1YZUGz2IOcS1
	 Iay3AR/E0DzWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A63FC3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172649135362.32535.2351352440348178138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd390ff4a216a9818d8fe1d7554a6464555096a07f08371bb88b88a5e303f75
Date: Mon, 16 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726491353
