Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36622EEBA
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747405794; cv=none; b=h2C1G6Gan3gmsOKlFlJJ6zXVIyGhbEWY2lodh2MLq8DRE1W0whrqQgBc96KdcjjnnyeWpwSFQ+2ElR5jspgFXct4q38YdXDwJQ0QRGCwvHO2uJKx7wNenspHf8o0kjlqS/7PP0Re1fxz6OPBcA2hKfu8koOsg/yMja2gYJq8uWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747405794; c=relaxed/simple;
	bh=vrxyVAT18N4z4lV+QmNWAYCqtX/nEq4insQh8bESAyg=;
	h=To:Subject:From:Message-Id:Date; b=WSHbCKdfbHXAjIchsycYePGLWbLirn8d16zNe56387QRx27Z+oAJy8macNigpy8p/wzxpaDwwOsVnLz1xp0qJRy7JZc4D5J3EOW400BPlYknM0IDIy585LfnuUkoH5om6w3VxkvPkedyyRACgGoxvGyN9ApZ1tZzDaf9RW39Eys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnBd/qQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnBd/qQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E518C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747405793;
	bh=vrxyVAT18N4z4lV+QmNWAYCqtX/nEq4insQh8bESAyg=;
	h=To:Subject:From:Date:From;
	b=RnBd/qQeTNEZdh7DNurEoKiawWpdF/a2Vq1J3vs5FS+53Dq28XyhaJOAkwAnx8GAP
	 pkHqkJxdqod2rGr9a0B31G/ZrJLaxflYgGF1fv3szGK5AU/3d1MsCO3P4BbjrNsS1J
	 sjE4qo4igJEzvhHh1yDlnP3SLUUbPiA2KiLc7vn80rGdiNQhokKJpV1+MwFI0LeISb
	 YDe5h27hcDUmpcGxzI6lih1GBDIzeKHF+UFzWALIsPr2njtZ3B36OAWtsbiithcpES
	 LVZ22A+LApg8DDcs5r2YDmt8h3vWr2sTrr7lTo23q3R79RcHEHcqHkIPzWE2/RznsA
	 i/vt8wLE9WoYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E76FC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740579357.22146.2779081925079287966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e863bb3f7597f5ef32ece99078460163d860dab800eca332bc6cac034f1f4a
Date: Fri, 16 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747405793
