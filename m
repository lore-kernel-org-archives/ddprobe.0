Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2719C36B06B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772518494; cv=none; b=Ry8u5IRegmevNvcHVlYN58eCfIOYopP0sJ8dnaBjgNV1XGwC9vrtkPTYF3XssTAHSFQLSRXWSDDZXwxibtv7GGMWw2GPxDNkUKwM/HAmDSKY2PWNyRGEL/IZgJD4ktS6uWIt2uHb0qS2348EGPf+jiWWxzdKskemYTTz60X7yu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772518494; c=relaxed/simple;
	bh=TvQiPcxPK2cW5/pM+E5OuTzXJYc72nayM0IudrKEv7A=;
	h=To:Subject:From:Message-Id:Date; b=oJGCXUmZCzc/g5n0B7Ev9jRuidjumanUT10HvsKljRtiqC4EPtS2+hTVzxRDgEX9ANeMz+JvKx1t9zBi9qAODmgpOt+1VZh6DOx1sukB5MqOiJMXyVnL8K8RAl8SuP+3ZpiIzNJ0IgIWh6zomPOaa7xMOC7loLcxXrFb314A8gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=So6FajBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="So6FajBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64BFC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772518493;
	bh=TvQiPcxPK2cW5/pM+E5OuTzXJYc72nayM0IudrKEv7A=;
	h=To:Subject:From:Date:From;
	b=So6FajBhLhXvbULiS39Xdd9KzW/3uVofSc4lKDZF2GrWRsjrs8F4zRdNHoY3X+208
	 gBFql7p2kLPnUbipxoHidX7A2fckzG2oLkPN5/XjwAujX5qbRkXXEvikx/wuOylBHW
	 /V6QdRo/z2xieIFrp7zhmm7FUcHg2+4bedifFmtrSAMpEG8fBbxHnAmdd+qlEB3RB5
	 k8RR5od+sUEc/DjVlCq7jG62d8gB7MH7AAcdJrZJNudub1Lv7Nig4OCENeYP6b0zl2
	 lHLtFi3by8qDv2ee6kIotnnf80pRX9vWgeK5fnZGryBUWTBkH8GwhK2fsVjWqf+t2b
	 0+rJrvXT3xHjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3895E67A69
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251849359.23165.2995534334335857872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666c103cda32e3369286bd699db1011312b82eae6c7ec8ef3bbeac22fec6bd9d
Date: Tue, 03 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772518493
