Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6212B1946AA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748020794; cv=none; b=BsXxNzz2B7uJrHWc/8Dbb3VYxmnFnOUt90yUXS47QjR+WAx/Io1fkKrjHs/mauslRx/F2XC3UIX77i+AnkbsoKosdw8OapP4rwLEeIj8ACNkUpuenCaC7MIHvB4yWkGzSvVfxoBw/Tl0T2byohNoexoU5iwlHELQB8PEsI8P7es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748020794; c=relaxed/simple;
	bh=8ldwoyMG6aVpl5WgnbhsL46SAoSTZiYfc3AK28jHdJs=;
	h=To:Subject:From:Message-Id:Date; b=GdilhHh0yTXsQCtepXi7mmniV5wGcLWVkjz+fT+pxRAr8j8JMPEx61qQBgDs/RyNRT/jmZzlju6McPyC69Er+z/I8ggFXJcz1MT0HVrz5jdY1FZiInOOYi6tyBeIOkQSz0fJLjv/G4EPmLZAWxD6CPUqw6nKzfjdimrZ482Txck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kh1XYr10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kh1XYr10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86A8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748020793;
	bh=8ldwoyMG6aVpl5WgnbhsL46SAoSTZiYfc3AK28jHdJs=;
	h=To:Subject:From:Date:From;
	b=Kh1XYr10Cq8f60V4idaFKhLsT17MKBpAZiEbYKun2WhDSZGvXN+gU+oopu4xPaDbT
	 HO5Ybez5cJa62tJHuakfkCOTU0Z4IPvAE7V9BbwHXTlnl5eDIPnH8YvaP9FL9wv0wK
	 K4kHQm/l4d4B/jCzgAITo27OO23LOlr/VdDynYU9dNu8xkhLQYAz8m0HYI8ylDvVGC
	 iJ2P4h7q9x70UCg0JaVv54/kzsg7QUFUuViCMnFQ0oP/56JRZFm3lPlilZyJFreFbr
	 TC2rlgJJVgqSHpaUbXyWViUsEfp/YkZ7KONx0GVgScdZTwK0tpngAf8+tSUpZBY26u
	 L8lHot2pcUmrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533DC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802079357.19900.16663006348075824372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc449a87badaf1bf7dcf0cecc8676fb95cd751600752567ebed945d6b901ccf9
Date: Fri, 23 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748020793
