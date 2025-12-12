Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338A22AE78
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765522974; cv=none; b=UZbOaHkmm4CXnwHuIMjrZX7kFgOEFXmYGVyPh32XABN4/JWIqMZvpAdVjrUnk0qA1FQidkbXvuo0Q9OpSD5COL5JDvw4P/Vp4AXfwAfz/GfNFrMIyaY5Sp8r4QBSQzqrX33+M2A2ExzYWGG3b9fw5Y0JzldoKnVDfvjzykWZ8NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765522974; c=relaxed/simple;
	bh=XpasJLiVBQ/qLyqfmkxyeHJF+JzvvAGy6UbQWtPgve8=;
	h=To:Subject:From:Message-Id:Date; b=FGP4M+c582dS7lyR/fsKIaSxkr/N+4Tpc7HMt0xFmPdAkbNhEfnsC+GLCiiMFbFtR497BVyP1+/yhpihBVxa6W/RGpwmetRVjEcLWRHRAkuwfrhk+3veal58nRHAJs/CDIuFE3slSsdiIQ3qGXnNOA2E5E1MhpaoqwcTib7UVDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFLLaau7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFLLaau7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB758C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765522973;
	bh=XpasJLiVBQ/qLyqfmkxyeHJF+JzvvAGy6UbQWtPgve8=;
	h=To:Subject:From:Date:From;
	b=YFLLaau7scxOM0XdhwEnNxXMPOr9OoGMSRSp1UOzXeCxmdVdAtUTGFDdwH8A72KuT
	 HLBa3lM4xGO3A6+o8oFmi5e11NaEJyWHshyApOUfESb14yQO3dN8UlJmtjYAx7Ckbq
	 HDdkyZgW4PPYZ2zgY+kNV0N1zmEi7XN5Yzzi2aJATUxX00F+7gPN3AjaCZGf1tJm25
	 jsn4AyOdYU8+Lo04FUqBVThb7hI3ML+xoU1LsAZLVDy7KI7ZWv89PKEK/t027WBSwc
	 8Gf+QBmTzBRJ2tLO1F4Q7e5qGcEIz3gufRF34SxFUAt04aBUg9Cn7xqkH8uSQjOQfC
	 U7aDGGC8ECH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4A8D4336E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552297360.25524.10282354349315442202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cbebefd000a85fad52058c7ee0481b83f8aa9f06a8c9fc3f8226576f4f8df3
Date: Fri, 12 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765522973
