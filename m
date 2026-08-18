Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3170A34F279
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787025634; cv=none; b=S9Tp6udEu97QbvAoOxrDRwpMnXgF5T2PjfMzanMn78ZT/NuDHIYXEfOkXb3gYIlbj+srkaR+TF+HVQuUEzxqZpurS92WRkO/iu2A2SyYUClgyM3J6onekGemyByrPpk2YdKIWq7LNPpOXeNsUu5kN/90sTyLpScKCZjTib1cPHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787025634; c=relaxed/simple;
	bh=bDOdvh2Dvei8TbweclvPOxouzPA57ceqn1ne80DeuD4=;
	h=To:Subject:From:Message-Id:Date; b=tPAqt/7vdx0XmrtYhkPMXFOGXGRXFNLbfcN1Tjnt3CHOn2CqzN/Fbp/FG8Lmg8Ql4dYPlqckey5lSI/9YtkqyjYmuL64G56UI2KJ55LQ45gDFYOZqzR7g/IJvlacdp+75X8/eBrAwqRIhCxU5ktSR5zidbvL4hS97yg+2zMZjYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvgrU3/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvgrU3/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5230C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787025633;
	bh=bDOdvh2Dvei8TbweclvPOxouzPA57ceqn1ne80DeuD4=;
	h=To:Subject:From:Date:From;
	b=BvgrU3/v4uLYVsaXy8Sy45epvcjGW0jQpL1pOzIWVbOLmUM6Kh5nBgJKREa07ksfd
	 qoB7W2C9UhHfkMJTbmdzp+Z2YdNCUiobbki2VHQ+ozvedPZ2kI4ckwzMsOlkf7mpW/
	 6c7Z4c8whjsJV+uLyoqysMiI9wrMkdDvW8A7Z74gBqC6kD1PQ23xT0QAhdlTFeBHkB
	 Thx80oluOlls0w/4Feg02H7AVgKMq6MPO1R1kiJv6OCxafgcd5O8lplRyTJRvx2H7x
	 0HWfo3vnZBt+9b3lcPQ6wWRgQzXwPVuhQQ0Ltl2A3z6DoMNxb5cjj4bX9yiOmEXRPs
	 YEc7NcuFtJisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB797C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702563369.657.1155052464506469803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8edf4c364adb56f8502bf1338879ce0347bbfe30595b0f1a627d822bf1b6d149
Date: Tue, 18 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787025633
