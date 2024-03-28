Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF18243ABE
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711627096; cv=none; b=QzcC4KR4TvcVW2atxjOEoVvDPLxfJ3qT/XL6s+K+s+dkeCEZClh8pA6BF4D0DzNedFCb4jqvwiiA1AbwdzTG2ATT89NYkBJHJhxRJM+svYfzr7+rm85bb8YcnJGqKAXOACZ+Q8CF9VUZIGGSDWcvTAcUOk+ymoH9TRANRqD17Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711627096; c=relaxed/simple;
	bh=P7/fJfa29OK/awdhkT4hSvePfYyrHkv/os4zV/qgvdQ=;
	h=To:Subject:From:Message-Id:Date; b=kY3A9LDhdnMb/OXhekJ0emqoYlQMoyl+sSrQgUbGisnfKbCaHNnNNbC7ATR3zFzmg1XsHblRzjJDc08MJho0jwId5/7PjfLC4GnM22sRJLx7tE4me/GJULO5LuO+lPlIV1oCunOUgaBI2SPkst2A77BGjgH8XSpIG0FyRH6Mm/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdeLzZNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdeLzZNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72602C43390
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711627096;
	bh=P7/fJfa29OK/awdhkT4hSvePfYyrHkv/os4zV/qgvdQ=;
	h=To:Subject:From:Date:From;
	b=CdeLzZNrhKZ+8A4jNYtP1SgKuekdKGBpBo3AVuaElVC31aAZpnE5CMk0qU7YMTXIj
	 5G4lMKCx/23s+I1tWBq6aCbmO5dgcui17zr7F7QMWhDoC5oibhchP4vLwmYsD0yYL7
	 QAs7EJQ2ubc3H0Hno+nGb+0W3Phl0hzl4HhAOiFxGb5A/YPFozvUc9IXnOr1gxlEGC
	 2QZVKEX4e3lltz6k909hs9WWYL5bBHAdx/eehn536nlb5JBRy6mNpobNEoa+2H78sA
	 RNRL4mVdnOlTggUuOYNmOd1JyWKpzDX0vGEKilV9EzBaXyVtkEDlSf3xKeYdWc4Xh0
	 6dhibdwAdDKpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62135C54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171162709639.13383.9521058774453853956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254d1a92aaa484aca662e1bf3a71b519b3ae2325a770bc10663e04a29317332b
Date: Thu, 28 Mar 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711627096
