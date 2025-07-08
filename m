Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2651B2E040C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751989794; cv=none; b=YLtBaao5OTtSBzoO35DtPGaTDbOBe6jkjFwIaTyOuY9Mbj2PPZFeCKAHJmXO2bKhpxlyjbvnohAvEvHsKXaz7jv1IfAAO7C2jwWD/KhO2ct6JbSA9ni4rt1Z18D9jZMEZkto6wQMWQcY4DqkNxCmsPlSCbaQUcC/UA47093xNsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751989794; c=relaxed/simple;
	bh=1cTpflMTUS64+DRAKno7IIfuwk/+dbeOtQw4PAtimRc=;
	h=To:Subject:From:Message-Id:Date; b=V+IpGA2Gz8nJ7MyU5bvf4nBp6usUHTOTuWj8gcKKm9CGWFuc+XvUD/fkBgf3HqnAAptSB4J0YUPwc9w2eZWYCwfKvjNyYG5uKHfTRI6Vt9TNWKU6zIYbppjW+bhNj7FOFguxNOICptVZDiAEftQO2+QrGSHc49l0Q+RMr3R/GNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZPIM6pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZPIM6pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC84C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751989793;
	bh=1cTpflMTUS64+DRAKno7IIfuwk/+dbeOtQw4PAtimRc=;
	h=To:Subject:From:Date:From;
	b=XZPIM6pbOII/F/HGuEkBWd6i2NBRFqPZc9EdW3NZehNVEy6rYZJU8QvPcVJ0EF1c5
	 SirQMI/fBU0eJ7E4Z+7vy0uCBLE0l9mnwx01U+nawatI4zyb3A8dmolpx7UoiCgxJa
	 r1CD5eNUe4mfmujzLfXpOtaOIWkOyLWFS0NGT7xzVCuTQmAdARlopXilAPQzbOfxaZ
	 liV5AUJWjHjo/UuCtFbZI3PUDLRyQpbRYvFnk+r1Ri+tIXPAMc0BXUhuVFkKrvrg2b
	 tGzLW3p8lTp4Fx5btEqEZsdW9+1jkLYD3HvdPrsN3+pUiOKQYzMiaCAZyyylbCJ3N+
	 8Vws229CDCQyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCEC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198979357.30210.15865354928946063171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb60f3cee5363b4189fd3fd82ca3d8633c846397ce775d6552203ed10c7ee06
Date: Tue, 08 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751989793
