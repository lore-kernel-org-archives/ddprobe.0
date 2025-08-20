Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1C719258E
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755719394; cv=none; b=BYLwVGeNKVK+SyUgaksRDVwVi1fv5j/BiazludpxGJCzcu+7yepWt3VYm4tbkM3quh9yrucSnInFVp+2/gZOtHI+v6XBEqaPS8lmjnmDAXiyyA4NwsDKLugtHfzpFKsR0yWyueqk2caF0A+D9YLgCsGWAAI9gyU3lWdr9vP8BOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755719394; c=relaxed/simple;
	bh=qKzfr2mD0UOXjwEXTkm87tAMXOYaj90De2P6Uxt3vd4=;
	h=To:Subject:From:Message-Id:Date; b=Bwq9fvS8b9i9+dp3Nhv4WcbyaGvHEhWRhTf3XwtrQhokYsYwBGyivI3dOuM2EU79ikEH3N5t3Jm0mv3bCpfUq0/8VT+4eG514VDX1njQM7dEBuM5RPDCpWhwglAxF3GcMR1SjYgzd3FU1M/x/lp0MRrNWl4UBywk6B7ntKUIlhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttBJ2JGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttBJ2JGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755719393;
	bh=qKzfr2mD0UOXjwEXTkm87tAMXOYaj90De2P6Uxt3vd4=;
	h=To:Subject:From:Date:From;
	b=ttBJ2JGxUekLCFyHplBBQiPjoefy7xAwEZtAdg/EAKQcpQe2wqMjrrLaUrUHpzkvv
	 UbZTu8HLfMkHhkrylk8bY5mT++9uY3x6cnb5Y3hPVzUAOIhbpjsvok9RdvJAz7G8P7
	 kxE8e7zdXBKonTXKeTQ6BoZ/FJKpmhsIj4hZxa0pKxFGEKYdsnCE1lLnxuGxxM3cK1
	 9HO8y5JLUSn0PZn3qk0OzNcj1oF6wwA6EpkcrXlCeRFgSQuzyIBvSr3XRflSUkdGZg
	 Lp+dQFfXanjQG6Sf7RGvsF3cIHHoxhLBKVvjyym/gdmleGKZjDdR1W+Jbf7HvVENlK
	 3XO7658Ohy7CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92553CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571939357.25657.4419482332289852361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c224da1ab84602e7063e43eee209e73f49fb4e4a91b862ef27cc8b85c6f9fb7f
Date: Wed, 20 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755719393
