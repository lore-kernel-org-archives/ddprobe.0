Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548B140B396
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781187994; cv=none; b=SOjBizR+d5RMG7YFrIYmXLR4bt72thcBnsuYV4CqWzLKgVnimC/9/8UwcII5swAKdNzLg530PqaicYYdiZvheoHBjYxHxkH51gLBtLRomPdpowimXFF8J3BGoB7RasCwBeAo6nARcbrcaQx/WhZn3CL58aQPgSxnm4jJC8ifLmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781187994; c=relaxed/simple;
	bh=9PCYtp195RBRdFBVa2FH/k058D5jlSIRVQIvrJ63Bdc=;
	h=To:Subject:From:Message-Id:Date; b=r/m6//VdO1hhXcFeRAdSa2T4svMrjIWMOVbtMHvQzWCOUEHRqD+Pt1DxRydQ1cD31D0YRuyQ1ArErAkqoxJd0YCWgNOqzE+ZE7paObN8UukY+omZsKRvQ7slpmGX/ZLtaeBHdu2ljS7Ljk0A9hj1WvIMuhSADh5qYPzKRdaJ/gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N66HQ42/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N66HQ42/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6DCC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781187993;
	bh=9PCYtp195RBRdFBVa2FH/k058D5jlSIRVQIvrJ63Bdc=;
	h=To:Subject:From:Date:From;
	b=N66HQ42/6/9gswVaKGMji2te31oad693GQwcdNaUpfXglp5NV/wRRyWSRq77LvdQ5
	 O+MEfEd8OM4w0zoG2gP7EecIJcT2LDKPx0qDEYzRCqMihJAGVOTsAjFc4/PtWDOoS2
	 uj5chKDkCiz7byWSbi7GsPVoobrSyKQGKHvn+mdGnUhOH5Ix40hJuRKWaygobr4Glj
	 capwTZJ87spVyNV94OyKiAlqOdcCSzNnW7Nq1O48u7So89gqEe/EvHcqA1Wgj9E0dz
	 C9Mep9kx1PVEAWMJYwYuNYq2GjaoH4VRHHlygT7d30LHJF/2Ro4nwCcFbee/pYULfB
	 0BHlAlPoxrPiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF24CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118799374.13612.2057355790745612414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe95c31ce17ef06f165b175d97588a3c8a9124c4434e637882a0017af7127d7c
Date: Thu, 11 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781187993
