Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A80372EF0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775595934; cv=none; b=IgCesp8J518L6d7ckC2jkiMZeJ/4RQRX3hDGqrhcGr3LZXJfoAgakI69qR8FnMv98dbH2c86Y2EZda5J3rrxyJ8TGVhiFfnXKCHf4ZgXd1Uw2luqdVNdZUzwnRu2HIatUti9C7PjzffLVD/0nHcprU3MhYbUo/3Wgf4/prLlglc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775595934; c=relaxed/simple;
	bh=lQsPyrEjVqdMpV0TwaBRZGrCE9440GUAVYAJaEARKlU=;
	h=To:Subject:From:Message-Id:Date; b=oxKI9B9IA+J816SvKnYRSq7+3tgPodt6VK7W+e82wKxmqktmBaI96mffDNlTSbF9PLCBTlzo5Q54D9IEZ29GgozkO9Ube76W/p8SKqfypHOHUQJV1IFxy+klnKYPK9NusMLuiXEtFgK6Tk71SLE4Oyp/JvAl3NNydW3fSU7uDyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzInmaYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzInmaYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ADCC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775595933;
	bh=lQsPyrEjVqdMpV0TwaBRZGrCE9440GUAVYAJaEARKlU=;
	h=To:Subject:From:Date:From;
	b=AzInmaYDeniXv0TdwkEajcp9JtBC25QURb6dCBLz9+U5ikiJqNYNbfTEQ3YuBpwX+
	 rnyC1Nb9SYgOAvOor0GZwa8RL+YVggwEV8WXCenmp0dWEvbsCi4XVoAwf+l1qu6/LI
	 WjktCeSB5PUCdfEeoFaPCSn9k8AQrt9SZrHbmC/BI7w+IPIyh7Udw6ulWyF41qVO1Z
	 ORtSDMY3C7Hkx5uCs3mE5HolFkNigmJV2rgstBc4j3Hm3p4JY/zK4zKY9nt4BPs1Kj
	 aVsTd2GBl9wyMK7oEIE/JyCYp38G+LoEYPwci9+eXqerxDIa2P7KBUwUz1fj9ItN1B
	 CA9Ym3CTakcJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE961F46C7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559593370.20097.7733742138592179577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c39a0a394e24900053827e235835b816323224b69187ed5a9a80e765fb6166
Date: Tue, 07 Apr 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775595933
