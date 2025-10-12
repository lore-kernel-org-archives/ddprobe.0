Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3618E79F2
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760235594; cv=none; b=fHWAIiwoP+3kgtnxt5bhtMD+uoDYyw9loSX8iGatr88RxUFe7RyKATpwi0T+3JLYXlH+NrvpX9+XjR/P0ZCJOOZ/8UHAwdkmMvZQQtDzgkxAS7c5kqIpfuZ0CV8A6lL15MMuPsR6K3I0PZFV6MlBjh60DciXdXy3RRQRUnYiQWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760235594; c=relaxed/simple;
	bh=rLdQuNIv2Aw18Caa8PWCYkEaSLUlfuW596FvFDvUWIA=;
	h=To:Subject:From:Message-Id:Date; b=NMlJpjGOt+qi3dW9D9aIzlRbaFD/OCwAKzx4KPvOlKIX6UagZtKsr8qw683jevub44HKkzJri8cd7rkpfpuEJ5jP0jCrLhD5jlL5afVw7CqRDjP5GuM5wL7EiP0BAiVSBOINe3hAFgs0ECusUKQgOLVApvHVzz19BY9KTZx1LNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrHYDYzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrHYDYzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A556DC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760235593;
	bh=rLdQuNIv2Aw18Caa8PWCYkEaSLUlfuW596FvFDvUWIA=;
	h=To:Subject:From:Date:From;
	b=ZrHYDYzF7CatYFqDGG7hw6JVlVCMU5P52M1tpEF6+yTKUWJl/71KiIw6vwGI0JDPj
	 RdTk8J2QHmQcTdgZvzNGCfOsEJnj5XlMq0cHHXlaZXHmBi6ubkm4gj9vYx445jz76/
	 v0jJY3VBQ7wbr3RK3SoZc7R96aO2wb22AKUTmRYR7aQCYCmFJ5ECDrW51i3iuSBZLo
	 hS1FgQB698uS4bXZt0L3nMPXkeimP6aSTXiTHUVUXJDle80X6oce+aZ3vID7LGiXWq
	 dY2JJtGwNPULQVxW1YsZV/CIjTcxKDNqiQRz9G30zwkS5HZ3uaYHvFlazL6FUbK0mR
	 TZ5URet/dMdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC0CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023559357.27501.10056970769344708042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f73d5abee102297e1b9eb4824d7d523a74d63b6bbe9ba67ae267a6f27b1b26
Date: Sun, 12 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760235593
