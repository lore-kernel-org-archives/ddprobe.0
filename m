Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D46230FF20
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774086894; cv=none; b=jeiSzEG9+11jCKqKCTw96aETv0Li7AtHnkyhm9J06Jxa9DrqVY+A6z/ZtqELf2gs5wdDk0jiKtErZHq/oAPw8qVdOp7qK3tM1LXwVNCz6DADOyY125jAfNUy7u1eqKtRUzK6XbOCnM21y03Vj/pHsP51Kg1q1BOmwik9SfBAmbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774086894; c=relaxed/simple;
	bh=bhjQ8rxw3KgpMbbgl9NqjBh3l63XB4Jej4XAuEH8YQY=;
	h=To:Subject:From:Message-Id:Date; b=N8US/HGBfGhipyIqebaGBqojbzPfTFP9na5eqtqgjpnwskLPoF4xlQGEXX6kk200grtigVfe8X4ATiN9eBRhdedMqUv39h2LaDcnHa7Yd/QY4dfP6qAvW2Ed/ZSCcpS8emb8rQyA5xB0NdOv9dMpHTgbd6IxC5eDqUpd6ObBieo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucafJOym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucafJOym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A077EC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774086893;
	bh=bhjQ8rxw3KgpMbbgl9NqjBh3l63XB4Jej4XAuEH8YQY=;
	h=To:Subject:From:Date:From;
	b=ucafJOymnqOR01MncVYgUXZI6Ii3/eCdufkxLWlQeRwC4eZX9hOJVRhuYE88q41qp
	 BceE1xOt4uURz1ah18XEf7hUqofdaVMM39fzzwSS8TtTxnxqIOVc1s1Q5tjz0Q168o
	 HY/PjNEZa710eI8PWJO7H2H4b68RFyEJeGy9gLP7NlKQ2m9Ct3RpLZB5gYClMw7fkm
	 QMChuA95hG13uNs0eW2cRtu/HBwaIomIwYt0cLE58RJgOGZqVVxfoI4CdQbQOeP6ID
	 /OAZJ1obVu8isoyBbIXKqb36JHueLjI1MHuXyUrn6KOx2VtU7H8QTj8oljmyyIMczC
	 YrBG5sq3aXEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F61094468
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408689357.1501.7603888689259425227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543fb099c77a76fdc05c404f788b96cd0ad8e4f8e775a6c1548057aa8185b2af
Date: Sat, 21 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774086893
