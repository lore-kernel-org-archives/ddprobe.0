Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472E026A0E3
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739556534; cv=none; b=jsBE/4aY3vehoWj3mKHWUlSsVFaNDI1fCBSS23w6EIk9/X15X/HE6vQNLiXqtc770blNWwHEsWtljxXe5/X/2rnhMY2ljTfIrrK/GxDIKmjc5aMaqdGp/Ykp1mDdTJ+aGfDG5aPwCyS6hOSmXESk2NAg5g+thrM00mhSlcNJLso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739556534; c=relaxed/simple;
	bh=PUzTnOYq50MIuSLDUDljK+xmPLp3qRBJDCIpOKtfNCU=;
	h=To:Subject:From:Message-Id:Date; b=beTWa+1Jz1gV0/QNAo10pb6+Ptkrq+y7rer+JI5S/GdmPdwRiheOO4gKC0JczZhrFrt6dT98YXPmEZ2tPZON74GNTBAtDCrlYEjUETjC/Fhe+TPbEgoRpGb3qgHiZQ9mnLep5Hy+QLfqBHtJ0DNh4Q9Q3D7lZAFiVl9ZH/VK3s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZxud0+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZxud0+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F099C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739556533;
	bh=PUzTnOYq50MIuSLDUDljK+xmPLp3qRBJDCIpOKtfNCU=;
	h=To:Subject:From:Date:From;
	b=dZxud0+tCTLmbVU0jETtEvdJd0cCPtbvgUkTba3kePc/Q4rrJQmuyj4Uo3E8kPoK8
	 IYSt6N9HTzTyNz/OhSyJFmbbolFfOAbaTyOUoMODdfj2rY/TFtqjhbn3Gq/loHb49P
	 CKrsagso9O1rTIvLVJu1SLGSzRu7JELLq+MqcE8WEIS9Tb6O8qHSw8XVMpvYplt2Ga
	 zlvyXQzGB7NQtRpL4BGTHpOugSulqfXfKDc71Kx9jFjPYN/SUbRZbvMI6OfbEEsZUw
	 ndVxcOhrb1YWaF+Wo89YxhFuBVP6R4CEnN9RTN1su8MdWmvdxYBy2iP0XTfxq9hLUV
	 4jaeWoxaGpE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA3C021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 18:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173955653358.26841.8226834238165719464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f801be84b663f70938b455e434ecfc30efad88bba489d9fc659e6e39344afa
Date: Fri, 14 Feb 2025 18:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739556533
