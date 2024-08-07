Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339C012FF7B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723068955; cv=none; b=fx+/bCPUlE2+7X83m3JTv5SmzLLXjC80OQRJiEulXN+9taulFgu8bNPMGKwJXhiyu1wBHVuccHsBc3W+9DSfXWPv2O4ROciiy/oRI+CPQ3LLnLWDP56qnHLwiva110XrkzNcc1ahD8CsRd05di+JTPmoTtwF7mjUHVncXM+vsdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723068955; c=relaxed/simple;
	bh=ZLdvi1u+6RYNzRaKI7xXhTbAadxVGtT9Ws/fxSCb17w=;
	h=To:Subject:From:Message-Id:Date; b=redc8lYZ3dm4lYxbtQUIPu5YJ8UclgLpNWouB6IJADVR6he/MD0Ix/3tYVvNJPT4NZ6gPUWF9auvD9Q9wpF0TueWs/GQlBqhOtbDYQ//yxzm7w3H8/la6IbqEOzfQbm1IxxKot/sqDfhtgTA2JHXzRdlkd8nhkOuk2KpgZGIU2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3mHILaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3mHILaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD06C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723068954;
	bh=ZLdvi1u+6RYNzRaKI7xXhTbAadxVGtT9Ws/fxSCb17w=;
	h=To:Subject:From:Date:From;
	b=W3mHILaTc3JDspQ62BHfGbBRvMWcqhFJ1eWhwLXOicMvl6yNqZRWXh1sToxsT4UZz
	 vyYyF7FuWebKN1QqBGM/JmKtBOY08R1CA7YJJESJennGGyhLw6UIgGILqIEitj9whs
	 oTilvWQxzzjok/Dy8YT5wQXNmcAc61zkT44dSCWKYvCZAGn6664gQ6CV8Y2Ktv4R5u
	 N5nvVOiTdY9yWEY7qu+tmZWrDAvTj8lbY2xgkKQVz9A7EkAQjnNGR7i0NOEUzUwOUB
	 AlbxLxZrC7wbO/2cahuoEadZzeRL+GgpgchgXritY2xo8ZHmvOldOyXXlOQnIWjAv0
	 XXC38xAfHKCbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B32C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306895361.13486.11887226460957111061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1ec569fdabf0f8d45c397750219a9691d3461b640b4bf19fa7006da4a2d232
Date: Wed, 07 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723068953
