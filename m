Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241B72EF29F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751471994; cv=none; b=R6Q2/QHVzrQ1cuz604EZsgjig4dldOwdiE6wSXR+2fczatUREOPdhQScE64xlPHLrsiQ8x0CihSqgoadfiiEzbJiXV8aqNyzcv1acbgQx1sr4rflUPJB9dud5CTVktx624JRHqAamEULWJ4A3nfdE3NCBGgGT5S+0PIeffLriAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751471994; c=relaxed/simple;
	bh=bMy9gtdK+mKRk49orNIvdqACXj/pUec/rKT3S6LbHQ0=;
	h=To:Subject:From:Message-Id:Date; b=F9RnjGDygr6h/asz3hc3z/8ox5GIoqPCz5kIUZlYx8fztefZHeoaquip1LhghJu4YEVrNGcY+hn7sYly1B6HIkv2/ylTYSHFEl33HL/SFdnrU7FA+bs6v3D2rWwt1j7lPTDZu6JiOmeRs2sjYgptDaxm+U9LlqlPZ1wNPYAp44Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kY6V1Net; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kY6V1Net"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDFCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751471993;
	bh=bMy9gtdK+mKRk49orNIvdqACXj/pUec/rKT3S6LbHQ0=;
	h=To:Subject:From:Date:From;
	b=kY6V1Net9B/jHW1YhVzbkH0Q797q9DRmXWRmZsWn5f2Tv2rwoNQ+XoVwWKcBxodgP
	 bwzo2BBlP/fjqRk82AEdXAV3qyWPaKeyCGAFHYHN+vjGIZoHVnwqrxd4TeVEvazHxj
	 z7Gi/MG8doxJFHdIByRvXI7tEf+UrEkPkCXOUQzAnhy062KmLdrQ/2E5wpaW7CtZUk
	 wcgMr3AWKAHg1hZgawhu1EW6YhFXL+0mYl8ES7wjULOs4At47D9eWsX6BWn9HSrpki
	 ItzicONf55fjr9jUHyp/KD89B3Ga2OibEmJDiC6hT7137hk4oK+xv8rP0m5aoUrvlJ
	 AuW5Sb9t8gB9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE79C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147199357.15275.1563340394939386642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522b8bc9ceed773ae687a23812f6a9d695821ccf12568422eb545947846e4664
Date: Wed, 02 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751471993
