Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB9F2ECEA4
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753276194; cv=none; b=Bp4ENaZoQoF8N+WfEULGhxcRoPdrehzwyy7DjfCypFZelSi8DFtAiplUFTSA5iFYPg/3aVmdoa8KY+H10YD5IA93ZuJ6Guor9+ATREyFBeA88yWL+nH2cs2HiJ3byHSWsaRarbgzrOcuMuI5vTFkK+H5Wq8IHk3ahZpERVbXv14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753276194; c=relaxed/simple;
	bh=csfP0QlPc4usg1qqfJtvYtEUxm3mUlxUKbZPb7hth14=;
	h=To:Subject:From:Message-Id:Date; b=hAK6wOD0J/eVhqm6zTs4cQiCDjNm0Sv//gQ5HuxT3W9Dhnh2LA18lQ505AOxeueN/3hereq6lOvX+aO4M/Rqe6+2DVL51wwmLlu6BA6LfCHAF5DotbO3bd8DKoMzpWT99Cipin3A++4NVPHxZLWKYE97PCR3jRPsal+eSZh8m+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNPeXURX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNPeXURX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD58C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753276193;
	bh=csfP0QlPc4usg1qqfJtvYtEUxm3mUlxUKbZPb7hth14=;
	h=To:Subject:From:Date:From;
	b=pNPeXURXOXpJu5txkFr422MPW4OuyTokuqRcpxhH665+SP1VwICF7HCVRlr2x3RgE
	 GD1uvpwdaBvwJCarvw7HSivJU7fHbWCFr5N9l4GbYo0b5n0Y02YYlOGCbJ81nlonID
	 AD25oRkYZzvyziu2OZP2gTwkTBUIDr4TAbULJSsxKBSrMSGhRp+RRjwnCelONEoyId
	 HRa+TcoMqpXdlUkUBpZzV+rn3XUQ956bXabowSv1nfG1TOjo7oYhyBuW0bTRP6z3S6
	 Y/AuSLIQzW7Ei4DoVJzmvjR64b/T3MbV75eqQUEjyCV+r90mzUM5apIkzx5V7V+NEo
	 77sFJgf+JqaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905FFC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327619358.21989.9372456379730857081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d20404e9188c4f99dccc8268bd05f3eb6e2ae7d5176a2e5f0b2f7aec50fedc
Date: Wed, 23 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753276193
