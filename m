Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3B0320CA0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764075174; cv=none; b=UybDWNHACb80BlFBfPDwSJzml+ZM9Hf/PwGD/jQpou3owlixz/xxa8KgDDu5tPRV1pIlO+d1h/8s24Xo7cRY/eHkQbhTIVnq0cDZ5tzAMAw6Et5Vi9yNy4GmcggNcFQ+2/p7BEiUOGnbZNvUzLkNfMLXaLHtoFt+z6CXCuFWTJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764075174; c=relaxed/simple;
	bh=xYZGUeZbx1lk6jgOrJJ71LXBFZPWBU3rxXtbBZ2ohIs=;
	h=To:Subject:From:Message-Id:Date; b=AQWydzThkv3alYya4OthNJBs9ZM/h/Fi465GbU5RcHuNMsofYfpBwfYErxb8m9TkhSFM+fDFKWr54VQzYNKQoR3Bl9Mg5PRu3b3LQ/z7RuD3BBBoqACF2+wAKa1ifhi+SyaKcjwVieLoNXfxMpzZ4Gzq2oIcBvcTm2kjh28Yh6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLH1/7Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLH1/7Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD71BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764075173;
	bh=xYZGUeZbx1lk6jgOrJJ71LXBFZPWBU3rxXtbBZ2ohIs=;
	h=To:Subject:From:Date:From;
	b=aLH1/7Y84vqXrWY+UMgR01go8XmLIfS/1k19lN9HN1V/wg21Lxl5v/K/kKMEpdnCe
	 Z1YY2Vq4FkD9H6SGOs+vv+iX8sfmLORVvM8x4HgAaYZN5sGi91hPzeiU+GjN8lVGrs
	 a88Ng+mCR04rBv/VxJnx6m3L1/Xb/gUdfBPCN7lWgt7k+QMRM+kfL+DW8dhZYb/iFn
	 QfO0GeW3CHv6w5Q5D0F9aLRABYjwICtE8cuN57tbQthHbmrA0dpn4+cPu6of17RVfu
	 3x352qI3JBUvQFMl0reDGAXtrjPD7KRBBeyHZEeFqboQJRriZdo0G/ufQYGLLWYwCA
	 6FUxlLFRdWdFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E7BD0E6DC
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407517359.27999.5747588914587788049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034461f3a86d98e55420fbeb67e760f2ab2c8c4ea687f8f08d77775a3dd14ced
Date: Tue, 25 Nov 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764075173
