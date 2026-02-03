Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27D13BB57
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770087834; cv=none; b=T+GXXVydVNv+goKPNnC7DUC0rZQTWKXO85UOX4haeCay6hBLNArLZkdyIqBGyVphKJlJVb9u31D5/NMNZsbauRFByw1miJrTq4zOm834INaujvu21X1MHZHzxRLbWr0gq/q2HA86/dcLg5HN0DXGUVpF0PQ0Z51l+gz8+D8BtzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770087834; c=relaxed/simple;
	bh=iDAnZxM2YywmhvIDgBNtJIsA2UafVJIArjfgnFQZZuk=;
	h=To:Subject:From:Message-Id:Date; b=GqaReePt40uOYEvO5jGkNjBAyBaJijxDaV7l/NzxoEcMszy4nIG0DgIkvTALTfLrf/7MhHxe9rS5MrZQdQCgbdQAQ9CXPkLeBo4ehDO6GugqunaDQq4wrPeRYZo4qVHMrheh+Bp2mpN2y5QtUBNA2BHc+FlnDkv131oaIO+EIl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xje1zhtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xje1zhtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B3FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770087833;
	bh=iDAnZxM2YywmhvIDgBNtJIsA2UafVJIArjfgnFQZZuk=;
	h=To:Subject:From:Date:From;
	b=Xje1zhtJm5w+Ka0hFon+K3qPgvfOw5b9faQKKMbF7cTP78uXfatCt+HEbcwQJerJe
	 Zin25q+en89jbRVMASsJd5xyMXviLAUIgGqqGbaGy9TW36Jkebw5UDWJrS67LTDOGT
	 OpDVrtrkrA41miE4RsCiuP0vEddf2fXvTl9iUhnbWGUuHd1q9tlEHApcnfzBo6w3mD
	 45o1Ui1uSk9qttLTI5oJPp1sK4xcBfdydTywrCoPqidmP51+yqxL0gjTKwE+79E5QZ
	 Xgp3RF5Wkm8xHbGH0r5axlzd9DPsVUvqhxetBxT0UbGEC+jPFGYLAaimi7lk1Z2PQC
	 E/9zaTWhYpT9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928D5E83043
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008783358.22496.16827099600166858961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0cf97d10872c37f18843815b0ff1045a1413d6845aa6c51ddcef923aa260a81
Date: Tue, 03 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770087833
