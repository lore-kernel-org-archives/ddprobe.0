Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9531EDA2C
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766940834; cv=none; b=cPQBKltFw5/AHmcZChZ2AOlY+aezYe3WoN/DnAmsyYoI0Qxw8h81oxy1iWWE6PpDjkvje7wX/QYI25Z5dhwhW8TmOJFrZflO3FoHN9yuTeZYaDte4V4OD9kUz+5OLfgMnU52LIKwEo4rfj2VjrF1iunYmJ04zqDbrEneORlUY2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766940834; c=relaxed/simple;
	bh=Oa9vW6B4c8Y6UEDiFZjTcmIfurt9OEXu0se/AqiUyNA=;
	h=To:Subject:From:Message-Id:Date; b=rLDXB1toV0U/l0ps3KHudLtFfSzWDgnGwRYIV/ppNwuaGfMtLrACj+exUyatDg+kdbCz2Ifp9X9WLRVlyEp9aMZpN16FuuQ5XWwImDkWBwff2ULmtMa1q5AGDAG0N6Ghs4Ay9pCxRPnt8sE0EZxSbZUKrec8DEAVZ9SvAQ/za1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVyhscvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVyhscvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BB0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766940833;
	bh=Oa9vW6B4c8Y6UEDiFZjTcmIfurt9OEXu0se/AqiUyNA=;
	h=To:Subject:From:Date:From;
	b=DVyhscvJjAx57bOsYNnQM7NDbWUYL2uhZjASVrmQTotjXpqod5YDHJIafo1MJ9MFF
	 ByPzzB/lIDkttS5sJftNGr/CvfHWCLEBRhAqHZyrLizCJ6hU/Kyk+VmRkHNwGaedSj
	 gpZoCogQ4pfcChzt/YbXXfziQbYWTAYR0Q8NqD7Shk8fmY72rq9NvoTeO2MCvSU1uW
	 Nfutc5mDCu8uNUmlGER8/LM5WroXHkGtfxmDJJOuj2x+jyYs2mGlPdbZiAp2pdNyKE
	 S6ybh8Z7p5/uvsyyJp6abyPwaZHEllq0Wj+wLmT1BG69FZxwR7cHa3aLECgqFe0Ddk
	 DJ+hTMa+WFO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9545BE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694083359.1613.376682340164158241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0602d50c0c75bedd9d502bda70af26372b7d6234daa015d9e119d6d94c92c7f1
Date: Sun, 28 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766940833
