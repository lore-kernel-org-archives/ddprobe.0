Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2708421D3F8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764292974; cv=none; b=lvYk5c674ehJw3kSucPgkdqqUnfkuoMPQ+Vxm9fnz9LVUbLAM/DJNONXCo96UkPxIlWDzjOUDX4JY2l2cRIByrSKp2GgH155HjdtsEXHMcyWlmYGycrKYxWllAHQMF5jh8qvtDm0d7Yww/b1dgsFAflx4zl8D93fPuyH0fd9Xtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764292974; c=relaxed/simple;
	bh=MCV7Uc6OzWjeGmfTF3ZwaUi13oyKjcFfIQHMWBpX8jk=;
	h=To:Subject:From:Message-Id:Date; b=YWRuFODUxpBAuw2b5Gu1XsJsy9w2LreGKtQcn1HYEx/Sf1O7tNKeZE6TCJCDb8lLF6PRAB0l7WjNO0EPLxuwwllKKp+gL9d2ZesjXfsfygzIUvUTKDyMB8E9HcPW+RfKGx/hJgW8eDtZpbFApq9y/X/3TOmpXx9TJ3lPjtHRud4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klE6ZoTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klE6ZoTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6554C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764292973;
	bh=MCV7Uc6OzWjeGmfTF3ZwaUi13oyKjcFfIQHMWBpX8jk=;
	h=To:Subject:From:Date:From;
	b=klE6ZoTAX3F3XPXX1yvIYznk/fPk0LOCityGrvGnuMnKqZYbcxUptXPxXohy1Mn8I
	 Txuaaci7VURng9XpNYgjOtQg8ZjWvY+y1+416YhSqSmRNDOcKFEfvgX2aZso4EcJXa
	 s/avXpiYG1xYkiiF56D2WddM6CzWJKOyHS8A2iwVdtw4QaSe49Wx4HHTzq4SuP4AIE
	 TFFg53RbeIP2jMKbwTJadvk9lOCHmoozeTwtJvnMmFnP1d+7kvTy8ZQQZY6/JFNNX4
	 OAbOGKAaRBqoqn8gRN53Lk2ASG/l/jW9lMbZ9AMTH9Zms5ewbrLbA5qx1mS1N1Oacq
	 rkzDdyAtJwuHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B311CD111A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429297369.12124.17363259550859971462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c615bff8e39510211a26cf6e9d5434778fab00d38d012a2f0cb63f387b98843b
Date: Fri, 28 Nov 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764292973
