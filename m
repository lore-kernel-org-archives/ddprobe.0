Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4950EC8E0
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739720935; cv=none; b=Wv+obzhd/LCv8nj0+9xbciYaS+EMWgTmedXawjhOSTVvttGlZZKmxT/POf7pk8/fvuPo3cxVf+hi3KkMbEscRFE49daQJW1622PF5+4FeH0IFPQX3BlslmhAdUkbpa0z7BJxueI7Kh8mDLbcCbEXcZWlMdLaQV7F+Be16DLOk8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739720935; c=relaxed/simple;
	bh=8V9tN27XivrsmiTpguI8yBv0UEPb6+1BZX+wx8nU/eY=;
	h=To:Subject:From:Message-Id:Date; b=TPyvLkiXjTCvjU9idIkQaP9ocrW0h2mSH93hcgYvzqaUe8Rov74uiIhnuiv92aYY9wI3/uj8mh0nTvjdbK4AvtZfido/FdVDqbABVc+SM5Yzjn6jwFMCgCoWJCu7wu09VF8hXn60bp3TwXNaTlvubY6i4ze5rg5hyuViq/jeFOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOQBh3C4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOQBh3C4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82FCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739720933;
	bh=8V9tN27XivrsmiTpguI8yBv0UEPb6+1BZX+wx8nU/eY=;
	h=To:Subject:From:Date:From;
	b=aOQBh3C4d42o+fEaudkNAchOFsO/UYO4ytJJBL9MVpkl4fbw9TZrqzNJ4AiuyyD1I
	 3M9hR2ngobNCiz+8Fw0i7MGdG0s8RtHXFIwNDe+rcVTA2zOaqQ+zsFJpJB9TQIrVMQ
	 H6pUQ5b6AOYn7LocONqg6INvD/qPjgev40EXnxlApwaeEu1tyrl7J2N/i5bf2D6tUx
	 Yy8Uu07aoxE75HZzBI3oxfdBAhgLCYiyy84ANqetuimJdDzg0CzYJGdEOG9fL8A7Ip
	 KAYo7O5LRHXXmoFH23vmWxHTpm2a2CtH/r9jyJs43Vx4BI2WPE7YY3mHgeSudOTy27
	 ALWs0teQH/qhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3362C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173972093366.2507.3447369101974020416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3aa5f224024365e725488ce9ee607eaafa746ab7b709c817609589105524186
Date: Sun, 16 Feb 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739720933
