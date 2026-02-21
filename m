Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D7E2C236B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771689893; cv=none; b=B3iuWGY6UawNKP13x/hiDkuukcTN94AO1YV+lwE4bsxMkRXDxzD8hGgzsV2r2lfA6fDcLTmfCB6WAtbYFsB3r6YL82w8inSiEgZkE/QzR1OiogQR/PAs5NcUji26w6oHkQPFFMRc0TfjQTNo9SVUM1d4uYh3wNlkYg/6of8ROQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771689893; c=relaxed/simple;
	bh=nXjxEdYh5geH6WvZI0EmSKBXH6oz6UIjK6o5+063cGg=;
	h=To:Subject:From:Message-Id:Date; b=fHEFWKK6B9MuRsQ1fU1jTmv4n9y+OdvpBQP2yCV8Fb32s7VkmFLxjR2sXE6fhcocmrAWBWxQ3ATdhdHL7iq+abGfONlzTI5OKJKym7IMLPrDbdqqn7b0EHKt7ZeFJ1DUWVlsHXiLh3D+E2aNTccyQp9r0V1z1hG+f0blEQhcSpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nd6/zju2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nd6/zju2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA54EC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771689893;
	bh=nXjxEdYh5geH6WvZI0EmSKBXH6oz6UIjK6o5+063cGg=;
	h=To:Subject:From:Date:From;
	b=nd6/zju2Q4JZmvlSW1krEV0H/z0Xu4cWDOLvQmfh9+zLA4WK9ccCVuJ2o+SBzpKiU
	 W8p9zgMB2CzlXe9zL0O5vTsZF0N3j5pj7+U0OaEsl/z1fjm0Tl9+KRo2k/5O9CK+Ai
	 aSnVcqifz5VkmVhzH+fk+1vzcfzFb6pli9Z0xp0wcxw0GJSKt4QhKm+xUpz1LOSeXu
	 uLWKBMVIXH+tjnS4zjdgHJctj3TdGhSwKR+dQgYw501Kcl4NipWJG0a1lgT3k+Oq6p
	 zPBoHr+B98CxCVXKIS4vKhEaJfR3s4qil/yUuYYUXl4YaEBC3FPviD7Dj7CJ//NHi+
	 NK5ClIgiXGvYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973AAC5CFE6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168989361.20683.884383519222402886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f70f974a40361f2d71e93e2e1910c7bbd8e99c0a94a83322e97779b0c1f2ed
Date: Sat, 21 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771689893
