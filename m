Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2841F35959
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766107434; cv=none; b=KulqdySUwOsjH+DoHc1EZ37oyJeQefwSlj/drwdlQguw9Ytql+uU4AvNjd6tAmsHAlXbrokOAfMCn/5esLvMlcJgrFavQVUvPuXZrXcqYGim4j+qupEWXftKroqDbi1YJCkWCgo7I6v+O0acadaNSHSETdvYtJXo3Sf+X2T/vGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766107434; c=relaxed/simple;
	bh=FvZkPff9kAAZLJRnEFwfwdIJrfwxYKjl8MTBUMd5fwU=;
	h=To:Subject:From:Message-Id:Date; b=iJ4Hgc7MqmtJD87CPaSl9hb3FxqrRNXgWmFm/Q58I+KhQ9ZC/hkB9zzsmYvmcNYFIWSz6gO31za5ksHIZHDqho4RfdTzzlDFO6tfO/XCfciDvI5FEoG6KK5zhKXnVHfIP8aaxPgNKN14QRSg8oRUWlJsGZ5Ga/k8LOP+MqgH7OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpFXmS3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpFXmS3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F483C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766107433;
	bh=FvZkPff9kAAZLJRnEFwfwdIJrfwxYKjl8MTBUMd5fwU=;
	h=To:Subject:From:Date:From;
	b=TpFXmS3/vXcMnDWLfaB1JPC1u4SjqubL8sqX6sl1muK2VRhuVe6056UL24umpomIU
	 rEwd+zKZRYh9GzUAzwxLpJY2B9gQasecNLCWT/mpTy1Ah4cV/9JnQ47TcDL5Z/lYOo
	 yCpOXyVDWJrDl8iDtnA/QjYBY9dW0Lxyjzvh+R11q5cYTRZcO/OulcAR1efIeUlVjF
	 RqLVwgI5G/vd0M+FlUpDdl7TZ9ld7gr6CWjLLHo7O3Y1sqN+iEzUPKG5bgyGPwD3+/
	 Ft25BX/E/47fRRrT7ZPjvEYFZXdqn74dsgVjRrCTYFSKXQrH3R64RpFbpgcZc4e+Uj
	 83iV81FiV75HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90416D711D3
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610743358.28270.12836025803095615610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3166e75118940a221eb801d235feb0bc05b87a9cb043e8b25a3debb7031e1a10
Date: Fri, 19 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766107433
