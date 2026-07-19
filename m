Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2481E531
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784459914; cv=none; b=E8BkE8VSbfCtNZ+HgCxK+xUrdYEA5rSOSFWRDiY6r580nepttW5/mj/hDfSwWJy1QkxTzeQpDoD7NqNqug7lZ5M8bkdsx8+lGeWLdYAT/ewonpxSzwmdeScoldev2a2YdiGKciAjNVZwUsE9yL5Btmf2ahFVj51I/HBqScMvAGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784459914; c=relaxed/simple;
	bh=QSg/NwM4NskzPcCMwLAFODDPfMRL1i7SV5vIvkTg+3Y=;
	h=To:Subject:From:Message-Id:Date; b=oWiuDA89rErLrIunJyXdY7MT/XeWwY1oU1PsaaJp5ydo6zBSZad+6xH3SQFPq9sD1QcKQVYP0edg7Vap9UW0nL8wpvTwwpmRQX/nC4vNHuFleF5dSzzsEHo9snawujzTiXvvN/ekK0uZPyGIDAPjIEuA6rkr/YbHfkaEowmySIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLqFeqxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLqFeqxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC04DC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784459913;
	bh=QSg/NwM4NskzPcCMwLAFODDPfMRL1i7SV5vIvkTg+3Y=;
	h=To:Subject:From:Date:From;
	b=NLqFeqxpQd2jdz6o81Mo/vw3CRp09hup9sJ+o5+tVtNDc2XG9V528OLdGeuHcUzJ2
	 e1IQXBnQ+fM+F/2Z0fF7dXZTymkWXiGxJm8jGRBPq7Aw6vXljyiMwQz/VvUjA4ZDXC
	 FJJDEXOa9Pk35RtrYqViAHod0bkp4WmFXvK9jd9C2x8ZQKI2yuHCXWMj7M23683JW0
	 2Pa55BKmKsKQUw+Wh/L+R3il0xsGR7MPVfV1mSGR1HaAe8J9BLeoZOIs53M7oVyAsp
	 Nm73F24RRFLz6leyKb/G/F+/Jby772muH5msnFv+KeHr8DzTPcFqdbAXywpEquhgKp
	 3rMlQMDroIA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8740C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445991368.23863.15414637282275544365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8cb62166563194b0c43601c101a3c65549fbaa1cb2ff91464403ee4b00b4da
Date: Sun, 19 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784459913
