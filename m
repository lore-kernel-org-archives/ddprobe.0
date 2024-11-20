Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2364215AD9C
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732109754; cv=none; b=mvgneM9I4R3UnwFMygOl/NJA7oY5bmQUr1xQyK49YUTzKJNrFuK8wVpVIBSzVl/sKPA59pdQo3WzRxo0pj9DHMxMPK86Rbn24RfiTVmm6Rv+8M7moqMsupnCLJmVjvrNCTLldH2JjSsSFKkJTLO67mCy1tL+9JgBHa4TiJWjFZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732109754; c=relaxed/simple;
	bh=Iuc+s8M/zNjB4edrDvddCSJxH12WCJVa/iuF3a2WLGs=;
	h=To:Subject:From:Message-Id:Date; b=T6RpF6SmppsoCz9qSwZE3gPz0Q+aHF9q07VkvQZZq/PkwxIP8hsPTJdFanVTc0dfEBttVHGiltKE0teDNxZ4m51PJHsN8txlssL1iKxL0uJYJsGl9WEmVwohMhdSHsd8mw5wGFrYohcdpylu5Esn2t4RpCrtVQh7+ylb14ZLfgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRLkm4EQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRLkm4EQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF98AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732109753;
	bh=Iuc+s8M/zNjB4edrDvddCSJxH12WCJVa/iuF3a2WLGs=;
	h=To:Subject:From:Date:From;
	b=pRLkm4EQfzAdyuXrtKhdXV5uBMryUjkaOJ552qHkO0HHU0b6zqSqv7dBBRfuSGu8E
	 QdnIqpwdo8ksrTMz98lQy4reiTK7H9f3IbvxPyvps/vRJE7ojNz9gC+vwbBjW2R41u
	 I7Hz8o2L/LSe9wpFKfI2X7o7gitaD1RwFX0g7sujEf+kPHJA/2yQ2kVF/D0G24GSCJ
	 UFN0zbOjoze6xyM07vYZX5Dv6IWondM5kO6o7Nd8znza4/Tpv4BH1CmfxXrHEZjFiw
	 ToMxR+IqNRq+UCCZROa4fvjmeUK92fItZREW9uGPuXR5rEpyyRKPW564g8nO2xkhEI
	 JHMJmVx/uQFPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999FDD63939
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210975362.29257.9361550631196584534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4e890700f0e97c1c3b55e69c26f7915407fc4e3cb4cf00df02ddb3d4f65f5b
Date: Wed, 20 Nov 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732109753
