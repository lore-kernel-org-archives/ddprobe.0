Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F6436D4E3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768943634; cv=none; b=quTL4rE62gufAGqHq6S5E3jvxlUq93Tx98kfrR1l5BbhpuMsLYBeIeVABPsMlL/EB9f9cPkRzyHaMKRFsLSPU47YzfXAYs+cpcb6DbdhEo5X1yS3uEi8kBjyXfDoZnuJS5+hGsPHulfLBFc5ZagQ1dazAoR16DM2Tyyvq0NXJUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768943634; c=relaxed/simple;
	bh=P5pV286mVM8BqI/x6WOU2i7f3yRRGd+4XN+rRqgUpAw=;
	h=To:Subject:From:Message-Id:Date; b=e9TpLxwpVGQ9xuXw97Xu860oi8PO0uVBUCk+lTOTJKd0XYi1AaSlBen09+nYP7I7RMS9fNIFKHAUP2IUtQi1wEcpt4Fhi6VdAk5GToGRwdKqvGCtcfEaZf2L66941yIpsJKyB+6FWFL8RcQeCHazyJZssY0y7PD+QC83t0wFC00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k282BBP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k282BBP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E168C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768943633;
	bh=P5pV286mVM8BqI/x6WOU2i7f3yRRGd+4XN+rRqgUpAw=;
	h=To:Subject:From:Date:From;
	b=k282BBP9ruPXDv3w2d0Opa2i0U9cjeK2o9XsKgwE4j5xP1OKBojfIoPfSZOWN+e0b
	 ewLbUubjPAjTW3o3+fKg5X4XmNk7lu51PeAt/6GNNNlEkeKnW/XSAvV2PT9u+cVYOH
	 0uclrOc1gKcdtPx+tluBS3DTJRMhYJW/pwnDurAMYuzywwQxOcTJ9pt8hr+/z+17iA
	 3O/CAaixobUXZCoG4xiRytO0dhG2tGsBjgDd/hA+WgHiVOdEzOfu3XwbjQ+zVajDa1
	 +ieTjp+KsERYRkHcbe7mWmtQ1inn9IEvUv5ffSeRM72v6+mpJTJgp1XH3SuCRbIaTs
	 uE9a/7PiY2iaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F880D2629E
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894363358.1235.18230756576348066773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c72cab2d42f5d59e0231f83f65238c5aa3bef3eb7dd564be93f92f3c5c7c74d
Date: Tue, 20 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768943633
