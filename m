Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E4E374756
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773594894; cv=none; b=GH5YSbQN86QclaI2PQ0EIH5nFSVErTIfzwNXCS1L8pjd9AbyyNRpiluONA01IOH1VcAO9XxawAOjiT1uHFs4Bh1pgx98eJKcl5Rfcw7R3YHj6MYyOVkkaPTDoH9uqHFPuZt4n9jDGvXVE0fbcGQ8eREsg31f4clzZ2afOP7BYRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773594894; c=relaxed/simple;
	bh=AdjXo1EO5u8hZ+UGd5TSfkQqEywPg9/KIclts/w+Tfo=;
	h=To:Subject:From:Message-Id:Date; b=hsaZh+pOH8ajRpNFBhOPDOse9DxGGYcmvoA4VGHOjgye3OeUnTzKSXlxJ+AYr6o6Z7SreCMpokYXeTbmRYMqEShDNsOD+8h9vpE9mEgyj6gzaCKP/6emA3WeqNlz8ANVuD1nmJanu6rtRt4+KkeiHJP39CIVh9O1qB8bjtDJwoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk14hsdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk14hsdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA2BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773594893;
	bh=AdjXo1EO5u8hZ+UGd5TSfkQqEywPg9/KIclts/w+Tfo=;
	h=To:Subject:From:Date:From;
	b=tk14hsdiBHgLdNgUmPK0Yb84cuDFRDTIvjUS8v2cXciQD9F5vBCnKy41axuhbf9uc
	 Dk8KBkVs3SC7jMg8A3ryFL+Ku2E2vc7E/b+FdSxDJAfmR4rB06zP9UfB8rVHj2IXpG
	 x83rj7V2D2I5UJr3R1vELhln+1LjkHQieC7gqV9JDwRjs5t8XI+VlUmarGavUOCz1I
	 kOVUwMl6uLeDt2DGL5XsXDaMUaHL55ASCLFBnL9UbLVCv6iBLwlVG+oCG7wHF8oTdY
	 2XeDTbah3mH97vSOjVhGWlk6r5ahlRbaQf4ZABErORbAuzMrsXTZDZ8dcRkNsTUFM3
	 5V4aoOwCZYmQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A1EF3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359489358.23697.10507695453831319306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7d55d4576d0cce8eeb0f2f9ad5d9c0b00c6588da9c1a466675dc5a1386da14
Date: Sun, 15 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773594893
