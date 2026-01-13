Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2DC248891
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768347234; cv=none; b=sUVkL3AU96sF6znSrPfUkJHsjO69GenZmEZmqzOTTQ9gwHjF+WgqXb3PFhujdh3RPldZ69j2NiGrfteKZOnKZXA+IHTxWNOilTc00eR6rnM+gSuDIZAAhn+Io1W6EbFJ/4RhS0i8+J6a7OtQ2uohBUQGaokz5UN2+vHTYl3txTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768347234; c=relaxed/simple;
	bh=Gouc1ne50Rs8F5xbX4gCEDTevJuhzVSg05WSmv6WRW8=;
	h=To:Subject:From:Message-Id:Date; b=G51bRdbpsxJtHbP9MvQOtrnyRgDuii4FQbH+DKNVLOuJ3zLaozLKAIiXukIrqqZkny7dOQ/9xvNXCgc0CCw/EkDl9yMQcuyq7l1xjeoocWH+ZYvmAXcdmDqiSUOGDQvjKRp2BdJkc2yriyP3IMU/+GpSFajE6sNwcBOCobXSF8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6y/hv8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6y/hv8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F33C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768347233;
	bh=Gouc1ne50Rs8F5xbX4gCEDTevJuhzVSg05WSmv6WRW8=;
	h=To:Subject:From:Date:From;
	b=j6y/hv8WpDc0E+rP/PLV/FT0SYruNj6sR9CksAf8lCFcR30/QmfpiBw6z4+RUlSVu
	 nAAnV6YTWvyApExCAgR2FNIbFMwuF0sxHEWVpb8RRofNPt3L3D1QHqkCKwnWWFIXF2
	 Vepy+FEd27xn5AEWyrEAD7tCyO1ZxqWP0E9r9Ihq4WTyCak0LXH33TyZQ1NqODiag+
	 W4KxqrRugR1pbqjPtx+Hl+2+dMACV5drhaFcEV2RjQkG8VcmDI2psYzhD6ontHrp8K
	 rEbxKguZuJNt4T7v743Yke4Z2FfZvFiXp/YdARRqSD8nYoGwijTm1cAfI+fJHgODwc
	 sEwm00N7hw2jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E18D30CDB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834723358.32557.5039981492264592531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3010a4bfdb353dca656032e1de761963c065f415835cda34b486eeb461ff4f
Date: Tue, 13 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768347233
