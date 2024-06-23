Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7B2364A0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719132743; cv=none; b=BMC9hDmn4kq/nsmTDm9bfdNke37ULFsTmmM0pWsKGkfb5/osScB5gpXVuGsdncnOcryLKhO3CmE2MxmuSV6M/fbFVoHJCtc4uQBazswyGEh0jcIaRUyDRYbcj6RJF7nFUVDjkm1nYYHFQ4uYWdT/d4HFTeWMHJZikNeYEDP90OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719132743; c=relaxed/simple;
	bh=UB9/OAFu+jfQ+EeARluy9Bpd6tSZ66uh2nEJnQNaz7Q=;
	h=To:Subject:From:Message-Id:Date; b=VwSGYW7L6vFva+RrNUlHjrEKj5C783fKKy090OmjfCGxdG2gf/bMrfnYohJTbqvuDYOqE+kRP1C2eCpFfYCZY8+6d6FQIIHFOkRXdjLMxRu5MqadwGm1uWKEj6UissEfx1i5rGs3IAsIUW6xWcvalU8HOuIUMCCxw5pZRkm4BtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjWxe8wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjWxe8wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85FEC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719132742;
	bh=UB9/OAFu+jfQ+EeARluy9Bpd6tSZ66uh2nEJnQNaz7Q=;
	h=To:Subject:From:Date:From;
	b=HjWxe8wdq3Z3RCz/oYGtypASR+3kWNAxk2cnBEbu+v+GJXUvIF2/F2F73cbAE/DE5
	 dlX2FTk9UIEbUwgsPhTjg8bQoWVNjGOfRuW9lbBfo1zNl8fx5ekkEl4Woy3uw05kO9
	 BWWcO7bjDbOMl4BSXYiDSc4DQlp5PinvvnGnVjG5koVOYKBDxyTWT7HjhJWjN8F3b4
	 7aC1o2I4Y8g4laqLX8QAuHayJbJJN1oWzfY6OHDxEHWRARm6GmHUbn55ZEtcTn+7oy
	 duNxZVRp41hYGyTZw2dlNd/1UB7/DH8cPacoQkIWEiPAYJbSF5yC3d7b+cOkEb0Uqh
	 uGsRj9T4qx7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22DCC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913274278.4117.10767950056590812284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281af32e33135d17ddbc71cfe1d793155c50f8c0388ff315f8b4f176d98bbc35
Date: Sun, 23 Jun 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719132742
