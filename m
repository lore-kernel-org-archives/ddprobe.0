Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4FD33EA
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734583554; cv=none; b=pFHIsjgebvWwb/S+RGbi8cQ7rhXqdOHXl8FOrsUynbNopNzgU6PX+Tml4MFEM3lPdRXCjyMPZHQtkYGwrJUDUSgNop5TlJaeSawP16p18jvDkWBWreQLBMQDfH/a6ZbBl98cCMYGEaEDPGzhSib6blj6WUOdYQzvXnld+4rBpkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734583554; c=relaxed/simple;
	bh=2UDbNmTq1UYPY1DQLSgpa1s0/GeAV/dPbvM9DWzaXbw=;
	h=To:Subject:From:Message-Id:Date; b=tUjUO8/mOR3+wB7RGq6NSHpqLVi/5nOn1N1RS81GDGBJNSddG5BWD9qwksJn+a38JXQ7362k4z23bXJQyJ4O98uqNimuFgLkfO2mNPII8mTPiKtuXy2NyFjcsY5jf7qEBtp5ZSAhryUI+dDje1Oeo+LzXu8oUjbp3Nil8QLohUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfVlwbh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfVlwbh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B367FC4CED4
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734583553;
	bh=2UDbNmTq1UYPY1DQLSgpa1s0/GeAV/dPbvM9DWzaXbw=;
	h=To:Subject:From:Date:From;
	b=JfVlwbh4D2Mm56WQUWDl/7kdVql4ir5W5y5JhYyZQcz9H6eXmmaY3rrHHK9qtcS8q
	 waAooBbkyKHa6ro2klX/UIimOBMHeIwwFppB4aKk8auDo+jy65nhBfD/+OiRWOMS+0
	 9yb4WwLTf90v48wBaMJL+KIOTSQicKBRCTMIi/1aCu1v655D2NQMm7nElJaO6xmCe9
	 PE8pY8Yz+wS3apoi+y7q1eR9BLC5WK5ZIIFQwm33gwFuAj89j7XBiaVJb6xM7465Wf
	 GNI9mQ7FMVUtpIc+hRZZoSi+aarmd0g36cuTzDl5IdAmQ+L4UA+L5gzILImAgWrcUu
	 6lcHfGIwGKqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A91E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173458355359.10282.8035018136526117767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daeaf77751c35dea2721b870468139090c9b5eebffaadbeb47cea381bf6e68aa
Date: Thu, 19 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734583553
