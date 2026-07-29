Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4942C4F1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785345034; cv=none; b=nsLwT1IR0oDUTHK/SUtKIF/OwMEH1Fxuxy9CuOSLi4lpqhNZtTJtjC75Osny0AZ0Ldj/jeNNn9H1vMka/C8YijgbJYxKO4EWccCTiz86Chq3T/utmFUkaYLatqtr66Z7ydms0ilIfpGgtJoadUJIug3K+l9PcwKGQwkGcnqFR3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785345034; c=relaxed/simple;
	bh=agE78s8/1JE8QKKsaW84eUNRUSDZOCe+YTktTBw0cWY=;
	h=To:Subject:From:Message-Id:Date; b=Mk4CH5QzcFfAupVWItROcWPGlF3n921uttr636/T48daw+/abSgMfptbPFbE3lNc8q1BihU2vkKYxtCyNmNcMNyxyHKo0bM+OxxZVFT2F73Axird7gUcNlEtofwqf23F3SiyO05ZB2zcljwdt35UVQGyCFZ0LC0e7GzVV8UDfZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsAGeqQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsAGeqQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98AEC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785345033;
	bh=agE78s8/1JE8QKKsaW84eUNRUSDZOCe+YTktTBw0cWY=;
	h=To:Subject:From:Date:From;
	b=YsAGeqQ/Iw6xkCNAA8rplzd91mPUSaLJfk8vTyGgPpI32LXFMFOLgI+rhAQMlq757
	 EC58+5w7yNUQh87QMpn+Fj4FrsqNBRj4KbeOL+60EVYjrgM2LqzV2jCjH+Ra6xFBTw
	 U+D9uCpK8RRSPEQLu/HWnY+8JnuqAxMin+FRRzO6vONefobOMtkrb7VEzvxT/vyCDY
	 ztREk1MpVMZmpslSFTPMpbniQq5kEK+FEMvRH/q0ZpzX53kDJ++b2s866qpJDBF25C
	 oH1Xg58FEIzp3CmeOeU1eGASexEaGxuIYy0hV4ceRESUfH10umebVU9a/aegLWFktl
	 5fbiX3z5JEMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77E9C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534503367.22649.2523814448139761994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45224df0efb3d19d6508bb0c73ad5ffca9dd6bbcfcd2d5dd2a85e85b1323b9ae
Date: Wed, 29 Jul 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785345033
