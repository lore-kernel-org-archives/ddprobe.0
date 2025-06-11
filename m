Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3C0C8CE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749605394; cv=none; b=XG6tC2p2yoJuRhHjAQvq8DT8HXADvdQ/JzfapXWgNBxwGIk59VAVIplyGmkcj/6HMBTFxk3eH8wFIoulbOGKXbzsCVLvEZPKVJORdbjNBsocONh1bTziG5pePzUATD7sdMJx+OgqO9xRZWCS8/KumjRoh0m4tErmc8pGjp8QNus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749605394; c=relaxed/simple;
	bh=VcoP6lPAjeovAUxvQe075XUuUDMRm51wP1TuI7twm2I=;
	h=To:Subject:From:Message-Id:Date; b=HipmzlxF4LuiDIDstxY9sh7QMDto25MFN1wZKLdC32reE1Tn2KOYsxZDweCHjiwxn/oErA/wFmDld8HGxfeP0ZInCmD4xoJ/v9TxNTnDqrG2SqUOvPH1f9eldavj9ibuLhrwyp8WFiYBR59Tnv9YYKbui08URC8KITPGyzsN9Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXyLiOoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXyLiOoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BF3C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749605393;
	bh=VcoP6lPAjeovAUxvQe075XUuUDMRm51wP1TuI7twm2I=;
	h=To:Subject:From:Date:From;
	b=HXyLiOoO+qxkcVqfyqZ3esJh4ebxr3p+GK1IYW1xdqHJ3sceIaq6hQSwboiLXR52A
	 LLW1c9opTrNMRJMNWpVrvzDCpX8XlIVac1+A23QyZu/XhvLI5H8a7hufFP5YaT0Fju
	 4sbXntK3c1/61m6eMvKJbxXr3/PimwhlR5Os7krVN5lXx0BSruKnsucpJTgCeTklSZ
	 ViwKqy4OLDYaWuqE+5BiZD7dIlNN3zTaEFtVH2I7JmvGDil8PEQpPyS4kSpWmwtLKj
	 V9W5h+QATh24E4KrK8qA2gOkTdVSNUDeXW0zGB3guYDe/nfFnZL8uLtzxa9sXyOjO+
	 Fj/e1yMp0Ds0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3D9C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960539362.13032.15720349257336470980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200170e24369e3569cf7a736374d8c3e5ef3c1e426b789d7f16a1d31d2eebce1
Date: Wed, 11 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749605393
