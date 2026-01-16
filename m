Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F553370E2
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768575834; cv=none; b=rgOMDh5O2rqlkQdSLOfXwZIQFry+y+NHu98Bzl0aJLzRCF1ne2v//pfVdnMAFbfadB1VrnCTvhmIbOKpe0CtAfN5rmXGz2adW/Is6RQDFICSXTubEY6amVIvP4ttfgZ1ewuk4fWhfydPuf79IKat1nU/NQTSOPLg0NRVAVmHWjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768575834; c=relaxed/simple;
	bh=k8xqbvRMb8KS2yE2vlG0gG9xOHpbCt6uaW7tmTq+gmE=;
	h=To:Subject:From:Message-Id:Date; b=j7XHS6RfjuGrhL2+bLAt+r3VwDIz+GciTHf4IN14bd1JTrwJo44gwIFxMY6oArlfrfapPx2WNcdFZCDn8SQWiDGewxGxXEKq7Qg5ciFE2OvtSbya9q7JxHwAbm4ckXJ/GyH/k+UUNz2wgisXcV7by5z7gbkrlteTHJJt+wAmbd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/s1PQNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/s1PQNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F246C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768575833;
	bh=k8xqbvRMb8KS2yE2vlG0gG9xOHpbCt6uaW7tmTq+gmE=;
	h=To:Subject:From:Date:From;
	b=E/s1PQNevn82WIwo9UyXXkP0cRVgKnyUDNlNU/EC/RgLHfYP/QzI9idhPffNP0mZS
	 rHZe7SYezcjE20ZCtJlNsmjpx3pLSxEEttfKQsZlazwiJ7h3W8uVOkaT3mXTB6WuQM
	 YTH+2nOJRmGQs1yBsT/7tDdwBDNVvmcKpEI1jSpVItQjmDza78AvoAVP/BG5n+ODuB
	 G1AGquYowNFWiRGJuABp8vvojPNyggE9SX1GCuo5VZCT+fscgbdX3bQe4kdyYQ5p1Y
	 ab2qNsiTiN8w9SpPq5KV2vLW9hMCxAp2tkOjrCnq8gEW9MPx87YsXANxrW1NCmgQ87
	 eqsdAACTPsarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91040C982CA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857583358.24428.7743568425963097539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f070aac5fbe795233ac6efab8072b9cf5b1f527f779108cafc2f71f1cabfb2
Date: Fri, 16 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768575833
