Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A6F1632F3
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741271334; cv=none; b=cfL3UhfF+sclOnKoHlJ3Afdi2AFqdYCrTlBszF/VWz4mhnPripvj+nC91pzU//NcId7Ydrga6aHLPFS0w7ARhc1biRf+sVbFMu7Q4fOT/s6t3HAf0ShmT7RGLERtVXY0VrqZxOlpC6WIvB70sNCSVospF4W6GIz+Oc/znIecQhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741271334; c=relaxed/simple;
	bh=DjORvmQZqeNaTlC/CJdvP0A975ADBY2JV1qBeqSQYeI=;
	h=To:Subject:From:Message-Id:Date; b=lbF1NLPOmhGBPulwMdeTYvbRJb0Cs19lKm1LSj8ctvaDgo8oj0iDTsIy31LSWX5/7gI3ihKkrXn4Ncnv30RI/j4h7CxnGogssjId5WD6umW6aLK4jIHNqxyEsKxoJxywyH2d5C7lV5j3asO1KgIndCT1Rxu15Q8xKSOyiAgXjnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tA7idTaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tA7idTaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B7AC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741271333;
	bh=DjORvmQZqeNaTlC/CJdvP0A975ADBY2JV1qBeqSQYeI=;
	h=To:Subject:From:Date:From;
	b=tA7idTaTET/z7jwlkB6cpSPi6PPa7Zl9F8i+J2RA5GdkhJYgevxsvG8HWHNraLYRY
	 pEKQk0958ZFI+8IIEAs583F5daAjVry55fxv0tWVxDgJcRTeLU/RvQ9HMmwJ+b7bs9
	 90FYFhGMrrteED5BvJ5R8QdZHuf9L1O6LP2cXM0Q1pbhnVHbFXBEC9ij37ewdasFHT
	 seAbyq5swgCwGDIi4mBsNI5Sx64evjKaCMRGd0vAKuiau0jseYl6QqI40UxHSEHCRy
	 2lu0tnE5xVV9VH0DFpF+04nMNsRAy9KGbgXi5jetbeNbyvA3AqKiQ/orjm/9RMJUQj
	 DZJ7Asbg8N7sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E3C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127133360.16331.9774950152377640349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd95725e74d51d69178cf21f37070dfa2c75fd126f8a9a30c19955eb849de551
Date: Thu, 06 Mar 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741271333
