Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D8716E87C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718396903; cv=none; b=H3jB1e7MmbEHyRE/xFP+2pCdF7A2WtLECqwI0rhP3WMj848NMJu8ijjBusvqztkcWEonhNLKJJdiLZOHBDewiT3mMZCadGlO0QuBJ2pg/WdlbCSNlBoVKn7EASxtdo+5OX4lQOFpn1R75O3YXfhMfdWzhI70718DkzDmTQ5ivfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718396903; c=relaxed/simple;
	bh=9lWJDbbUloYrc4qzfEkLkAnhqjcNoX1BEMx6BvGa5nk=;
	h=To:Subject:From:Message-Id:Date; b=rz2nTgis2l8IK3YmzIHbgQe8nr+33RuHh3yFAp/EfhtLcsux5CgKfiDTU3U3TgUxeR00F3YaQOa/1J3lhrMXMgZQDaRYagvydAN38dPLv2UXE2lJg6l0kCa8agBBsRps8t/Vaee9LTV5Wpv0MZkcbmpXQWBfUpZGTBrv+LQapDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlKM1a4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlKM1a4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC50C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718396902;
	bh=9lWJDbbUloYrc4qzfEkLkAnhqjcNoX1BEMx6BvGa5nk=;
	h=To:Subject:From:Date:From;
	b=FlKM1a4PDNU5LGPUIVho5rCxDvVaNpi5beCfQrTRE80TAh9BFlXM/7KPy675MCs2B
	 T6WM8MJqo9cWZl+ZccOwMPWFPYHt2t68iMn0i7BVRPhMIdvXFv9rS+iEXow3k1Jown
	 UaI51WNK5CXbb38DIkjJ8EGhAAkmI13bNcc4Dw7ZAkHF5o9219otObnjz/S8Z4mMnw
	 YOJ5/vcE5VuodEjfhtUwwr6XB0cMoEBnv93vNHZVnNeXijeKn15A+OQ6FD1GVAevYw
	 FdcXNPTsrsPiPdctifnL0/clE5UiXAKgseKbQgggtUyVkKO2uxeCWlKHZ4NqVKsm1O
	 Yx1uqJb32tiFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C637BC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 20:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839690279.1111.7877346005357733957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b2864627834223eb5c5b5a95196eb61a533e9fefb47b75fc450648c876f913
Date: Fri, 14 Jun 2024 20:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718396902
