Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3248924A044
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775584534; cv=none; b=LZh8ltWOZBgBtDtcz0DT+lp9h5qJ0QwYyruq2LDNtOlCHVhieouu5HOOybofY7cBOQIMROLOymYkDl0gsu4WifheIF5qCoKWhmTIWtuSrBh2uWLR/pw3bl14yXFWzkvfRgnWzUNjvXdZ29OOaot3t8dhbozlZFcrOsbpOloEjjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775584534; c=relaxed/simple;
	bh=xIhpFF6o4RyHjCub05Ztzn1G6v6Chfq9m8C7hCIE8Lw=;
	h=To:Subject:From:Message-Id:Date; b=Kmivotqz10F40vrcxDeUrijxyfkU+rFD4tGLsRzQaVAsgvtEWo0pEkey3e9rfQXk6UHaVrgGzTkcXaoP5Nyssg8H/Gush3SgQL1w97ECIWQEYNhzGHIVENrMkX+L5zcQkGhitzw+hDxhAcxWjLfRC+F/PV3ficW9lZFnLDBhn7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdf3JVCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdf3JVCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADD0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775584533;
	bh=xIhpFF6o4RyHjCub05Ztzn1G6v6Chfq9m8C7hCIE8Lw=;
	h=To:Subject:From:Date:From;
	b=pdf3JVCREK0CHAqmWGN+Yd8gb4gSM5Nr0BRik9X54HuqawZjH31RifFHsu117fQ2N
	 wxU6MTI3j6haXbVfMGlwxwx78E9NrjZhINrE/7xg6LndNQr40C0mFmx8L1aG34HNRf
	 7L7try/aglK/pX9yVodH6DvFKFSNoQBYehnivaTDvc91Q0D2p2975OBNiFXP3nZOSa
	 mk0FOGSvW2ESRA/4ymZ35q4+3m9LzxIA4BR2VGe/qDGeDd9iKaHB8BwnxQcMDzMHk3
	 bhEhT/G9Nc3q0LCJZjUZIzvEzsVdX2g14PF0DDzkxGitEKWYYxkoXqUNyKrj/HZWQW
	 vfx1HnGzHn4rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9B6FF512E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558453368.24934.8469394489164812020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4e327ac91144f87abc8cc4b383b78562223d7ec4694da3685fa86a0e271ab1
Date: Tue, 07 Apr 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775584533
