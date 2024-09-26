Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347AC2837F
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727370354; cv=none; b=jbDOC4Db6BdL9X/7U7P97fssjicAicwZsXskeIQSHgwM/zlWkjpVd7ToTt7fNs6Lfu4jphaGYx44oeWqsnBeW81Ciq3wY8+dGUqTA6zaa3QccaTWGf5k2lqRS+q5P7V84brZK0UXs4dhsfV0WOV5tZ7PGuax0VILLdOW99TBVyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727370354; c=relaxed/simple;
	bh=GH26xOS2IMTzLk9M5aymULGB1CGa78p7ZLwLUeUU2/A=;
	h=To:Subject:From:Message-Id:Date; b=Z+Tm8pnmR1ujx1XBurAXKyGnXnqaJ2W1iOolGAzS+7eUjFQ0MpaMZt5j9kEqT1ViRFb+AyQyAHjJzEAeU8WvWgIpgpI4tdWNtUBnngnrxwumHMA9S+rqBKVnFlGnh67Rqh4nZ5COLcx0jP8jbUqb9NknXMNxqENiVVL6JvtibZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3qUbMg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3qUbMg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97EAC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727370353;
	bh=GH26xOS2IMTzLk9M5aymULGB1CGa78p7ZLwLUeUU2/A=;
	h=To:Subject:From:Date:From;
	b=L3qUbMg7Ku+jE07/yV78jgRPTsMY+mSmiyURvpas1d6LPAePAfjk48722vmLSvwyP
	 ySf5nArLuGZ70TqFto2MUfir430cK0ikQET3j0AwY9LuqvApMAoyKf9hwgmFktb092
	 9/Ps6ezM+DOoNL3oUxVnwE492ktnKPxVZ7jMtZmZAaz34uwAaThjeZdSEWH14TBa58
	 r8mUc1sYIfhgcRZHB/hUHL/RFwyZJ0J7TbsB8G9aiHtEzZ+lPs9LlIanIdV1sh/1gt
	 q6Z1Wc1u9uf0DzmXqwnLBv+wE2soCT8AO4pvSAlYNRxRUKnK60I+PuyG3jijymDKrE
	 BaJJWuT20mTLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DFDCDE024
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737035361.5925.12496517506300144565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e0fd260fcf498e2e36d5317e158826890cbc68d54c38c67553d163f4cfd96e
Date: Thu, 26 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727370353
