Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6488613D29D
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715005343; cv=none; b=nj++VuQdtyzz9rz0NT4x7n32kl8tQUL9UBXaPP3McKWlcKfCTVXj0IPcbpJOrEFztVyWuIE5Ct7zZi528F5oU2tDkdrgiSQaQmkkoksEiSwWTFzWcoYVEFibBaCkWpnJjWJdi1QWsGdZNPAEuPAzQGsoq7s/+Mg0C0ExFO3PDSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715005343; c=relaxed/simple;
	bh=Tf8KyheyXn74YzklFfw2iBNVxTz2WxSBIV+YawxPmu4=;
	h=To:Subject:From:Message-Id:Date; b=avSxlf9JTsiUkWbxB2yE0lB7Ya4BadllXU0Dl6HRFJ7gcPUQwXdg/NUpZHqIZcRIYNZLWLuUMl6uiW4Uf61g7Qg8vA9GFiSdCGMQv3X4dmq/o/k60fyYTPk8E+tN7mMbc/RHTDovnD5iF4ctyjO1/+oqTOBmouNFOo6nU88SySs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF3d4W+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF3d4W+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BB9C4AF65
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715005342;
	bh=Tf8KyheyXn74YzklFfw2iBNVxTz2WxSBIV+YawxPmu4=;
	h=To:Subject:From:Date:From;
	b=TF3d4W+lWJbue15NsUTfRCq5iKHYo+pgwmzF/sU4JT/VqNCES7e9k3e28k9aofCuo
	 KfzaJDkpc8yvRIkIVbkOn7vUIwz4eeb42jAhifQGD+OeywX2H/5WGOCFp9VKHcgMjZ
	 mIBKBKH0O1J+4J8HhmwBiBCvHNFuQc+pu2cmZXeuRCXMrukX/QyS/A5Eg05WGJvCJI
	 +q9LIf1inOK+dfHF14sdCvfevCzlR8UNlzUsLT+mwORWZOx8fz/1O2r99RYSfZlsyY
	 rvSB2B8J4vABunrwY9lg+ckcZAPJN2RWhcMz+RVoWhlEpNprG9/TBldhv0PvdxKPaK
	 t+FazAkCssb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55B9C25B5F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171500534286.29399.5019520318251195196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7818b983859885c4d48a55aaba91ac6a66da194b2a6b9ef74b23a3f8f9e744
Date: Mon, 06 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715005342
