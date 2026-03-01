Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0C1430BBE
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772359494; cv=none; b=KVPZJeWmAmbk4NX2oF+s3zEqDXrI/z+O7N8nOteWq3OiU0UDvhtZtpbenCB2iMAKudEZ4ocn3evbXMnGxG4bL6uLnzF4b86XLgY3BiB1ensiY8nlksZMlyQ9eOd8uC5N9de24zV5FxGQL7hfJW3s19sLiqR8LUMOyGFP3MdF4GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772359494; c=relaxed/simple;
	bh=xwxfayetqUQk2Zus+arn3G99hPjKn2VpxF77Ffsyzs8=;
	h=To:Subject:From:Message-Id:Date; b=NkUVvnDKj7p0Lcg384XWT4U5SSNpMEsQv4F6gNVPOQH+osV5UDUP4qnBmrTLt/DJIqbf7spapDqz8EdBHe1yXA9kNl/Y5KDANJW2dVPwlrkfOn2aB/m6f9REFHlfDXvrsdZTjldPeJ+K0lK9VGFqyjdYTK4z67MCaQwKZ1O9bzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI8061WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eI8061WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C72C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772359493;
	bh=xwxfayetqUQk2Zus+arn3G99hPjKn2VpxF77Ffsyzs8=;
	h=To:Subject:From:Date:From;
	b=eI8061WBUti30pIvPah1aeUHkfSkbwZvbn2E9y45bQb3bI2Lp4wf8i/9xQ3c/0set
	 +m4Q2Oj4ykCO60CTFyE21jcAlUMMWLgmCIJi1yPoPcu3lRl7vFSrj4GNpq7OxNKln0
	 lzB9h1NVqB/eo+2zLbCz9tBeVlYQv/Fsf/u12tmJck8hPvooDUoukVihJ+kDtvCOLm
	 nRzVs0CC6VOG9NkLu01qRLajsthI92hRPYmhdDlhDM0IFLDVjtL5knYThdA3Nb152a
	 pCUEpLjhiazzSZEwnQiAK3E5Clu/Fn9xnUMDcLd3BnMZ1SDb69sqP321DE1cdxYWdP
	 V9Vd7cOn2uy5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3711FD004A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235949359.32664.13189572625525295095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6445bad295c535111146ecead448a9e018e7546d4b556705c34ec24edf17d773
Date: Sun, 01 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772359493
