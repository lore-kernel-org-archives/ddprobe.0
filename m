Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4E015572C
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732239954; cv=none; b=Kk83I6+qSXmeaG0u0rdGEIHMpWEr04JhO4kPen1NsvUeL4POseuNockplLJu3KJ3Czr/ceA1C6nuYD9naOfVWCEoUR+/INKL6XO7QrxJjk+/EI+98DARFx6yPeyaWLewJ250DP9IhHbrdbp+iiTjMmArJ32Tey6OE0sSZo3s9FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732239954; c=relaxed/simple;
	bh=4fM2yA2UtOBkJ6+VbwoLduiN+lf/xXaX/WAxmSgCm/g=;
	h=To:Subject:From:Message-Id:Date; b=oMicG96n4D5TDKTgrOpb4JstfvCHXcF6m1lNt+wNDibnkYLNqsjIz4YCdM6pratJ2Y3OGKiGbG8HH1SaUl6rrO11DrPfueJF8Td3BOBMPNi6H+oz7Lt73Mxcs/tslvZf9VeJsUKgYi3cM7UxAHYQZ/kgv/qZh+1P+tMOOOMy7vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1t+KxWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1t+KxWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DC2C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732239953;
	bh=4fM2yA2UtOBkJ6+VbwoLduiN+lf/xXaX/WAxmSgCm/g=;
	h=To:Subject:From:Date:From;
	b=i1t+KxWaciqjm92KB10y2nK6tvoBhH9k0h9VAOjt65KwPGNrykQPYI/Y2C47vCyTC
	 lezU8vagPkM5P+tV/qVF4z47ufA3vxDio7TVS/wVOd9/Rf2H66WAJoSphbdx3+glAn
	 zoTAL0RHSrWWQ2680RSo51O9PqULetgnYc0NYvWIsmhrdOOR8VoD7CCcoCRa4j737q
	 P1mZQtAtp/Re1pG5wzBWhRDj/TmUQViMIAl1n8KUT1YAViCmvFNbaieRhJ6fPoDpg8
	 7QzGmrIghQ5b3o+/QsC1887a/EYLS4t1I1Ujj5nYgfEzvRviXUkrPsIsla4t8sBawb
	 XLKRKGF1IQGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3B5E65D14
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223995362.28565.1267541704816213250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3858d5abb0d151c8b2200ac25c245f6a4170cd8c01e1e4fb5bdf302878c67900
Date: Fri, 22 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732239953
