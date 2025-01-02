Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0441AF0C9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735839954; cv=none; b=kLzIwiMUvfzpitpenLyzHF5I3TZ+KkL3qtY26kG+lf82/CY1q79uKMX6Wwo+5t1TCF39qdeFhBtSBmKeATSArKnYa9g4CIiLjpAWTf94jR6A+tBKfdbr509MgvHwYjGXm8ImcI2hVxZBiJcSkcrenOrCiHov2lro4rK9MG0x1CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735839954; c=relaxed/simple;
	bh=TN/rpCFVJpJA5PdMxoMAysvOn/+X9AuXbVUbO/3Lky4=;
	h=To:Subject:From:Message-Id:Date; b=nvj+Ecxli+rfKf2CfInwwZQbhcj/lC2q+lXukvhykHAT7lelig2eNCTCZ6VBaWDg8yzaiOpWmk4uvaN1p4XR7hniTNGds4cfxixqqVlYybwEAr0yhFzMGFBM5pxrgaIEY7VuG6JHBcMwT4rvhXZeT2ySV8c2qvt23YJRfN1zJvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPjJZpwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPjJZpwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E2C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735839953;
	bh=TN/rpCFVJpJA5PdMxoMAysvOn/+X9AuXbVUbO/3Lky4=;
	h=To:Subject:From:Date:From;
	b=jPjJZpwM4K6ox5FuYoA2Zl16CTFfcDO04Dd5Tr0WzQPJXhnEzwZLebUPBC0FbB5Tu
	 tQpHJWL6labgnhobV4kWDeBb9IUdwE3JLKvPu32JB0EHoYSkC8qGhON2vTBEDxpdo8
	 d0EKWMiP3M6qOnxo8HaP3d1XuM9CYkpB7rGtXROPwci0Qy5/BR43/LICva6N7rgl8u
	 ftTPUbLmuQ2ji9lHyKS/6ySTIOxtB1GG4gGrHH7Th8imzzpmVXkArojVJZk5akP9vV
	 qIs5p8cX3b0YxHmoFV3gRTics7XK40cWBdclQelZJ3beJyalq0GrfHQPdNlOaszLH4
	 LBGjBxwP8terA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03DE7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583995357.12992.10786568355062915842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a696670219662980686f846005bd86d4b5a51564890c2924108069100b27b1
Date: Thu, 02 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735839953
