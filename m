Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A8DF76
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776584854; cv=none; b=szHH/B6I+KV0eSvdCqUDXD9AGnUesvwezGz99S4fi1SUlihPj7S3MG9XMlVVN4TVFpPDoR21tOyJI0+YxokhR/hFqEpwF6EEH7zfn1BUUA4SkXeLhCL5o2/e0CqvQHqBvVC4TTMF4vuVDe8yV8hZqtIYPNb3e6HAtfMXrAhGyp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776584854; c=relaxed/simple;
	bh=qoc77Ut/9W2l8JePXSG6YQmS+KJ9IUFUdyjlRXext1E=;
	h=To:Subject:From:Message-Id:Date; b=nrfgZE5rpx/d1M+aMDLaHQToG9gMkS/PFPzXa25E8918XwZx++za5etLR8eKPYtS9hLLdmHUfQW08g9IF8mo4fGWbY0+krKg8in5M/+dub5mSfEhzWM97RoEzuYmflMxOAOXwFHczMfoM80Z2TEfhUvXUKAXkLlZZZ9fGajGNz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLTNF2Ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLTNF2Ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4732C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776584853;
	bh=qoc77Ut/9W2l8JePXSG6YQmS+KJ9IUFUdyjlRXext1E=;
	h=To:Subject:From:Date:From;
	b=cLTNF2IbGH7XgsejfsuwImk0E9v5hJ56K+NPFSy1GJwZeRlDmMN8hQMJd2Q8lYBF5
	 /jpPqw2jXqaQX0Fz2fbqav2CT36mrk+f7x22u9faZ86S44zXVSCv45FnPGhFoMOJ7D
	 I2xONuL3teQG59UeNMEs87WdifjnfJbRJbTvrTtRMrLcNz3aTMUfd8cFaROfHSfbF3
	 GjoVABzF61nVB6nKI1lw2rgzWdO+DTyZg4eWxIkWz0p2VvN8quwjl/o7TI4K4TKioJ
	 LvoXE8wENs7gJPkHzGjT+MzJAxUanabyO3FwYAuH+D63UfG/nwliF7jpSa9700F9IC
	 lb+VCpnpX2ubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56DEA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658485368.14991.3754851498126686211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb76d4952c2e9927c18a524f9e1b59ed57c9f4c8955548f4dc39d940ce99defd
Date: Sun, 19 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776584853
