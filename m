Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7CFEC4
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733112354; cv=none; b=IePaiDpcG4HaBJXjPQqMeYxeto91YvVwgX9PrJyFxVorwLkIBEfkrtkoLvw4Q4eRcT4QdPjVJILfuitQ/F9zJMQbzcyzMsJ60bBxHuY5nvv894kER2ITyfs0I8DU/qbZDGYw9K9wEvFyL9vpCeTmXECF9Il8vGyFbNHVV1N4NIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733112354; c=relaxed/simple;
	bh=SJHl/tD2m9diCsxP30T0lnhPTOEa7xhq6Ml606tAs5M=;
	h=To:Subject:From:Message-Id:Date; b=oxj/HVx6K9p+6GzD/wGsI+HFDK9NDEKCwiSG6YbVZ7At13ksBArvR27NJ0uJ9Y5M8nlZlr9C0+CSeSEgak0Tj5mOuGNoHaSvURzS098+RxV3aEacWTstToST5y4j+5cwp+sBfcznfJFiww1tvoinixlNW2UVAcO6Jqv53QgC/kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tY3kgdco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tY3kgdco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EB8C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733112353;
	bh=SJHl/tD2m9diCsxP30T0lnhPTOEa7xhq6Ml606tAs5M=;
	h=To:Subject:From:Date:From;
	b=tY3kgdcoca9pv6EvJg0PEDSreS38MyeABNvVx8SpnNPvzH6dtU3CfmckFomGvK3bo
	 Wi/AVNdmMoem+iod7n0eK2uBFxquJqGfJW3rtHYGF6Gri22ermNGboMGstC9OyTX6a
	 YG9Dz6et3GqwFXCK2WMKauuW4v+L+5Pe7eGvT03Y+9hEndTJpyJOFE7aiJYwonG1t/
	 uXcDCGC6tn52c0fy/alXlQfdz4aLgypUcDcXXB8cJBJFp6/eZ5/u0mDW4BvRLMO7if
	 eh0nWOAC+c70HvCCQptLayWxJFLnusIt/ZXMuEkFHMdXyRQ5BjE9gzv5LcwI3ja1Vb
	 p3KbfeRUUV6aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F5D49798
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173311235358.23485.1387207939915528062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bc4b0c154340b58f3514e62d36b75dd0dcead6d595a14dd8c156c3b3bc6f7b
Date: Mon, 02 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733112353
