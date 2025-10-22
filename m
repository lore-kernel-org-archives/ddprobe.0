Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3C5346E5B
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142194; cv=none; b=uVwXFHWayVWRwvYOMgqhPR4sEW/mtAG9EvJs79NUzTQyKH2IPlbCKKhag/EqV0tFnBD4spSTdG2Frsa+ttd8DNx9Kf6d4wfN3rUsOvGOW2ELGdFhR03tafb93fD5UUNc5wMHdfHfSeRp1PLA79U1eVRO4Z90qAPZglr1tKxsjzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142194; c=relaxed/simple;
	bh=g6QY0xRdVeKoAQQd/U3N4y5OBuVjCLil1NgAo4/tgnY=;
	h=To:Subject:From:Message-Id:Date; b=k8AXpprWQTXYynYEqOgUDILJItzGkj+NbeTwJj/8/MVG38oCXJm3C3eu6dY1OzqKo8+Cx3zBB42kO3mqjYarXEKnoBQmYrkywa7dwayzGjYx9hnFgv85tQMQgbRuTfX9k8Ht4crMYPsoCN1crsrTwciXvYljra9YQp0snpIRu3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw3gjl2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw3gjl2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1720C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761142193;
	bh=g6QY0xRdVeKoAQQd/U3N4y5OBuVjCLil1NgAo4/tgnY=;
	h=To:Subject:From:Date:From;
	b=gw3gjl2fTwB+fUoG3k9FRmG5R9gor0y+8DuWTWjULrzjl5EFmwIxcLGli8vh7vL/r
	 /vs7yQjZnobHoM5ZfXYvDhZzirIaPAUnC3lVKrMn87bY3vEUmpEkafo92FobwWH/Q+
	 6qwTeMFkYPXDpbgnP7SzFum7VAzzc72ZuQdhawDHS1YQ1qJT10Quqq/0BKOHOeyvap
	 VSfrIQfMGCgaznIlVr6TwP3HVO6VGziJ13ucNHJg8T11Kg6ERruBwaDtdauplbySSX
	 9oD6UBbOJyz13g0f0cU/xGi3YCTJl270A+2QAa/SUvk7eImuigf2P/B3C7+NuMdlsx
	 2wgABox/7TUOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F9CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114219358.6454.1652874586736674650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9827e02081db6575cf3562cd0394aef0be90af750d0ad850808f84049f136193
Date: Wed, 22 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761142193
