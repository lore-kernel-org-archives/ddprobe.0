Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD46A4CB2C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705663696; cv=none; b=oJOcIMOYYpmtTjs1YpUTZ7K7aw+0rnoFnvSfb4iFekQTPJw/RpRJqcgLs9Kv+AJkPlgLjuEQ6vDvnsNSbe0RBUgMoHI6TxnVI3oVPvoDN/iATbKXwAPx8nXKAvFPgYEdloaOf5fDbnd6CzdZ/TACINn9b7gUt34moYY90EC42vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705663696; c=relaxed/simple;
	bh=HjLgShyskLcWHI/NiZk8RtqiXz5bxHMVdy1ZeVi0/dI=;
	h=To:Subject:From:Message-Id:Date; b=IeGbT73tEkOHxc+eAgF3RVzCde3+qlEuTVe6NzQhvkXgM7LK7nFTF28dDV1ktwnd+IZGSoccUN3D0LuaDXSo2hyTlr/yu+yFBGbVF3IDraxvanwXmsZv2oXCmjzl1FDDO8uC/mUMviLdYGs+4ZPsdshALOLR4t5AQKhTJU+3wNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBE9tiqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBE9tiqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D3AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705663696;
	bh=HjLgShyskLcWHI/NiZk8RtqiXz5bxHMVdy1ZeVi0/dI=;
	h=To:Subject:From:Date:From;
	b=GBE9tiqX1vj5xCWg/PlQB0UiTzy+wrcQ747SiILrVU4aiHsAu/F2PZ++DvdtTIKce
	 dpxe3NMNjPz/95/+HaClOS8jqTonR2XN8uxAdxXPKDjwOsB64YB2ar9p3BxeeWb0Fp
	 1E6MRCrwnhDcCe3aOnP83YIx3kNgrlC3LJhAJbFPC/P/UOZFUHnUUjMOui8LnZvxKU
	 WzILtHZ3F/K+bgoxePWhQKSaPg/QhDI0lDjXxu8/2UfEkSDMN/zEf1gigscf3aWDD1
	 mOPJyYTF53yMK9tT/pXZ6nQl1rduA8NynQ6+l3TXP2CTsD98f+RP4j/O7iId6WsrdQ
	 u4uZiK9hm1+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BACBC47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566369636.20346.11772573766592111478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247004ee1bcab59212201c416069d37aac17b64ad1c75c51acea71defb989847
Date: Fri, 19 Jan 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705663696
