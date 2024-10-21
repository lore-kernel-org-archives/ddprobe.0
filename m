Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A7D1C330C
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729530354; cv=none; b=Kn8JD1ATFYR7EqvKFzRByOcgzWqjfH1QtRSsWwUvVv6egbac8NtusszObbRonbAigN/SB+nqCieCyBMJ9Wgl0a/eXq5vnwe6B89m6O8qy4EhE+LtFnxBoaXSEkkU2//J0MdfoFim5EOMyZiwtijEa1wInsZpwVoBU8rwrB15d3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729530354; c=relaxed/simple;
	bh=h5AvN1GSFoU7sn220oTzmpQtXJI7tIp5iQ04HDE8yc4=;
	h=To:Subject:From:Message-Id:Date; b=SzGpY2EGy0J9C5pCdKRCjahtg2KulIlZa4eWPQGCCk4DV0U0h/WfL9NKt8gx8vMX29YY7R/RJOjbxnq4BYC+fFzhHHm2YXFoqr4P/yNi7eQY8i5sf9g+49qEoUYxnqaPQrkPt3NyCLSQN5hufjKUSCM1Ouw9H7njlsG/vbsAeLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sG6zoBnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sG6zoBnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7647C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729530353;
	bh=h5AvN1GSFoU7sn220oTzmpQtXJI7tIp5iQ04HDE8yc4=;
	h=To:Subject:From:Date:From;
	b=sG6zoBnj739sqv+CsmIutwADC48gRKBQ99UoOeRP4hX8kzJk5L1F8yo5Rb5WHW+5d
	 Rj/SiIojDeAZSU85wHKa2LQzVPi1PfA3C6IwQ9M0qqaOWGO45+C4UNjbc6iQqurc7e
	 JvzP1dG/ZlHo+VtiQz/S2x72bbdXQr6xTjhSNuR50Ki7tiUlPYOaVOHE4cnWJSTTvZ
	 y1fHKod1ni+dUvQPdJr7YYjdDeaTpwqYw0DgmDlw2dDYkdSKsUxQDevRRwm4xQ0BoO
	 axZbnrxuM9hdWB/Q/py+yy/tsIZgcb7SuTI7zMIBX4RnPdCgi4eMN+JLjFoJIjxPlN
	 qdGwf9A4Gy4ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3805D0E6C4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172953035365.14424.10981453927854070057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49274e233f0aa4d72b756d77fa4e9b7f212cc964858cd92103bd282fa944e2d
Date: Mon, 21 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729530353
