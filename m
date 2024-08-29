Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B36114884C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724951754; cv=none; b=T4nQsv0RSrCnhmVnpWe251RTZk5KhayK3dMAx1GC31uzHWhTB5ITJK1RVGQ27YyNingp9x9+V7VoVxoywlg+T3DfK8d8E+ItAjXn0QDQV//iDkVD+sOoSVyejDG4frLpb1O+RZVRgVytQ4I3XRNGD3eSmNeRdyWseY+yiw0VBmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724951754; c=relaxed/simple;
	bh=tQYm0yaP1yYX91QJZ4FNb+H9V7lwZ29PW++xLG533+U=;
	h=To:Subject:From:Message-Id:Date; b=OvZm5RIzsrMzEi8SoPyMOKnH4UP3GO6iJyqeGOgfugMmH7GDRQkOCMM/oPX636+HT/1MPq/OXAAmnUtSoPppOK4MIubDpJE0eZH8yfMnfcZDQXpxxHF/FdJRrMRReUzr9VVEjgJuFhRiXu5WVPs8a2HLO4W1S9+/se1XZCbiBaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqnOzSJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqnOzSJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A959EC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724951753;
	bh=tQYm0yaP1yYX91QJZ4FNb+H9V7lwZ29PW++xLG533+U=;
	h=To:Subject:From:Date:From;
	b=bqnOzSJ8AToj3dGGi2/76KecVasydpo10hzC4Th4Ye3IoAzKWg6O9mogrHMUuVa73
	 ffBi8V6YuUV7awZU014dro/7tMLibQeLsQDctZPJTpCLvO0E6JAPTbAgIi0KESpTdK
	 QBDMcanQkB3Od9fCTtWoHs/Vnk2gIijbmwOArcnM+jMpeuo/0+MqR42P/koIUwgnTb
	 Sd/wKMbQ3jQ6pxK0a4prWbO7lDzr4mrnJqfuMHC87n5Z/+2pp1Xxm7W3uEKpmb9+YM
	 m09IUhwPzA/IFb3h/a+a9dxU9r1hNJzG9yhngxaWJb9y3b3Lyn3No7efIWyF63jMh5
	 SMM1LctbYn3Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0A5C8303E
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172495175359.29879.5807444339099055983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63720583a024eb3fb49873c64b9c08855467360f4989577b7c465fdd2230ccd
Date: Thu, 29 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724951753
