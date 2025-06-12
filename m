Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324871798F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749706794; cv=none; b=FvUPz/9apMKhFc3r6fm0riYB/oIYwELa9WDhMmBTrOrZZLG5/G3LNDLvzkEl5KkUCty1g+VnM8tN2XCtdU2IdHVVZmzcUgeu+4FpQ/2Qo5UktdpNff2eZrsxxXu9jomDA4sM4EK7Ojn0D1qbE2UD4IRcxyCi0V2dym6gS1lRcQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749706794; c=relaxed/simple;
	bh=xWPogmYcKyu4EYH1FckIfhUUuG/qDfkSG26rn5Raj24=;
	h=To:Subject:From:Message-Id:Date; b=aRr5VMp4MAlcaXOZOTVtxf6UG3OaCv+6grxQNrF193+XPxqpNB4SCzUU+L0BO5/cEoBQTdD4gs/hjPhkSfUOGJ6/1Jo2HUAAD7/0f27dAFMoH/XWzChXWtTC68/HeJIZ+Sg/ROXfSa+3nD6bGe6PLlmUaaGxXuQQWhXJzWvek7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIAR9ylD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIAR9ylD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A878BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749706793;
	bh=xWPogmYcKyu4EYH1FckIfhUUuG/qDfkSG26rn5Raj24=;
	h=To:Subject:From:Date:From;
	b=cIAR9ylDYe/pLNyAtb8jJEID2W79BmzNE6RBps3kh6BvNX0n0GsoS3aj3ZK4KbvWn
	 TakdM7bwavn1zlcmLOtFTdFQzeeylGR4QRfu+a4B2IyTigEPaO4fFiZJx8l0vqtQcD
	 1xbw/G/zW1Dhuv1Oqk87YPf0MkIRoc/9DwAc98m71BZpWykVmoZn/xDf9iXpD5CcYJ
	 sHjlDMWEklvgLQH+MVZpmN4KaaX1pmBUzkrFTUeAPGupySYQoYY0buXKVv3WYGUq8P
	 D8BtWzGnk53ULlHtzhESuUhWvJyiIkM6jr8QQkNH9xXZVTaUGM6UBimyxPG5wZFnjs
	 S6y5eOSg5Wu+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B8DC7113E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970679357.13722.18269594094718310665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c01d01a00da272138c3f7ca651df2329c6d31410a5aadcbed7a62f6d1d4abb
Date: Thu, 12 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749706793
