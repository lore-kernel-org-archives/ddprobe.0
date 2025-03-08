Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B923C2FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741425534; cv=none; b=kshpTFm+RZ1rrS26dxdXsJ+HeUpdQ3Ym8Xc/MPcGCAUK19aVw4g908TC8ddeY1L7RWJOcq/KtzBvd/oDmDy4/DtGw4362lpfISa3bYzSUIbK4brz8HC9grsn7FSdAIyrdsJg+sZe2YicNyU68RtDmh2sGInH03XxcMk0EPBaEyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741425534; c=relaxed/simple;
	bh=ICLKaou6o63veUe0Dvcan7OqTzfe0I/nAu21dJYbl8Q=;
	h=To:Subject:From:Message-Id:Date; b=G0gz6m8sda7azYr3ipJQTf0JJTSfFzj8TXxV8uoloGKn4bnZeF8nLJqfiszL3ZgaqmrrWgzSar8VtCSc7Ubpqi3iHgzKxKUcBoimQX1h08dz4uKwsMJmcpFCcZaeKluGR9wsLxO6m2u0GV+PBjG1mHp3mJKVZe+z1vCOtSv/doI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK6XbejE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK6XbejE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DEFC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741425533;
	bh=ICLKaou6o63veUe0Dvcan7OqTzfe0I/nAu21dJYbl8Q=;
	h=To:Subject:From:Date:From;
	b=KK6XbejEUr+2gDYru9O5Vg6jqmUqQPOIKp8nPlSlwEUqX5j/tYALZ43Zng+Iel+ru
	 M7GqBrUz+49vbVDt38cY1kZwNOjvxVGN7tdvt5gZ8PMIe5dnmhEXjZRx+F3++yR4on
	 Pb+w4/+afVZPaePKoo3u59Iq6+iJ79aQqEU801Mac3abkEF24o92fkID/kvv8ULpIH
	 bv7fzuAy03JpwgwYVF95C/J1vNYfNHd3FYjz9yuwdEiPntGPk/ZCSn+TACRIJi80Ds
	 Rn0Cre9OCnVunaeVbVqDsXsEsc9myfgU0HGy8w52SkDE4v8XHnoHt06j6DdV+XShqz
	 MAbAtlff66TTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD3C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142553358.8509.13340232511962704656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c568f0726df5f32f9992eed33dc373f40ae2a2ba42d2d8b8208fc9fb503b7d31
Date: Sat, 08 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741425533
