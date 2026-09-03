Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720974BAA13
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788447034; cv=none; b=NPn+aCXajkQeYskjwD/Cdc2Iz/f9/aXB8wQXrd/k4TKR8XpvryBrE+jBxVZ7UW/dUze/SPSxUCh6xy/F83mjwsK7mE8a75LCrB2NJseLymD99BVgW6Y2qJtptEHdpIiq9fZl2o4OWvN+/4M4g04Uye6OylJiajayi9OxwB83aIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788447034; c=relaxed/simple;
	bh=m4IQ3YdDKKhfafHURv3OdZ7zU6kiHn4CNcvbfNqNeuI=;
	h=To:Subject:From:Message-Id:Date; b=bn3Frziw32SKK/g0C6XOS5XmEq2RLUz8Lfa5fMcUHkiIu7A7/Lp15MaxXyGom1yEkxJ2vTkC6I649x1euUcjiWxZDR4vhQQBCMXMVjBgoHNuOCtamgdRZYQ3DJoPK5UAjql/jnb2OiC2wXj4AHlBUL3ewfSaxyWHfEm/5bAkqrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoVJ3anq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoVJ3anq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C9C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788447033;
	bh=m4IQ3YdDKKhfafHURv3OdZ7zU6kiHn4CNcvbfNqNeuI=;
	h=To:Subject:From:Date:From;
	b=ZoVJ3anqaWTm+h4xiZGl59IOM/Gjt+6wN4lGUJgJXZlMRa2+uNBsemDeyki6wiH8U
	 SG2pL7HDqpM+Sy9GGreyTE9bQIOcmbUt2M3k6s17Ur+qm2ls8ObRdI9qIE+XGmiROs
	 b38EayoBdUC8qbHJM3bd5c4ASmWZ1eIc88wBvcvYtz4h9/WGM2/2LObqZ8pHXTVR2W
	 rHHR7TRMXxHHJmqwiLsLVFsOfWY4cqeEY0YRBE0za9aFNeF3r2sgma4iRWBj28JTPp
	 zotXynz+0OeMKlaYCnIJ12khfQwQQ2wUx2i7oIrXD3/WKx/Viw640NhqjMz4Ev9rlh
	 Z+mbWGkEB86Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5CBC624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844703369.14297.1667835456373871542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3624dc5fbd79b53769bd53a164a295f06f50bfea44cbf2887a61296d948a86
Date: Thu, 03 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788447033
