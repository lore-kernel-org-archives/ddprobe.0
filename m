Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2118A2DEA96
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756985994; cv=none; b=mNwUYIdjVuFcfmjZhnbazuq+hjqotw9HzWImIyLd7BRuBjOhi6lGQ6xyJ3XrNm+lJIeRUbBSVctbTkqYYFI++CmQGQ2BdyHhfGJcro4fizmAUIStnnPuKGpH2plddRWbndRwEzdxbcPXNVZUrV9SJtnfo2lCA1SBcnw8QIkmHOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756985994; c=relaxed/simple;
	bh=gjdDGnsN5bHIZzJYySGrVbopVx42qu7aIjzdReBgDkk=;
	h=To:Subject:From:Message-Id:Date; b=ChgfPu7uJ4gLhxCoRMJVIHZqQev8j7EmYnwTExEm/RXbuQT9ewkN8sD3jXkNH7wPdLPeZoeJs9g+Ind7ivuh1fjU2uFYPXK4a1Td8Kq1PHVr9oNLaUsDuj++vltYwZsqYDH1lfLJOpTAMy7wMYdHXpofSgIcw937JVHhKdktFpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti+XhTyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti+XhTyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A068AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756985993;
	bh=gjdDGnsN5bHIZzJYySGrVbopVx42qu7aIjzdReBgDkk=;
	h=To:Subject:From:Date:From;
	b=Ti+XhTycDCLY5nXeiKoyvkNqjwSF6MVGmFNijqMuja48uPHA6PAHQplI6/vuILZDE
	 R+xRaQunsRdT6BeUQqv6Ra0fgrpQCwjKsVnLfIvajlYeKumuve0ZA3PQvnyF4lnH+h
	 ssLJcTLWXO2cp6KWcF5h2I5zLdm834q+YwLq0N2DQYObZi2NSYnDY8VJpCrURLxKeW
	 Evd/q+apWt6U3EIxdJOVhIVwdStTLUe3JdmXbEV2dLrIbX/tdRp0R246tlsek/HrbG
	 Ua2IiyUbJYOH++pGo45UD/mSTa9BMbRhq2Zzbc6/9QeV5gefYlaIW+b2w2TWv2Vgf1
	 ixVjQccmm6rbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDACA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698599358.6277.16652941238866595413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892710041dbe6df6f42c5c71ff16db65aad0523828f525540a8c9c0586fa393f
Date: Thu, 04 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756985993
