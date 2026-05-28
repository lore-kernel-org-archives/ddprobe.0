Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE952765F5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779991954; cv=none; b=HyTQ7lClJO89Q5K78YoLd8a2WO3kN5kAs1tt9KTdn9qm5x3HetERnjNDmCiht85LAC5dONpB765pi94riXDyPUt4xyPIx6e14kf4RTn/SMl6f0kv8zm9xufAlXjQeB1J5Qp9590Y2QLZ5kNAO+59qEwHrG7JCK1I2M/nX60uews=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779991954; c=relaxed/simple;
	bh=9wjJZz+ZV+uwkqTK+wFZOFZu82JU4A482xlr7KjoZsA=;
	h=To:Subject:From:Message-Id:Date; b=fpleI3Gi4ZZ1zhLgxLsZ9xOTObWKV2Uwp65dlu3N7vEF3m/nY5zxKUYnPLkazqUStj2X/u8XwlG/FgLrB5p6odpoHry7VEXZbsXu2DMAm+dTbEgvIuHjL6q00eDhDdz6WWz5oZPmbekhY47G2HkRPAxrdnWxx6EWiQKcD+AhnN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcWInt/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcWInt/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37F7C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779991953;
	bh=9wjJZz+ZV+uwkqTK+wFZOFZu82JU4A482xlr7KjoZsA=;
	h=To:Subject:From:Date:From;
	b=jcWInt/Vnlo0aaK81YtcyrK1boxNxlZ2Xm4pXgvCXiscaJHc5l38+1tK1PjxgjUzt
	 L3nSGaHcPt+yCeEbNAyb4A/PZ85T2AyfxsdIdb573mf8WSXQrCFS54GJ/YDRq8eMmp
	 5nWk33fypRVHWiLs2K1XgDhcSMDkW5rhfy7CiyS/Sr+KMbziNfxSOuPSPsdER4VuqE
	 lJ1mRx9VcztW030qutyTpsIfYxnepuEmIp2X/QXDqSy2Lb6mEtQv23O7nGMZMDxI5H
	 ongYvGxNE32cYVjVu3hhOwulBUAPPLwzceAxIgOQrIl+PByyozc82Frtu2DlaKbnsY
	 bL4G6nKJUVtPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AD0CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999195368.22022.16021675289170539575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e151f54b475e6f2a310929e15842a4378bf3107dfa3c0e5285badd957826257
Date: Thu, 28 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779991953
