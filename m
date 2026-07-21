Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624D0385503
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784644114; cv=none; b=J3gZtcEW18XpfMCoi70hg9yIbJuoGBmgW4IQ0JJ6ngSiwwnrHxATkuWLPv+QwbLA/df6uCMAxI31LrvSXzwA7xsm8VXwHRkJMtbr178RxP316G1GduGt/IrDxlj2/EHmV1a/+Q12/W7V0c6p0y5QCwwCaeEq2D6F2Lazgjqzh7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784644114; c=relaxed/simple;
	bh=AGJuQQ3IyTTOCk1VP7LSs8H4XJl42u0wA76IvmjFcrA=;
	h=To:Subject:From:Message-Id:Date; b=J352j+XUAfiMB0oT87uXPLZgBnfdUa2CPfthoqYX5sNa2LShTPuzVFTMwUPklctWR+67ZQ2dJjHTTptTXeWSoMRYGIJmwLxVNmOIh/NJsPi6t7P+ekrG/aLjyE1kMC8gsTzVL5XmARkWSXcc1+w15tyWU2TwceLCVh+wkmy1ONY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVLdXTwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVLdXTwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DDFC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784644113;
	bh=AGJuQQ3IyTTOCk1VP7LSs8H4XJl42u0wA76IvmjFcrA=;
	h=To:Subject:From:Date:From;
	b=TVLdXTwnbilH/JnorgWpeN9tFFcC+tjzO86JrZUkrh7RSzE00BwZh3m2UYAAo0ld9
	 GymCyGVLWNW86r30hRZSTTwJbeVnUV512QdWE6rXEKozaHQRAFEvL1BYF8+47aTDij
	 jtMInUj15r+R2GUVfoVc+E7raO6OXbQuDrOYp3wp/cLn/PUQSiHZvg0bDYZJHaeb1g
	 8mZrx7HonoORvzk4RJbRuKFJz6Qsr7z4mBhQDMMnqOacpddTHOhvaZCcDMWj5NRaS7
	 0zlZFLBSMj3dkVY3kRts1F2abXW6zmUXKijZDmZiLxC6GNvIfC6Y9Hook/CQP2elA9
	 GJMMqjMtM3lMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1E6C44532
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464411369.26826.5771478579705357840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020ca757985e42f4139bd5c106c4df5e38a48587d233493ff84bc01fc22c7c9c
Date: Tue, 21 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784644113
