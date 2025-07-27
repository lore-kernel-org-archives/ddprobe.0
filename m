Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBCB1339A4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753623594; cv=none; b=J4AxFriX0/DXey4nfax+7IlxIOy35GOEQRSeuYDCVZkphSLvKfRTuMDa+rQUyaYICTKuoDZZyVCPsEDWxaxRiBZN63R8gICyXwXczBWO3KPSQcJPzwUqpcjHZLni5bmCfZxTafqdDiL5GZ1jwko9MDoUTDpZLPJjXYyW3PHGWwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753623594; c=relaxed/simple;
	bh=xpqgAdBR//kjJDGlSvHSiX9Z4xzNev1vU+arnkWE9A4=;
	h=To:Subject:From:Message-Id:Date; b=fRYnfeogUXJo0IAMQZs8EJ9KsTOZ2zs042e+cwYflryaMvq3ekLouRKnLbx2qCjtAwx5jBvj4IOQZV8V+exM16eBDX9dCUiwTuzZTpk5B7nQpalZjeee/TWtiooBMqLEz6wgeL6nu45+vgVxcOYRKZtorkmfkAJj0/ihZ8x8vRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfIUS5I8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfIUS5I8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FCAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753623593;
	bh=xpqgAdBR//kjJDGlSvHSiX9Z4xzNev1vU+arnkWE9A4=;
	h=To:Subject:From:Date:From;
	b=tfIUS5I80pjU5l1GdcwG/Ac2phMdDw+WIrtiU8FItn+Z34hsys+KrIWu0Ax/04o3S
	 7c5bkP0hqdzGsIvWHnWRuCVxDrom0vSEYe0uwISXRiE1vNJk5q/6De51H9mJfuOPUG
	 qhv9fcnlglOeJ1SyjEaBt5Utij/7ZdY2j7EATDklzZzHYAbCX7vJ+KhNES5JsLFW1g
	 Q6oEQFNI0qFRONk6cMWsMzBN35ZdlveClD+i7TQTnsNArBb37qcxkhoN21qjMXNgTS
	 eIfA7u/oFfAasqtXtnulhLM532iT6V4Pdbo9V3uudHdxd9UVr+aW3yU89237JbaoAf
	 OVphwDUKOC0UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91999C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362359357.15402.11750121955309646601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e951ea05751ea39a180dc2d17e6dd63f74f99746fcde9084ef2cbd8b96eec261
Date: Sun, 27 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753623593
