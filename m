Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397681724
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764293574; cv=none; b=ruqLnguTQGKEFkbdSagd3KpIXB4gpVsdTGH4TBjCr3R0mG6wHmCc5IbImI+X58IKAhJauMpA8zZCh1/Cp2ZW50nBX+51wGWOH7HhlGl1Ined7Lr2z79PSQmR+cTkuCqrsgH+0XYU0gY3ErMfcSI1wsRixyPXqF+9cKhJ+AMJu/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764293574; c=relaxed/simple;
	bh=eSt9woGJlh+HFolJe1suPlcJlN+q8lXOLiRrAueiqEs=;
	h=To:Subject:From:Message-Id:Date; b=roIHnEy13ii49tY5LuaYvPd2d1zRVRkZifYf5bf7M9BsY4rbqxJ8glJhV81fT7+fDAJqvIS9IfUHQD3k3eEKVI9klOwZSSMlATz07smedRYtQ9Yx+QuSp/r//i9l/wn3ShjInjs3tlH3u3lJu33AKhv+j40snLJMbsXhuenoAs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9WsbJuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9WsbJuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B33C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764293573;
	bh=eSt9woGJlh+HFolJe1suPlcJlN+q8lXOLiRrAueiqEs=;
	h=To:Subject:From:Date:From;
	b=G9WsbJuSAZjGuCEPtJWLIFnCiLMzv24HEhqYn1XtA7EFthsIWiYR7u/jmTyBOfFZD
	 IHLG6uPX7ZCeLh1wIDQ2XPF4jL9K8pGSXUv1s4x7dDNzyDxGv69RKMSoG9gJAdzD2s
	 Vzdh0dlwEnGsXNPzKqKpQ9MfaZw57XaVbeyVbE7qMoqLDwQEz2CWXIGIesX9jMcz9Y
	 0dMijGd3ID9cn6b7NJI4jaiQC8TPpXaVGG33x9z8cd+d1sDePkNslnIHldabO7iQmt
	 XXgAPuHk837FLFoE6kwwpr9nRDVXqz+Avf0/nPO+/L4U9yaZWt5OvuK9LOlDz1SwTr
	 PtN1Ouc5QhRnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B8CCFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429357361.5708.16062401484063656986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa019b40e9a1c4c6fd080f80fe73a946415c58a6bde4e327a3c96f11fa0044d4
Date: Fri, 28 Nov 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764293573
