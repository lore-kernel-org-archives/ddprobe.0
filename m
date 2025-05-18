Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DDBA55
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747543194; cv=none; b=p3iOzu6xfUIm0xPVOgs4prO3L4NMfw3iOpD+Hk1e82mYCUtCZBX3hWhClA0/OhrpRP31VE7oyclbr58d28dFu9JMJueKxVRCTM0UcnYaY4NoA+YKqszjbsSON8UX7DAeYHVktks2UZ9DquC2/9PokB5bzFzdAUEVXBDc7TYHcAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747543194; c=relaxed/simple;
	bh=pbIavnx/OrryECqt0R5mZXn5cVW8FMBar3m8CDKTf/Q=;
	h=To:Subject:From:Message-Id:Date; b=ho7M0qx9iWz9f+lg61IceOPNo74XWbNPctvoJawmOUD8RM69TSfIz8NHyttx6kkbWFsx6cIY8iN4/rBKq3Ug1tJSjoeo//DDprBc5mQv6BbiY4U6S+RdGqLmXhoHT2L2tdC1rue/kljo5VAl0T3lN2Vek1mKzE4w7VG36q3iWFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TP7ttmMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TP7ttmMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1596C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747543193;
	bh=pbIavnx/OrryECqt0R5mZXn5cVW8FMBar3m8CDKTf/Q=;
	h=To:Subject:From:Date:From;
	b=TP7ttmMk/nnxyN3rTOxBIVZPgu1rJkApOVqUuSEXl9CwZgc4hfTcvoeHYaRnVPhbf
	 6YspCrfcY6ca687Aol3CpcLzgKnqPojMPnpftbG68TuYIEDTEDDF7ArkGYyL/lGuTK
	 tY2dKd9N9iDTyddHZiEhgZpJ5fZxyeYiDuEeOLpfg0i9bsALDESGgMTwUvd4OfaH6k
	 mOp7+O57rKmCRGM5JrmrUWYMS06ci8oWlCUKshwh3pcNk3jFv16nI+0Ndci7X0usr0
	 nsupg/iFrA0I7DAfUuV5fpcMNH96s9X79ZH7RpO3dSYgZHCeZ/8uGrfolnVUf6lX4k
	 6N3uQ/DsQXrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA1C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754319357.29638.8324586018408016960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a43015e5f938e9edf4febc4700f720373078bfa54b3e2015deedb6bfdc4148
Date: Sun, 18 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747543193
