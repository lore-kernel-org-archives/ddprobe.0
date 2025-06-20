Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F8D231824
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750427394; cv=none; b=IzxZaEUkpTrYqOdFQGjXyZd4n5JI9AWPhADpDh4S/sIZqllZg+0Hb5C9G1bMKt1+x1r/2OTWlV98XVZW4qCEv2NEUSUqHphPZ/7S43PNGOx0yDXQ71awja+ZCe5uWYY2n3OTpEv69CglK2dAyQknhYr0+kofSE39uXJg7Evse1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750427394; c=relaxed/simple;
	bh=QlbvSw0LyHG+vEYZVhCsAC+jxSCdhwbRoPydM+D+R68=;
	h=To:Subject:From:Message-Id:Date; b=r2XfQBapE+07y1TrGkT1h6Ye/65B+RW8H8vl/9LE6bTUCtPFWWNDJBgX95TH2n2GG1xPcKt7J+WObXqCZGocbthKUFzPzqCi/TwOGd5hJH+i7BUeP50FvpdL86Nk5ewfB0I0AUlIPzGuyLE9G2rnGdNFDBpZXgmBMcEEAarIl4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RC8aqbVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RC8aqbVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A211CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750427393;
	bh=QlbvSw0LyHG+vEYZVhCsAC+jxSCdhwbRoPydM+D+R68=;
	h=To:Subject:From:Date:From;
	b=RC8aqbVbUDnaR7XiSDz38LVqYUKvJSTZhhkrO1+lMhAjBYzRhMT1A+4iScCQTL9+a
	 6OTkDawwX9MMLugAUNknveuA79aWLMVL/l1BSQlTzIlTz8yxBtGQFHDDS5Qy5Qzqqp
	 zmLFj4wk5moxrFlCeT7/Drrp+l0LP+i3MWyN+SY16CNRPmiDd5ihHMZdlMS2ERj+Ed
	 gLcuHZYGbodrTZFANFKJRW07pGJg0eKczd2YnNGrDMOoUz59OIXT7mar2pGTyqwiTE
	 l48Ttchqqth+pw2XuVnEtqkPsp1fJQE9CgIt1OhIphzfD3QP0Qib0SD0wfEHPdeOuK
	 lGm4FIxeBqRrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE6C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042739358.4859.16549132078811326694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b59381e729042dd82f3c36e9328e5050a0b1c51f5b3d13d8af78c5209932d1
Date: Fri, 20 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750427393
