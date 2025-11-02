Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340AB2459E7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762111794; cv=none; b=bT3V6xj2b5JGWwFu/jraAtp5ceUc1R0FnoXxhBCt8IJo/PKE6RjG0Zw8PYxIDdaN+EX/1EoRSXcO9teN3SPWh2QzAcw6O4Kvj7wwtC3uXsR5mSp4vt9ArsSPz1mmI7JzV2+tXKUITU/REiQp2f7bQ9H07d+Yhh3C2fHHdyoNrkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762111794; c=relaxed/simple;
	bh=gSklg59+ysbHcVpntccvKK5FsuKCXAgWE0AwSXGe4Y8=;
	h=To:Subject:From:Message-Id:Date; b=s3LTiPx9bTQ1A3rNve+zLB4HrVIkZ0F3nK7TdbrQ+UissYNG0vrvQn1Jtcf3V5CrskujsNHf1ggqFK/+mpGb9ZS3Fp5UnyUtN5P5d1Kl1amSuYwPtSLeQT93Nu5f9+61BmydMHXYG3DrsUTMXPYXv6I+YxD5v8ENWnFmebCga+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Im8pfIaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Im8pfIaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DF7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762111793;
	bh=gSklg59+ysbHcVpntccvKK5FsuKCXAgWE0AwSXGe4Y8=;
	h=To:Subject:From:Date:From;
	b=Im8pfIaztmD733unM9mA2oHTgvasi+VJI8L5sGrR8UHvq3rjXwuBzx6oH0OA3+XQ3
	 EDCPjr4uNBffaAFz1uPR3iVMULT4NYdcpvbo6J/kmPM6wAzCnkWIXuYMblxlL61xac
	 zi3dlM+uBL7go4L0NBiAPNUVrwGJxkVew1HzcijA86+cYRJjLqqX4FSs0YoTr1MVaT
	 gkzV3CKGxlP+IKJNBgq8q4QEaUQTS9/cUDTGKX7ZsTduHmnc1xF5J5GswgrFwaxyaX
	 ulcujEop+PCtIBfXiiw5sgoGDbrX6UueGJdzpCxn/QKzX19Hfn/oYu+4ooLCG10wbU
	 Fm1xLmVFGENLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F56CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211179359.10284.1791553508133761557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd671cca56dd5e9fb79f8f1b0e442a5564094cfdedc439fa03bf037e5cb3d3d6
Date: Sun, 02 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762111793
