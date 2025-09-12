Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FA51DE4CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757698194; cv=none; b=SuiQyvILtsiTT4mCT2RYZFEjFv2B5+PNibFAYoNudOdzqLimfAxsNdS+vvbTH5ZmFhp7Lk1jbLIeeE7MYKCio2afAArqsP0ggTSMDiItkuHF3NxQmqSDZfH+icb2SIMe27jbrmCDnUe5W5wZmk/bt0jl0rxhIzMsfTA7/9ZozOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757698194; c=relaxed/simple;
	bh=8WDM3eCtVjK4IumuwPXW7CBkVLJ7+yK9jI8REycWd+I=;
	h=To:Subject:From:Message-Id:Date; b=FQKGNRmPl0MMYHSweVfPhrAF8/gUufg0J3bk4Wb8fzXX5Lb7Sr0DOxginqryvHyl+OHKgLEqDVuUdgMqTMT18Cdl2EZY1JcliCvbz6QUvl1fKjWrb28LUW3hXgHIX3v5B30YSRE5anTOoN9XJ35MTU4+WaW+hb8LPqFhktJuuPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+ZyZ+TR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+ZyZ+TR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53C8C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757698193;
	bh=8WDM3eCtVjK4IumuwPXW7CBkVLJ7+yK9jI8REycWd+I=;
	h=To:Subject:From:Date:From;
	b=d+ZyZ+TRhzCMT8DKVBPzymz/vErP/TQlt7XxIl2/HosbMZjFkyjLoEv5TaFDgNdak
	 z/QeSQx7cbRjPGUFdDRVCtaKZatH4QR5/KtFJaQO4s6FjUz9vpnFPYBS6NICviItet
	 Uln8h1TxRy/V+yzMR8NXm7flFbULSs00czjEXYTNEgtz2L3v4ry5PWhs0Px795Uufz
	 v/F4o0UuYv8jFBJ6YkdOxvaRylpWhOX4Z7ayfVyzuZnhQb5swDtTaMShp/BM1yg6vu
	 WGRx0/qylqHIU5Fhom3XrqX2w9fPedxmh8673g6drGFQwgkU5knZd7OaIkVd0/Ukg3
	 Jjx57jFW7YyGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91963CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769819357.21670.12301705186779498000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bdbf63121fd4cd80bfc236691d2904a55c5190ab8eee5eef3e7f35178f67e9
Date: Fri, 12 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757698193
