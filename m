Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB8610A1F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728681354; cv=none; b=Ts3Vs0IkkB7jDDWkNahggR16TUSUbl6o2zodgl66uoZQAWS/Dxf00ada12VoBYrfh6/2i/cR3ofo2zYP6n0ptgiXuiRgh6YIGOgKiWIDcYAWNW2lozwiL9mKOmLBy42ESrYyCjjI9do+bLfSMXZ+zfH6Dd4wlyhuVCCYuNLrwXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728681354; c=relaxed/simple;
	bh=FzYdYwnwiYpQaDoTbBkg632gC4clBhammpRK52uIM40=;
	h=To:Subject:From:Message-Id:Date; b=PmOERI077aNCYelutehTVM1+gUh77pNuuMCVdJ/mwLhqyzTWE6mFUlM6ClRr5BX21u3lNy9y2hR9et75cq/u5JvOq5DeK91r7aZ1yIP7E5lCR1bQ13aLtSo8g7L4XdpYfhzrd/OYKjYr+3e6C/OPLn5STg3BTl2EnVH5Dc3SK3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4JovKoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4JovKoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE761C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728681353;
	bh=FzYdYwnwiYpQaDoTbBkg632gC4clBhammpRK52uIM40=;
	h=To:Subject:From:Date:From;
	b=h4JovKoebv7R22laZT+7im5qijTtQDqLGdPx9qK/Sidti2iKk7mEQy8XZ61qDIqAk
	 vBfqb24/Hu6z02oKUK6RNLZ2XujuyUDAU+J04h2NBl/kWnkj8BsC64ced/xCCnRDmj
	 5X7wQAwAsZZhmEv4iWtv1w/Vc0a0cL0o4uFo8ic705c6dONU2CgTUuKmwhSZfHw3Ue
	 4Glyonw/QIzDbPbcrfLU5kE+b05zaYD7KkeJWP1B2DkAC10vK47a16DALf8WLaP+zP
	 DwpknQKbPlpo+bYktU/srdqy288msVO3zVYaLNuOsxgqnMx84thzBsBncXNdueTHpY
	 dp3VoWvlN5xnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD12D0EE3F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868135360.30754.15575371399533020263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2e54fd1926f256b2c941eaf441370834cb15f15c8bb7ba817fff8e7dfb07d5
Date: Fri, 11 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728681353
