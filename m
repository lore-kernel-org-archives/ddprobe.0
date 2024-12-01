Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35608635
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733013354; cv=none; b=m3hBLQ13IpTQcV8Iu/vDOwyKcPH90lK6CRUlaA9nllIt6uv03NMX2kt23sZbZ7jaFVJzThkGE0dwpdtnU/XHqyQJOyFJf8OOOdaQ/XhXmrr51/gVDR17qbwKruLleX44vE0TmBRvTmdjRc9dBVYJEXDnuSCLE9yt1hRhVS5X4z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733013354; c=relaxed/simple;
	bh=ZtRt69hq5bFDwdZRm7F7XQe//uMoA1hiiB+KEHYXGU0=;
	h=To:Subject:From:Message-Id:Date; b=LexEMoc4WQh9w64EbuCPxLVaVXcfAvzgtGG550rgDHNhirCDYK95DKlrqK/4Q+ojHj8Tlzp2B08erSVtigHYj0AQEvIufFky+M7nGkR8BiW8NoeIdK+qFFiPMhLNN2owzSea0sgt/0xSRQWauw/xaXi6qftkt9TiJh75O0Kho1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAuzV0pD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAuzV0pD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4427C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733013353;
	bh=ZtRt69hq5bFDwdZRm7F7XQe//uMoA1hiiB+KEHYXGU0=;
	h=To:Subject:From:Date:From;
	b=LAuzV0pDiBF9aLQ3xzWGjS+9nngn/V7TanAGiPKLp0FbwupbxMDgqlvjSP9pnHmT9
	 5DiexbSam/qRGgSBG7XIU4aermveJh8DH1fDDK7fUfoazeZhF/MNnflVH6WJMDXi6l
	 yHLEgoEIl435CX+Kyas/////2UInYQCZNi7GqFBYWEGBqtbSZbYTzb4wEZPukWON3G
	 YZfowgdEwKS7i90pGOXvoxQTyNBdIdFNwlkfykp1di7OwTKxgE1UF9rbCe6Vx/jrrW
	 dkZDEQrFkL2mAcCsMq1kQU3l6VRWwA+BeRF1wcl0LnIH9+4R+70BhZQGfYydbryed8
	 tULLbvkC+1kgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD85D73619
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301335361.30487.15465647418833693151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262eda968339835d0ac35cf9dd13646b4e22ac14337e291a29cc30367bef78a8
Date: Sun, 01 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733013353
