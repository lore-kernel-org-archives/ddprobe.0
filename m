Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EBF45FFA8
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791448834; cv=none; b=Cwgh7DcIbC+q/mAYiOqr4ojn5lT8bLeUMomQpWL+/tVmm+VjuWLzfFSxllEoEbqa5g/4Fk8yLZo0TNuU7rmXRIuJ0FD4A7RL1g1/Pv58+f6k5eXB2GnCm3KdH4eNmqfkMlyfU+nOtLIRkAPGluL0B9Vfkvwwo4+eoEGHTbYcjrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791448834; c=relaxed/simple;
	bh=RHwgqgu6y/Azs1Wl0cKCWvVhw6WQl9lYlBmj8ZeZ0ZI=;
	h=To:Subject:From:Message-Id:Date; b=IwvOMtbb146gxSGeZe/VADUKezaYlhST0OomzQ3vjQE3Z17QMq57mZ2gwd3QbMCvineNndAUhhMzl3wcZx6f8zUqggh3fC/N8X80+GVBd2XS0YOOTw61hT3jwVCuAQtEqddZrlzvn39tC72m31KU7k3kEF+PMAkb0Et0Zv3QmNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoN45oZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoN45oZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF006C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791448833;
	bh=RHwgqgu6y/Azs1Wl0cKCWvVhw6WQl9lYlBmj8ZeZ0ZI=;
	h=To:Subject:From:Date:From;
	b=qoN45oZGGKLBKm+VJauzkR3ocudPMltL6QK2uXqEWQPKI7U+wLDom3OOy3oyDpAge
	 uYUKDTFbUdiyrq9R9zwLsc29uvnUWSnIx2iVWm85TKEQnTcZgsoKffkIt0Emed2+fC
	 fvy4lN60ck3LItA4Vu17ugDGlcjo2byp1pf3JzsPUKAL1L94ZXgN/AQxjEvtRcOTv1
	 PkHl7zXrGnHefERDYAAIJFpa1l70lrQxHChF7sKknuA/eEnfS+qtYOYGx1YE2snpfY
	 21J3J7R62E/OaosShBTc2wLh3LicuiZq979Tjzn38MO4MJvTJ8wQqVHFGJlkf9+ITg
	 /aQHP+qUBPFJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB594CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144883369.27072.6660586205902571834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33c07cd8f57497e0a596c50dd6175c5754229db6edd7c1f5508358408f5e3a9
Date: Thu, 08 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791448833
