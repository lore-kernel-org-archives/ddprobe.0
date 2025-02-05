Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AAB2135A5
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738727754; cv=none; b=D4r2Tc91BQx5GSmhTrNqOJ+DZ/54TqqC6ZY7DjktTe3VkJSftic66P0TW9R/E5e6DQlFS0EE8kahIF9PVj2PTdsJkuewqQMdqMywFejrbAhNnoH7qTH31/6zgSYMWw2snUfttPepLvB/OIrlxSO8dsJRBW5lsMv4SoJdhgD9otU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738727754; c=relaxed/simple;
	bh=kvXDJQ/DeiqipTzNeahrWyD08+9C/38GctODwMmD7hU=;
	h=To:Subject:From:Message-Id:Date; b=hJQoUKHJtLCFd2ozm0v9AVp+ajVUImMBFUPuxpxzglOm1yWK7R4H1+pWvgmtrXhBYW+HU0ua6JQnqcTSndgOKIG0DlOSXtvWHmYXxGfrrg3eQX4Uaz6cNyuzgJlcFcvQRECNcvWZh7DVo7PyVSqvlDz3KeGOSZB7RYEK7/I3g14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCPHfU7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCPHfU7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B567EC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738727753;
	bh=kvXDJQ/DeiqipTzNeahrWyD08+9C/38GctODwMmD7hU=;
	h=To:Subject:From:Date:From;
	b=YCPHfU7Yl6iaBQ20d+Bn8ulbdLnuLawUprFFELtQUYH46ZdR6CwEJrfOwpAdDkWms
	 bBklGKrb2gx+QJ+4BLqb0ZZ1gNzRvB13SoeETpuw9jXsEJOKP5WHWitFXAMgWaz/UE
	 PtE+xDmQGA5zUqXjGlVxrMVXi58vp2du51txHhU2dpALvmWAFfRn3l6HItpSGpY/HS
	 X3BpasZVlzcwltui8uz0mGaIfTyIGSiwibZ9QoMnvRyTmXRUql5jC32qx8396tTpl1
	 wetkm9iONzScEO61Zp4Xcxxk2e799KXQQ1CYEXtEq8C0VzA366EF0Crs0dYEUXZHsV
	 cgGTdiWKbiZCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BDBC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173872775361.10414.2497523955208304849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1c84739eb518e1f0f43e7b458e204d3fb74b74f7cb9db239cd4b16d560d1d2
Date: Wed, 05 Feb 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738727753
