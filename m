Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2131A184540
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762285195; cv=none; b=f/eaQLNUAzZmgBBPconNAaKHzuuweIXyom6pLZyOpDJqXgYRpjx4/HLNtGzs2zD70P3e+ggGIX5TLY1f/g7AeoKUgLPZ5KIvGZvDRgwtR0ertKmYFtnx+/3iGwztsQPjLG0OAq8tJPHydcf0UKDP2M9+Nzkm3yM4gQgyRenC8jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762285195; c=relaxed/simple;
	bh=eN1jC/xXBGgTbito4gjLAznUaxm/TjtXxzPsRDqwBgM=;
	h=To:Subject:From:Message-Id:Date; b=lLy1gWEWkdE9+E7SifVL6t9WQK7CCsL+YEzvT1USF5N7TKdRMehAj63gJ36na/B/lgoGSytx+Is9WQjGI00yAWpl8a5TGQXPay0hSGRgf8udv5f3gToMHTfVbqCUJD4Em4suNMcTjIknFCUDw9QJSf00uFkm4i0XZUzLm51yaKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKbEGuG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKbEGuG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346CC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762285193;
	bh=eN1jC/xXBGgTbito4gjLAznUaxm/TjtXxzPsRDqwBgM=;
	h=To:Subject:From:Date:From;
	b=sKbEGuG6NEG2Kbv6r2ZaQE8iCQYtFMmMfkumTVwv06uZXnzVPtj9BqtIuSvKGYRxl
	 PbgDkuprj/f/o/lh8DqCFtpSpTYnJ3TlP0Pw+1ugqzsrLyq2WK2FtC79eIH2DG7d8q
	 xQC3VMBw6efoXQ9WQOizn+AY2rJ11SMQzC/R5OVUPWTAtjiNNHh5KQVBCy71Mtva2+
	 kyAWlNecb9ax/800bDMVQImxk4BRY6rHzqeJs9isQJzAJh1936oziIxrypZ9ysJAqK
	 6E3GbmDaQXZMAg8PWmJLOUJH6IyZQnN8sLj2ZE/fkXWZcN3nRByJlOEMfpUzfb6FMb
	 pvY8eKzqYscyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94501CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228519359.30790.1910718085884052073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d986513789dffac2771e70ac1bf5ec64381a83a72db61ea1ff8452ab1cb6631
Date: Tue, 04 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762285193
