Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC2E5A79B
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726413954; cv=none; b=SS5fLu/nejTOHb6rhfFHiO4nxkGWVQx8+elO4S50aqJt4i2rPPgSH25yQz61ZeCDK2Cu8mHwRBXLhBS8T+PiNKElzVpL8g93UR5pRFFDiJInocGV1EuDtyrl5dH2dqy4xVumXP/XATFnpvqrZRGNRNQerINyc6Q+GF5YzJ/FuGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726413954; c=relaxed/simple;
	bh=PW6LMELsr5jVYokl0PmLnVKyzHG6mvTzGEt2DRRmEdY=;
	h=To:Subject:From:Message-Id:Date; b=NEUGeVkFW02u//WVx6+I8ucBHD7n6fFAixOthWmWfUZ+um4hPZ97V+su3PZgWSSD4O1ulw/GwtuloD0EcEuIWXyVKR7XRZWtwbW7Vj48N0B4sxcpDRHFCBXxY8OMmnU3wFKAZvassm+D/lztzA/rwARN4mkyZqyyXMUy7lrlV9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQgd71vC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQgd71vC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B985FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726413953;
	bh=PW6LMELsr5jVYokl0PmLnVKyzHG6mvTzGEt2DRRmEdY=;
	h=To:Subject:From:Date:From;
	b=YQgd71vCz+elQSqrdNzvJ+cl42WcZzY7v7Cv664Jiz2SyczbicUQ1w4mO7nUTtRHk
	 MDedRS3Grg4n7Ecu+N4Dpxr/g2G9j0/h/MH+cpvykbG9i3N52wePTkoyolz/+VwXY9
	 pWSzVhSSidEEQzRR/Yy0bRosAY0jDsU5gWQ+rlqkpZtn7csWdubhvmMzDlhXk1SM6+
	 qs8WzufuTEPUgrqnF/he5CsQGsS/am7QeUkVGDZw1FHsRRI8BDWKOvm5JRHpmkLCKy
	 FlU4GggPzq6eGuJndXr6uuShqcDxMytQlaMIAcdzX6xLmd1cLWA1DyZyHA/s+bPTeM
	 YBtkq3t65MVnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CB5C3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641395361.9457.3453278262680654058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252c08084b9f5da7015e1f956317c6584e3157068913af9b382f70c852b3a496
Date: Sun, 15 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726413953
