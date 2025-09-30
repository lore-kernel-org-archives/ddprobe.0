Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ACF27F01D
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759217995; cv=none; b=BUmifdpwy5KQrqhyO0tVcXOyEI+nSLzIYDDapfwE8eL9D84ZDBHmSsr7JhxaXV4tnm7KSEchpg3biEdRAZW//HUb15PD8EJU2AF5NWQcjBuMJ0tnsdrSLOlHV2Q+lblWv753+4HRe3hk5eaB0BMjTRBfPam3kKGfwyyqwW7fuQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759217995; c=relaxed/simple;
	bh=Gr0JdS0xhlx0Y3i29Q5tphtsoBHj/e2IW+yLZvPHlUM=;
	h=To:Subject:From:Message-Id:Date; b=u/yrfketFtdPy8nOas3AHc8n1DQsaz3pVdirY4/5dVYHKCdYSbQ/Wqs4RVga6YfRKPtcVNVn8oSydmWP/vVVxhFbPgFgwf11dWgRGGAjAPOFzEKCrsPsVT8/bdjF8328gG/2HpbAWFY8GVUyYtk2CCFcmjJSr2QE/aGk84iu5jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cc5z0QOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cc5z0QOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D3AC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759217993;
	bh=Gr0JdS0xhlx0Y3i29Q5tphtsoBHj/e2IW+yLZvPHlUM=;
	h=To:Subject:From:Date:From;
	b=cc5z0QOvtCx6+laJsKUCE1mF+UEVPGTtQ61LKov0N499wioKeRtdNlhOOmhgKswkp
	 TVEZm5IuLTKzLkSNwspe0vsQv/u3kngjkQrICfWafBy+6RQN/VjlGyfU39rbjc+XyU
	 OhB5ef5UQXXzDF/2+e9L8XFSR/O2AdZCFXLv/Nd6lvLo9a5sTNVzyRSN4VAS5VuoBS
	 kiY8hYuwHeX5BTiMrqco5cW6mnlTuaDsqXBu0eieohH46TRb6jZjtOnAPnCcJMUFSB
	 92XLW73VRWIkOfFJCKxg7RLc+b5cevIbK59mTndwJRRP4ZE7nZdtBF1mf83XMM5vMg
	 0K69iXsaBWgCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034CCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921799358.16055.16250632425090928065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07bbce4108a9d0472dfb19131355e107ab884ca623e2cd0878006740e58f9f7
Date: Tue, 30 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759217993
