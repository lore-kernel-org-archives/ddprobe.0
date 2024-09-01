Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411BB1EB27
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725218154; cv=none; b=RoJZDTC3J62cA/l1l6nJDtN+vFbGF2SmXS82vMumW35unQxOG2uQ5nJa6IpZWCWep3CqAmS2RLF3iTytsNCGdYf00TpMrAsBiWD/knHH6hdBS1z6IG574P1SVtgvdrtKcPyZlZ0oUZGWuhXH08afMBO6TgmeMJ/qWufoj/zmaBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725218154; c=relaxed/simple;
	bh=A2KSlnovnyJiapJ97Pe2Uca2FUH+nf11D8AOJS90cQY=;
	h=To:Subject:From:Message-Id:Date; b=u3lj7IT24zuD8PM65acnI/Dv23in2PyVkZJj4bhqs4lpDMECHN14SEg9EQtNe9hgMCWDy1R7aqJcjep8SmvYmf+RpoXerS5kBpbs9JzuxUDh+w1Zrj7jPkw2zvLyd/caE2QjxFt+G3tAdiVBf7wehf96aLU8hWG1lbhV4e8lkxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLdFbQ31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLdFbQ31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5824C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725218153;
	bh=A2KSlnovnyJiapJ97Pe2Uca2FUH+nf11D8AOJS90cQY=;
	h=To:Subject:From:Date:From;
	b=mLdFbQ31nLN/vWOgJuGMBsDlgWq0q/QFRBIS7mezAVcCx1oMLZpHdt3h6l6z8OWQm
	 ZRC4SbXF8QmrroHMWZr5NJMwFhzErHTSGBnH8GKzqoJfViGNPHm3YevClHjAuZQp8Q
	 bQquPp/dh1s7kIjup/uHiqHQs92ZjzGS3x0KsXO/MWwXFL4RYdS4z1V2NU9ZBWwxBp
	 ZjkFAx8GiU9ZWPX2PwcBTemDxLxscv8w2ZnVprgh/2cbOFPn3vg4T8qg0d6mOZAgrv
	 iJ+pkzk8Yz6LqIE9sQfUy64JWItq3FvkN6R7B1SDW2aSAd1PefUVwSCICAzoCQ1beE
	 cT44gQNd4q5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0728C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172521815361.986.6386606267408679402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004714efaf9e4ea18ef19193d43459dc943982804e501d502a038eefef664037
Date: Sun, 01 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725218153
