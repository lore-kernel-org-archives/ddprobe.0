Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2990038F9C
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755359994; cv=none; b=XW9E9+kNNqJStcBd9987R6H8Wp7UDdOvRgFz/mQVL+nAy5f/lLEUbu5GXH3RkmP62x52enSYqn4aTHTLgwvrP8wSDfg2724OEl9g6oyNbIyPw5lhfoTHiv4zOxhhue5ky4Ro0eu8kk5IbcqiqqyPQGE4D3XtZyapi+L6f3eAqfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755359994; c=relaxed/simple;
	bh=zhwgtSacHORC5tuBvIgSMV4eOMIpiWC3WHnIJ7op38I=;
	h=To:Subject:From:Message-Id:Date; b=lbZdrgCqsDOpVjOH4FiTpQltFLWlr1FThvFo3JbUmKgwxTV2WgIu16NtG06kPWFX77H8C9B83lBNi6hZYQTTtzxZuRyR8KHKnZmk3LzSzreQG6JeuFC95ucYHQi+1AXcxTHI83qLjaOuomLaWWEPMqq9lC3GC7F8ChX3CMMyKnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coeEQWtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coeEQWtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2446C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755359993;
	bh=zhwgtSacHORC5tuBvIgSMV4eOMIpiWC3WHnIJ7op38I=;
	h=To:Subject:From:Date:From;
	b=coeEQWtG6Rr/5Cpd7WfLyxIM9yh0j82a0LxCOWNLiTy0YBwPhNvXI7AnnmCfiTtZL
	 hJ8nLnk2uO4P75oZlMrXfADXbP9nx7wrxoHueMkhZQVmoUUQky3ORr7OifbiK1sUWH
	 /HoAze8sMSRUI9GJ3vuROLctW/uzJiL+uN55nlWq5dpBm6brdoP0itQ6nXnFaCLvLK
	 sbfWxZdO78ZitmLmgH1dyB0HypR64VxwQhKysvY0Td8kpchD2Fvip3BO8fOqd+8uar
	 VhFujct13VJRgLcRFG4B4mWNw++D1QdHjMQ4kPbRPxYfKhv+NptiAVuaWelcLi8vwd
	 BcM4OpipXUMPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3FCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535999358.21926.13279049559240318302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b07f2988513bcddee2266d714770a339c629b2ac1f8aef8294cf53d0918f98d
Date: Sat, 16 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755359993
