Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B5E264617
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771619694; cv=none; b=VeBjdZhf9bFaNsD7gUf1zSo/pWqQXzApdhLDnlZ3LIPPLuEohAM1ySL34ny7ipAEM9vRVlH0UTYzaWsAyz8BfMdmOubzzbVeYleyKffzQ4Bo5a11YjgBmdA05kgc29oYrhp2pB0deQWZnwGi23VpJbo0nyyQJ6GOpzf0+5vbd+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771619694; c=relaxed/simple;
	bh=1VVnwIdc2sXIEeAi8rg5egxamHsv2bVP7cWexkS7yPA=;
	h=To:Subject:From:Message-Id:Date; b=mGlbMDGtmwRbQKWjSFLQ91tqHU6viVyBiWBsv6yOD6X0BLABR1nye2qO2l+fn7SGKULRt5euhiZyrW90ZqIdEP9WPQbAgZw14J0EjXrJ/a8tK546jlrgIVpkOK9PT/T1IM6qnpFtm+pEfXoznE3zDcIRSnMVJPJUfxIGNN3v3VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5euEn/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5euEn/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4D5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771619693;
	bh=1VVnwIdc2sXIEeAi8rg5egxamHsv2bVP7cWexkS7yPA=;
	h=To:Subject:From:Date:From;
	b=T5euEn/dE6VJoVKNY/6kqwdaLbOoGpag4Q0RutXTJNUmyDxJeO8mXQerto2AoMn/l
	 /H7QLUd/8PxQMAw2LTXaJ/X2iWjr7ZXwSl2QqVuMdFTp/FIFvFG86AGg5HVXKM9BOD
	 LPHrW194tjryxYfW2E3/9PLa0mHCBff/QpA8NZlz7Sjy97nHAweaPO1iGXypA/su62
	 Od1Nv6009XBEZoX/gZhPd8mrXzOPKhMQdYpyKQtYgdCUQpAeF98xKFIut84d6NBOu4
	 gbVcxGOb8ISw8bhe75ewqs9bWXo9jCAeuL1rq2Eb2aEk7z5GAXzR9UixiMiyiHRfk5
	 5rEf/gxy5CzGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B5C5AE49
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161969358.15852.14535603340747415354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3377ccd0228a317b6debd09df1db6f28927934ba5b11d90e284f722c85a2110c
Date: Fri, 20 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771619693
