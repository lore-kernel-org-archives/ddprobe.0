Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A852754667
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705680496; cv=none; b=cawaJUO30ypq5de9y5JsvW/2rNP1Z/9MRO52XUAjZT4wwWA6Q7fJ4+ZGNV/LDfLNFzP16eNoP9KYWzH3XCLZj9ogH9RUj/GvD4Vl2O/Q/6Fd8EY2wZgnvr04H179CmL+6JMM3u/+dvWoEU9Kt7WTpqQg/WBfWr2kzfPn6glCbFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705680496; c=relaxed/simple;
	bh=4OVVfnxndLUMWz2yfAOuPBdH97PfZFZRE9VFY0TzROA=;
	h=To:Subject:From:Message-Id:Date; b=umlafnLGb3CNDCMHHMalAKBO/qtT68VnVrARkPrIsbXw/LToeMqhNG56j7xGPdpmco8V6/SRbL93iWnCgABbYZbXfFKQHyjOtIwckkVVDBSsm4K9PfU3XBGzjbrSceVBOdQXUtdJyM2G7IKT/fJxK0FVHXqfQr2+uQdShGXeERo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu6uf+Dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu6uf+Dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D39AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705680496;
	bh=4OVVfnxndLUMWz2yfAOuPBdH97PfZFZRE9VFY0TzROA=;
	h=To:Subject:From:Date:From;
	b=Pu6uf+Dnc4UzIJmitF9bcheGZRWRDXv5bex3riVaHrcJKWq67ZVw+1pM+QJ2UoUtd
	 CsBGoz0UXRvYZruSNO65lfd8iJU6SVWlRXrXB5KoWw0jbJ5/pyjH79NZIQGS/YI8R5
	 2loaScib0BoGGtZM6tvhoOstVYMRyK2UsfM9GOUtQRZPj/udCp02nGY71ame3oxkaC
	 ylexosuyAI3iWTdoLJCqY9y/zyAX9Sl37I5O4F0eItthmm4gC+NemBKlPPmoV1x7bS
	 amBXD4XzKFnLxiwv1kR9thioBxp2CuzN3GFmvO3T63ChvoDPz+FzxycbK+wgEo2NsD
	 eNvgjZYXNixNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6189CC47DD3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170568049638.28386.3676642762223858458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b144bf51ecf757e90224e95c1e59d9d1a52549385cce20f23aa6c394025c805
Date: Fri, 19 Jan 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705680496
