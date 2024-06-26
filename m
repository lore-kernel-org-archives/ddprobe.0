Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2FE14D6E0
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719432203; cv=none; b=BlPA73pCb/EMolGx/E5umPrC8Dmyeg2w3YL4fxPFISjEuEGyRXk6phcvg3980Iec6SeSNqBhq0l4HEd1OO/ICHTqcBiTr9wlrVPfDMeXbPu17AUeUiShwOoA86GZcuf1NL0lhUQIRig4sGO9VX5OHxX9QYPyawu50CYvc9Wp5Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719432203; c=relaxed/simple;
	bh=i+pOBq47Z2wQX7bG+OnsA6UR0qf/+dGg43QJu6HI+kw=;
	h=To:Subject:From:Message-Id:Date; b=bWU5EYKNu2Y8fgHe3aTpetCg94XZRbRAjc1O+Z2rzdxqi/PFyoKlYQRCQ5Ac4kL9hnebsWPHeimlfakRLUfd1FHfnSjMFjxBrdHQYfkBL9D/hGsX7y7fdJtMdFXmypKS/XDr8tIPkbW/3zy5Mz1yQqzV76gxHkglUwVJGvK8Hvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJdrWmdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJdrWmdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A07C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719432202;
	bh=i+pOBq47Z2wQX7bG+OnsA6UR0qf/+dGg43QJu6HI+kw=;
	h=To:Subject:From:Date:From;
	b=ZJdrWmdiaRj6qTOUK/4uEskPZOk1bTUGdAJTFuu2Ob+UHK3MIkDY+ZW3jebjAtr1I
	 UFAjPCRlw8BlwWFyPNRODizmGvxp+k5XO1x7Wd4cP3cr87RfCT9r6/M20Kg1zzkP5y
	 TdbDrYImO4JiHXxD7mba4MiEsBS69jlkXzvPOE5le0SaU/ETXKAAItDDVaLXWWL3qK
	 HONRhG62Vf9cPhfJKFvMV87CHbzpr0Npt4V5gUamF5Km3V7+TBUBkOMHMCMu8mFxWy
	 Ehoj2HX2vJAhvJ1EQ9I5IfHQ9Fd9xC1C6jl/8gIjkEYqvvuYyPhmCOz0+bod/Dktul
	 ODtlBDUWxVDtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1A5C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 20:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943220282.4777.15703197086852798065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f223c0eccf2ae8dd7391170286948f4ad85b6b081b015b74cad0e12822f43e
Date: Wed, 26 Jun 2024 20:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719432202
