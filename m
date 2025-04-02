Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7529A6EB7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743620994; cv=none; b=YTJvYjBfMF8VpuyeyBbdMY8m9TwVEXIBNxJExPnrbmsrPNWcMR7neqmO1561lsvhnSdhXe/0CM7O+mNdMvZ3OW+onTmB75oCY3tlvuX3XuMzSxX/QHIXQmXKGYMtOrMIE5nrxxJ3V/oDvw+hgN7JzVr2aRZWVxRJMPncyDcFL7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743620994; c=relaxed/simple;
	bh=46co8+H0u+Q2/7w/N9hZ8S0bYUDvrebvAGkDqT/vt5g=;
	h=To:Subject:From:Message-Id:Date; b=sUksM5D0qSEP9ZLj9NkBojHANYFK6bQa2IkaQd9/libEWm5sqU7iOsTygbDcWpAL2/91h3RUrv0rXd66BwRVdu6plyMVlR52Qghcpoipk4VZVqWLZUtErQKYCAIc4GzqFyNXoziyn56SjBLyhksvmG0ZXIndcz06CaVSjn4BYno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqJ8LZE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqJ8LZE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD015C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743620993;
	bh=46co8+H0u+Q2/7w/N9hZ8S0bYUDvrebvAGkDqT/vt5g=;
	h=To:Subject:From:Date:From;
	b=QqJ8LZE4fUjufBRFChCjZ4of76reQGgkt6SBkthVIJ8fB5cf+xrAnyv3KXFWTesPp
	 FveA+vRf1Yyh2+AlCOYoWMYqyMgDevFKoCC5u7oCCCr3sBJZTGQbaScKd8dieuBNI/
	 GtK4PDAHBIbTrlkU4SLVlVsJTBCLhzGXMieFFIt7qfvLDOmvDWUIW7dQB9c6X9qK0d
	 qWjuv3gV1QZzhPoRM+sjqEyAVnSxYICUzAG72JUc1rW4/eipJUhrTUonreqFCqwzQM
	 SZUGS6trNuSth3CfHqNmsKpvm3R8V5Za/s7FTp+OH7yPUOxHpZAICnAvCAMXjQ2mRh
	 rSKnu4GcchcVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A6BC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362099364.22283.13782885449620427114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b0fe687b69a182609ca7461ac444f658e80a0913524b40ba78bdd252156d5c
Date: Wed, 02 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743620993
