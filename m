Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6211E7C34
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738569354; cv=none; b=UWTIvsDOdJcrlQDmGUsvVWhMdO9QtUeXHrRw9Y6FvTy2B7FZA9PGI+2bzQlyzaq/7JqFKAd7GUyo+3KxPhMDm9nh0liJ0EcrWyi/GDH2BZ0bjjIv05jDBD9Mo5VcBYz1xc2+MYIfN1uKIuBYG/niwS79ZUKRmwht/BfDZ6Z1If4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738569354; c=relaxed/simple;
	bh=gg9+R+JVwufLwpO6WBIK0e5uPlIBksgL3oIOvBgapyg=;
	h=To:Subject:From:Message-Id:Date; b=gPfsbCVrVmVo7hwCWhLRccdlMJ96hEf67TESUBMc7chCSVveT6WJmzNBq7b7VgWXTN4uVZ1lRPA0N23n4r/2uQHEcua35px9aH7AQ6o5wjKTgjtIWvrxWA5PdOj9C6PiJGob/IVJWyBd3x8q9OYogjkoCoga52fCK1OKykcxkos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLOlmoAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLOlmoAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5676C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738569353;
	bh=gg9+R+JVwufLwpO6WBIK0e5uPlIBksgL3oIOvBgapyg=;
	h=To:Subject:From:Date:From;
	b=mLOlmoACF3zCELeEsQfbLUKkaCvygrdf4ifEHrSnQupd3wsNpYsq8Nw5cWSqPvNYX
	 qagZ1LF5ds9raX+C0+aOI+JWxRbRubhMyokUEukmaWbZf4/MRuiXLBmEF+jJe4lq6G
	 UVBQ0X2tu6Z/rItBPLQCitnM/S5UKtyIBBilK4iwjMYB5pFhpmk6VsYvcFFqz2EyJS
	 xdMNyBPrnXfhdYbkoW37gpHnM+RxiBDOHdd/2xvX0zzmrc3NmI2Hm4xrFK1r2KXRof
	 E1jj0kD/FH4iYaHr6p4GTVByxY+X2a0YR+pVxxPo+50zckPAGImOThDTnOIemPmQSI
	 75N1pc0vYqSxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9373AC02196
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173856935359.5396.11760924012337398950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e27dab950d7fa09033f83910b497490af4e37d3b0c7b9c213edb696576f8fbf
Date: Mon, 03 Feb 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738569353
