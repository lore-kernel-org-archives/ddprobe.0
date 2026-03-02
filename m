Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F7F175A72
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772455494; cv=none; b=nGrn4FnfOhs+3EQHD3PcYhYv/ipgkaw6dDiJaSLlYAkQKQOEVsIeJW4oJkcUO9Mi1LfP95NfzyVibpnA59pcD40e+be6It6mzgTlogd8d/86tN6IkHrt3f/PFLAsdKWNXQZqhyKzfYAPN9n5GuksLNTj2rSwKLHNle3KY79gXOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772455494; c=relaxed/simple;
	bh=rjleiPojGKK4lchuzyq16C++OzHOmg7oiPNEh65tLwM=;
	h=To:Subject:From:Message-Id:Date; b=AP1Dhfg8kf9FIa1bgLTRkleBICeFNnahrpLjNHcO5BXqBPAxu5YBx9CfIo4eijazFVE2WdGy9BKOpaeZY2WRTxL/9u5b0FFTrkPeKURci2DodtSEekMweIYtr7eVgokW/5+RofACyxdtloBYIAdn4us4jKrtdbMx+KnZ+uozab0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ek1YefXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ek1YefXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE00C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772455493;
	bh=rjleiPojGKK4lchuzyq16C++OzHOmg7oiPNEh65tLwM=;
	h=To:Subject:From:Date:From;
	b=ek1YefXg0LVHiS71Aq29RVEh4SaC1rdBiAb/MpMWa0AYlqCBDzXfLInAkUorxc/Ww
	 c3fdPtGxlsr9V3pf37y3FFs9VQ5Gm13G0MOPKuG4c/csMMtt5gdfgCKiczWmn/j++w
	 Z1yv+HdLnQnCxaQDWF/kf8BVVp94cn0MekM8guDjWssb3JUPdiKwhVoa4tjk1+A5K3
	 /7zyEtnVJ351ybjHi225qXNjiJj4xJwsBwTG7YW0lW/cAFOj/seXUzizZnJipvvgAE
	 hIctXyQeOG4wWDNr0dUlkjA1CzF1WaYkzzM5sph6ucUdMvabFnM7cZ/IM/gEQayEfC
	 hiXxsbR4B8glw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1683E9B36F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245549378.1270.8556611310624983774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4483c21f65828e0f275ce096f8c423606c4869265a9410353c900d507cd82997
Date: Mon, 02 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772455493
