Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D253B8BB5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772115894; cv=none; b=L2L4U3bKYV1BGPAdcXJ79hVsOYMbDNysMeQwczKyruqTHqyy8HyUR/506BxrQnntsDNBbyLPxPVhW+rAWn1Vrn2jw0fvNwDWOlDeee+RnQ97suiNu1LXeXgw18iAU9b4ZUlj3s6NQLybLWdMz1FC7J07bA9VrNi1je3yL4iwQPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772115894; c=relaxed/simple;
	bh=xTAggCNt3Q+7OvPGW+TGUEcleAO3klUKmx0ZjYdylGA=;
	h=To:Subject:From:Message-Id:Date; b=e4woUOm0C17q4iW3YB9ZY7DkgCilJ2OPi2soyISxgLxX4PJi2tbPQvd3Azza1HxCOgoO9PI4xn2nobbR7WCPpf4N3C4uhw5RagEmuf9DPFic+/jOYL6J1E5w0l17lKAV1ad6znlBE5Dbu86CA1OcPiE8l1UqediKP6eIxpVvTT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXapsrh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXapsrh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75DEC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772115893;
	bh=xTAggCNt3Q+7OvPGW+TGUEcleAO3klUKmx0ZjYdylGA=;
	h=To:Subject:From:Date:From;
	b=oXapsrh21Tsuu2VP1Qz0ooAIjn+Il+bFYCK3NdRx0jQ9z8DZCz+OB85wrqkjMhko6
	 Hl1sCBESgQorOg8L6ve3MCg71L84BUnWu+k5dmDi04W1P8D2+8PJh1ETgwmjbV7VuR
	 si5rqfbOPzCTTajM0H9mbgC/18q6aPcXaYpc/jAf3tBxADv9oeOxU8bZLxZw9GmhQJ
	 gekEq3ofY1I0OdlOZ93Fpj9+EltpmkD7XYTK2D8h8teWiqCKNQ75X8DxVr+7rKY8Sz
	 rtE372oLCp9NJ8iewET4UYDEwyVImKeIQT6y9aUBvQsBmOvORP6rBPdXzlndI4Be1J
	 2Mb2Lz9oAsDRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4DBFFCE08E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211589365.22559.6325787760823848450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a8b47457cfc0c8c1809640cc3932a5a7e28b2d28c423dab0bed149778a9e73
Date: Thu, 26 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772115893
