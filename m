Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A30C1E480
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735206954; cv=none; b=AyGwQtqMCNzEwsy9EneCL2n5omweH+x0yp8oXqYQ6TBUmjDD603a2Q/+6VR4mXDRA3UK/yjoedPXkEQUuc58Tlm6iPCyqcMP3xMtf76fYnbiCijaKtdh/z6kaF24R40YlBqmJrL6yV1RQO4LddjS+T04wf7Rz74H8g9xZUOK5Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735206954; c=relaxed/simple;
	bh=GqeoEa7QG+VCA5RYNKn0cyYFkyw9qyszMjbhoEBXWWk=;
	h=To:Subject:From:Message-Id:Date; b=iLkaaWzMki6uLw4dE4nFbYJErIQj5ozVWeHowtPTJt8Ti3lo2iTNGpm2I7P01idm1ZPRbF6R9abfVuX+4mz1EqpDq5DUThhUjJLh9VEc+ESpyNCWTTXjn4vwLkFWiXq70WKlSTPk7+2ycRrrZYFeJlwrQLX12OvMkvgUgxL+bEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0ADBfdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0ADBfdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3539C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735206953;
	bh=GqeoEa7QG+VCA5RYNKn0cyYFkyw9qyszMjbhoEBXWWk=;
	h=To:Subject:From:Date:From;
	b=f0ADBfdwSuD8vFqf3WlC6LrvP7p7OPFn021RpiXa+sc1m1JdskjBKW6RrhNyuFV4o
	 /yOevIqIToIhSwhDZ8e+obwNY7gDjteJMXT+i50rydUOVkJAcJ8u4Cwcm3oFoiP11O
	 ilSYSrzHJceXp9S4Ye3zjTDCFi5fmKrZ1aldonnIf6THetzk4Uf0CRz+9/D+TRUyS8
	 CQ2+zP4FG01KvcukRgvG8MHxACj2CVT4dyTCFVU4v8bq5cHL7Ke9wRvGrDqvxJ+987
	 w7B05AtJsipBiBBOIPmb27wFBO0l0NGOYMYaNMubXKH+UQoO8D86g2KwHql7Bf2e5N
	 ANMvrbM8hS7EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A733DE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173520695361.23584.5617507902643812086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6b71527b618646184355084980301b501c516a28e070dcd833eed18265765d
Date: Thu, 26 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735206953
