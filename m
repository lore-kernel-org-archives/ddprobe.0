Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3309E1DFDAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733479554; cv=none; b=oCppJZ4i3wRCKMYdvddBwoLuqGf0WqWvdzYqN0HR+CWnzRFoXshcjgs7oFSHjCHIvS96Rndj7Th9+lmn/yG/SfLTwYFgLSnJw+uHEc6Mt6wB8ZbG8yWXhyZV8qvkwTMK4/ky5uzmiyjl4B+C8anwZNVOM8vdaJ7ezY6c0gsNS7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733479554; c=relaxed/simple;
	bh=DbeTUkheCTgAwF/wUUWV9ksX7ks1DEGeOC2kjUzbV5I=;
	h=To:Subject:From:Message-Id:Date; b=h5h4uz7ekg2WCTYcnCmV5E8avrBpfrWh1+eJdwi8ACVmm6GebQJ+ugOzHpgljOY4LGF9LlhvbmxCMDWSgTOtFf3wny8GC+jfRfn38gl1+PI7pC2gDxjgqrtoXtG1THz9nhLIDcu2mPYBQAt7WGBMTYyVINy1xKg3NEP5lMKLDqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2wbFdlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2wbFdlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78C2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733479553;
	bh=DbeTUkheCTgAwF/wUUWV9ksX7ks1DEGeOC2kjUzbV5I=;
	h=To:Subject:From:Date:From;
	b=Q2wbFdlHS030wwnRng2+FFFSVLNjiTw1ZmefzpJ2TpfD62kfyxcUQUleJSuJdf455
	 sG+oXjqhPnb5YNq+3DKU/ghVvhCeyMkScYGgaCYScDaoVNglN4e3+FaQ8NAC6tBQ+N
	 BhuNeRgLnOjt5jVH6LMXWQ4pYwM07qx09VW+xRKh+pX+/ZYD4EnpQw/7/tVhz2s61b
	 pS3NJxpTUI8MNUOkyBVcxlmXaacvtOYxrW+dXLqKF3gdXh4ySFjnPpnj+a1HMt90Qd
	 FXkHcr1aW/YArMTCQ/AEMdlAyxnaujhkvpKOHPDoDXe+sWT/1GgbHCvCQFN6leUBim
	 1jlZj7PSKkePg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B003DE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347955370.25786.5426582968460797062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe396246490db11ede8aaf27e48e0b28772d8ce44decf63638427e5337d7b9b
Date: Fri, 06 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733479553
