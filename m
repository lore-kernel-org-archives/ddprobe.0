Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A451F12E9
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764443574; cv=none; b=UIp6AEAoV9aYbnzDi+yJyonIdEaohlwcJHtOTPA5QQjJgOs9uv2fyVk6vL58xw178YKl8qWvc06t0hI851oFioROaE1l/9dEZXjlGZI65LsMzw56xafInw6vBKPnWeIaC9jD9xWsqNBLgOexlocaIfnJPDpCYkX3RvBt6cBjqI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764443574; c=relaxed/simple;
	bh=RF49fhZ9o7up5imloIij4juGtY3Pkl21GYVg5eVtJEY=;
	h=To:Subject:From:Message-Id:Date; b=CwpLjlQE5J6xNowsicJQ8RlbMtO1WypeDN2rG3b11w1/+2FAy+bV3g431pwlLpmz+/H1y2F0S2ZDyHFo3PY5rCO7kSGpdDElFRY81PnX6oZqX0sb8P+r8eSMrLTOBd225A7sVg71hKMMsk7Nts7zx3UMA9Ws5HC4euJndIzoe5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0Su62M/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0Su62M/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81C5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764443573;
	bh=RF49fhZ9o7up5imloIij4juGtY3Pkl21GYVg5eVtJEY=;
	h=To:Subject:From:Date:From;
	b=M0Su62M/qpWkiW2CDDcWzROsNcA9uiZOXxNaENgrhevdW4LsbNg5tLi0JFX/65vD7
	 h9FbUMk65CX0ZXwDQHX2D2v0MBETJSGXSvYZXQORvDsmPs+aqNGsmvLuiDvrTjPyI7
	 wJ7YAENjoPofOKHxuzb/vkU71PSXXKJOooNyurWM5jF+Xld/g/fZkYSdyGhLfo57vI
	 bw0UJ4b38AGXLvKqJhUtnI8FQ+RChM1jQ/iJ9Z4WwsN3D3OTWd9FbAkcpGgLolvXCx
	 UpA0OjHUY07oBgLnumJD9Ykm7Asnk1ljN2v/Jn11eHu9sEY1OmY2U/xfKzu4ifilFO
	 AjxX5d9twjnUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9677DCFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444357358.22817.13106957832167315009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c659a7277e2a9ecbd5f89cfcc01c57b0d44bf4868177b6c45c2c35458d9cf03a
Date: Sat, 29 Nov 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764443573
