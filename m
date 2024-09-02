Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C8118E3F
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725245154; cv=none; b=lX/gmmCjsWrMOSKPJIE8HujIkgHO0fCnZm+HWpMPeB0CwswPlz7eLrVM7MrOTV+dey32yd+WimyI176k3oKuKlcmOfr5bd4ghCJpKazuWf7XLolneCklLAGZdrp1G7VNYhZ5tYOmc3vBPhREmVuDJfbQASgCrMgW3TokBwm39u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725245154; c=relaxed/simple;
	bh=vv+Hduiqjz6HZqKx13hixWBuVG3BRjuQfdFKCIn/u8k=;
	h=To:Subject:From:Message-Id:Date; b=C2JzkePjEPeO5FXjf4t/DNTLBQ9rybRvHUexjRjTaJAPPJc/+LJhLW2pa8Ef7CsMsBIOrc+FnUbHfX0tVrWwHbw3NaxVT8wrlli5j+A0Uj6nNAjuG9qQ40RYOdp8/6ISQCM0ud2D2NhsFKA97XdXFb6WK+N+iz7BF2YBShORT+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsqO8ivx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsqO8ivx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2687C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725245153;
	bh=vv+Hduiqjz6HZqKx13hixWBuVG3BRjuQfdFKCIn/u8k=;
	h=To:Subject:From:Date:From;
	b=KsqO8ivxInft9WQjgxy9FCoAVG80c7aABbbubhPNM9y0nrlnfI4u5wTE6o2jxSpMQ
	 DVWLW+EqRHx0M+KT3r1TDxK+W8wzfB5RIIWxInUEEF3JU0ZZ+HXSrNK1ekYFCsg1ky
	 FAUKSHwt1l1Nvv2sxQIEcDg2QAAboD9dyrGMy0E768ZTJsb9mG1FkCS3IAvgguwABa
	 SDIN9B8ISxc73Povhr2wy/cUDGZPRpCmxfHl1aHdrGcwbCm/49EzcG41q4N+DZhT9V
	 5R1CEw2QHjM0NSqwJ9r+bbDigngU7I9WOk+eFGVukHWbVZQTbHa+fuJSto/StUYew4
	 oF20grDP/zBpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F459C54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172524515360.16404.16959774450055657168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530dd3cfe23111cab8650806f684a71144f331673cad7dcd839c91888ca0bf0f
Date: Mon, 02 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725245153
