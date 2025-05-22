Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4456136B
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747879194; cv=none; b=j9LRgP7nyCnwGwhvzCUTbwA/Ab2HpTCOTDH6Sv6y9nrANJt7WCEtYOTVf/f5R8bbN28H1R9mesVcEm3J7DZPzYfNI8HqYMLFVkvcqHZGblU4TuDTV2In7zaevzcBBuhI4y4G1ujMXsu/bd6lZn8+PZ9/bgfZOh1aAbFFTG+za8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747879194; c=relaxed/simple;
	bh=PgT35iFExmc2/7N3UOEWoAOzPMggQ9QdH63wtG3INr0=;
	h=To:Subject:From:Message-Id:Date; b=TAH9LL1iR4cj82jHNrx4j0xI+BeOGdyuDrPG+GFUqcpSZxXGxcir4TjUU8L02/sStSEWcRQj3RGNhVHb9LDpwIFCxP4oTnlM5aDgrwUlSbVIZD1Uu+h/ASY9fuaPc4eiPTJkRrXHLDnNwMSAPY3qnBYGnHMtdp3sC0hX21EDGJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRcAIDMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRcAIDMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0322C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747879193;
	bh=PgT35iFExmc2/7N3UOEWoAOzPMggQ9QdH63wtG3INr0=;
	h=To:Subject:From:Date:From;
	b=bRcAIDMmoMzP2eU6IEP7YbW33sZWsCrac7Qu0AyUxLq8PqQhTf0I6476yE1PDJa8T
	 VEfKWxOvs0E4qnImOb7yeqszPlbz4mjjTNhxab5sdAB04jXX/daXlb4oQetYafoCYD
	 7fQkZxiq8Hb7aucCuaE463r/V+O2IYW2ANf/H98pa1YVKpZvaSpGmJBldQ94V7FTiT
	 QRO9cSMz5FYe/3vaTgEAaaUTdO/rjsNcS4AVjOHiAI0IHbdWIorJ07WHGVEHPx0tFs
	 OSc9CxU6HSShZQfYbB9EdLneKG1l+33qRen6XCrCXtTK0efTYXSDg08qtLso1/YKtL
	 QGszPZtneMZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C3C54E71
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787919357.30205.11074389666537863856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67dd73689dc77aa658e41e17eb74004a5bcc06087cad2ab88a0e9e2a145d1ca4
Date: Thu, 22 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747879193
