Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588CF433BC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732982154; cv=none; b=Xx3gGi61Ji2n5XnsNOFR8YjPthqFwZuGBm8a2uAiVzbFlg1gVNVMTzwW2TyMjaE3bbomDPmuoEVNrU9vW2wNUgAOnm6k9MDhZqIX3mygxrkxHNCb38nljkPGnraxC7ZISx4GZF8DimZ3VPLV3OQMoeDfi2jBW8M9tSzNxjJ+bNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732982154; c=relaxed/simple;
	bh=5toV+HQMMolQbYfFzuqEYqfXMqoV2yJDmQl5pT82npc=;
	h=To:Subject:From:Message-Id:Date; b=kn+daYVvPwmJT7lim6GGIj56pZhXdIbziw2Xf5NVgHDSavPPIDS/dyjfKB0MnetBI3qfUssbf5rZWEKroaLkjMLv2AMj82SIzDIl2qu6QuH9i0B/PUEPWXljI/IQNyHO363OMfx+sgePubELx30CUAVBoL7lW7kqkD5wPrPRt7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIRyAWGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIRyAWGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C787AC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732982153;
	bh=5toV+HQMMolQbYfFzuqEYqfXMqoV2yJDmQl5pT82npc=;
	h=To:Subject:From:Date:From;
	b=dIRyAWGl4Pb87UpYJtVWzbdaN3WoTOpj3C/C78Gkh8jTgq/dwuEiPj/ljWbrwDljZ
	 U3/Wc0ukl8Y7wfUXxetAtgntazbd+ds7nIsEANAfL7KLpTGElMn9CE8mlso9ll60cr
	 BorUktgZYm+cfShvCstimW7LJu2rlBog3FLSZDlgkJ6NWKPz1ElWlwyEM9n89OnGHS
	 +D0qgfkI8Sa984QfuJC8Q8kJaRBBDyqD4lL5I42lJnxHPKqJiJIso6aUPA5TMCXTuO
	 90kvC3nDajltDQvT/mELwiR5FJ1ZPPbfGXjAg/tBw8+ikV+n9p/h90CQlz+ptomO+8
	 z9WC166BQM76Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC863D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298215365.20619.12444542353318722357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb3cdee59733332ae0e5e52160b1c5a11cea13826cec0ae2fcffe2bee8eb6bd
Date: Sat, 30 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732982153
