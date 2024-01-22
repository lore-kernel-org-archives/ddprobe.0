Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EEC364
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705883897; cv=none; b=VgiIMH2bICe/gHs0s6eRcGgX4wgB1I7E3gzDxTHDLM2KRZ4ErGkAefM1oZHw14pczMOCStXaj5vrgevQenqYhoi/NeeR/2DqgDYzzQNVyMLSz+W3D2hEH7I+xiJTD8iNI70l0Me7wy7RbydksWMPB1+xOmuwYR9NtRZRn/Q1AGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705883897; c=relaxed/simple;
	bh=LNWX+KAwqxWOdm61Rh7iUwpTucVv8FOwS3bpfupXmTs=;
	h=To:Subject:From:Message-Id:Date; b=LBjQamr8saW7ruVvw80xIXePlpVBPlsNMZGS3P6t/4NsdX2toO/7icV5X33nCkRWcrvrRbq7HCzGmFWFmNb0lG6BQunDnivaB+v2iIxM/mOHSpf8JFXOoW8f3CIsfoTB0ev4WLhRvyxmlc8BjNbLmAdL7xsBMeCYn/m/hahU4/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdG+mSoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdG+mSoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5A6C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705883896;
	bh=LNWX+KAwqxWOdm61Rh7iUwpTucVv8FOwS3bpfupXmTs=;
	h=To:Subject:From:Date:From;
	b=LdG+mSoLmy0RSaHEzGxVzUfzlEQqKPCT9cWNCziXENxAtsRaO83DB4s5xCYAbQDsk
	 m1rdXmPNlWuHth9R/P7f41z7lGxxZy3vU5sP366FLEx1q4+yVTRJYy9eSze3loqb+a
	 pmpmo8dRo5wUaSWG/3YlvxsG4FtYTVNWi0x9Y74ZIsoHAh23qFw4/zBhXCfOq3ViTw
	 PadZNzqZndiMQIX+Gr0WXnBGZ8QRjWngRVqkqf+4XObZHepLnQYlfFhjFVu/ERUPJ3
	 w32z1Kk/Vdo5cXaCBZiDgjCVhJ9M3hG2k9FA1un39wkMUWj3rQmotzKiA/l2XT+o4t
	 hpLegXFQZpdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A465C47DD3
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170588389636.14479.11407983320014159463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af862267c84aecbe3f531189c3cb153aa6d600396d7f64182234b160a533109f
Date: Mon, 22 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705883896
