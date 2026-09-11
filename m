Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5273D1A3160
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789133434; cv=none; b=cw+BaU/jR9z5dnze0wIo/q7SZrQwSnvYlOejKYEe/xamcxa3NNIP9eLwINGo8P51th9kEKCnp0i8snY5QpsXcYv7DyNpCOoNIuVfL7MBnG16UUihXb+7P769xX0mKR8KVSuU17N5816TRXYBoLntfBb6MIlpU6ZCmvneEy5Bdao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789133434; c=relaxed/simple;
	bh=QF9oME/zl/uRJTB9PeJ/dLZguTo4gMINecLb3hPMeDQ=;
	h=To:Subject:From:Message-Id:Date; b=EY+l/roh+cgaN4kA4pv+r1x63jALjV4wI2vLat2fjW3sMXVZbNezI5f5AdUXk4w8HM3yazYoZ+dOPioIBDtQvJ4gK2u1o0bTjt/MPdZGV6RB0uUpsjjiw/2RqMMcqnFoElkortBKmnvjvqoBZ4t9PbvXVWSz+XBp3TjWP5NXVS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enPp+RAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enPp+RAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB15C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789133433;
	bh=QF9oME/zl/uRJTB9PeJ/dLZguTo4gMINecLb3hPMeDQ=;
	h=To:Subject:From:Date:From;
	b=enPp+RABphOyh6kR2Fnhwpjcllngt82bDzGrAOjbKj9dmDDoCkDHJBZxc96jkfnxG
	 61oZq+2+4Zokr+oecs1/PwI6YYpmZ9+2y+38p5758UiB9ifQMFsGgdwXMitEVrVcF7
	 ca/hBbCiZyz/ZeVzqLDuI0W0T/JyZ8dtO43yA+gO6Rpqn2jIy98ot+pplLSAr1wzbN
	 lY0e3f0/jhIno514LK2x6cmk7t6QFcfLWMFD1Px268shYCdUkeYeQlMjLAB/HAd8V3
	 0SIDFvvJEFPAiywrD4iz1Ke0OYtv7A4CFGp3YEEQ9p2/sn+3lQmgXj/k1kbJCx7fm2
	 EYKPb3jVVCZbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89BC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913343368.10259.14737125449052351369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832503aaaf46730534bc698c4338742cea7a7676bc9c27dd785241626c8d9c11
Date: Fri, 11 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789133433
