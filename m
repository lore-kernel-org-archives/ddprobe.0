Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A679DF76
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785052834; cv=none; b=gEXI12scwjGvpyhos7xsD5YKy5AryeZv4BQXWkdOvtZc7sAvJ5Zx1Fct3PaBaAvzZGUcoVOb/9+DcgZlrnNt1c1ZbEmPq0PkCrHblfwSUXe4CvozV8javzHyasioUQpoW4XVfzwCprOLndz3AcctnR5hoUZYZTDs2RZFaNSN0f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785052834; c=relaxed/simple;
	bh=wlJDx8sLCCHlP52M7c/Pi1EioU3E0BjS7xVcZ0iLdsc=;
	h=To:Subject:From:Message-Id:Date; b=Fp6xBPyikd9lp2MSQFdK5pZR2+lzMN156t6DJXBGk8a2B6n3ofXL7pc0QNSqhTLzsqC6MotSC381NeYTHrQcXPsbmFWgWsWBYXw6bS1CmWFTfemtqvRzpzWjZj/ysO0S+sponFAYkd59QkAjdViFqzpZgXJg/kVZCSjWXDDYbvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jan6eLTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jan6eLTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45BDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785052833;
	bh=wlJDx8sLCCHlP52M7c/Pi1EioU3E0BjS7xVcZ0iLdsc=;
	h=To:Subject:From:Date:From;
	b=jan6eLTedA2hs3foTt0icOH/jr26lZaCoppBm0nGaQkH165k8YWZR3G2mdpeHjP5F
	 t6O6GpnZ77zzjgD3zLGmSwPnL0gDX4QM2x284l+MPDepUkJ9mAMT18oNlu0tlMbHGH
	 GWSa11Td3n7KV6/R6LUtT3EDFBDVyz49H/G0sW0aneidRqxhJZWq/3auYhhOOzqXL4
	 c/Jq9eaf7Xr2fxk0ifvMc1kMY/D4YA2L0fmajQnq4o4UNJfILOetgX/xf+GAtupliW
	 phvMk/PKdBIzi7PCIB2/Ur6vnTPiTpVUtBUFmV/SGShSIcUFCf4xdE1O3R3Bft5o4i
	 pHJ1sjE8qCP3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3AAC531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505283367.792.2616400623222140221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67145c599c65d2d93d96badc029c912d9eff710e894bac3146998f907bd4cdd
Date: Sun, 26 Jul 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785052833
