Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8007B37F339
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787448034; cv=none; b=VLxHK5HxYLARLKOd1yhOYZw6Ogd/Id8pVJYC6TpRZJe8+Bu8Lr8P/TwhJy522QffljOrtiWAWnpwgyi3GwmGKSiwqhUdwTmhmMrqDLaQtdZKw5VGYTJgraIotwsEyllnpXL/XM7auK/l9aoh0geu4uA84yaEO5RCl6dl8pjIaTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787448034; c=relaxed/simple;
	bh=nQ5zFpFNfSeEY6fqnxQ+TeWCEazelycUjdd25WtPzTY=;
	h=To:Subject:From:Message-Id:Date; b=iY3ylbpjuWoKMWuN7EaI7ItCZ0jHHw0aAHj7uV1NSHex3B768bqu8QqE9oYjI2sPgoiTBhrEOpTKBRc29WPT5ed5VMFLHKpE0gjyVTqcusXFoxPt+ETyPpnT43TRTz760+qqnhFoiA9qjkBW96OXZ1yQLrSnXmPhGDlVQyBwvIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuEvd+r4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuEvd+r4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8F4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787448033;
	bh=nQ5zFpFNfSeEY6fqnxQ+TeWCEazelycUjdd25WtPzTY=;
	h=To:Subject:From:Date:From;
	b=YuEvd+r40TSUanb8nBq3QBcIj9tgtw+F9ASbx2mIK5ABg01jkhvoG9RxgTDFBj2PJ
	 6gehUw7xas+VaMQUnbr6VgClj31xpw+HYm3wYa2GJb+pUjhCxx63L9cudeKhbVmVBF
	 KD2FVp/oARlW2vfT91RpRkx4eAADdrPNv9S8QMae5qZqMN1XeHr4PfGf20uWtcMYWA
	 C6EKrM+MaW5gArg4EXfapJ84SxSVR9CvqBqatfwsMOtNzssY4wy5yko1+mhxGOG4ue
	 1zuspwFcbAZdrAY9wI1dO2/8Vjf28kasHVjbmn/mKKYv1jlioNOHFgK6z0J0JbBVBV
	 1BG64oTYis3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB59C5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744803369.11336.8910208278023663425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec3b9a8341a01cbc82e0a4b7bebfd1eb0dd6d612775803e0907e796244ed8dc
Date: Sun, 23 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787448033
