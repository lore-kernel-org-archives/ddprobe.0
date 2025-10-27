Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BD1274FE8
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761584394; cv=none; b=u0a32qIDcG0W8YFy/zffS1dQKapzpV9zIsrfanELfVXyDTgZTm/fYgWCBiQN6aC0jyGEzm5mLTlbke+hu0QUCAT5L7JbyVGaRwsFeHhZeAKYeI8OpOcwqtEaANlBB2lhfQXWfLynLy01cP8FKZMRb2y7SM3LAGfyZ6yXC7IGS9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761584394; c=relaxed/simple;
	bh=9YB1XSV1vutF+GAh5VeuSVzG7hJJE9Q7mdQ7DAZhMVI=;
	h=To:Subject:From:Message-Id:Date; b=T4FREAgbEGLMuapunNcrWpPAbfp+ustgMm7CspYKHDTBFbdSLUC0l75m7enPaDlPZrpWXGgF4cf/xkBgON/xBUjxdvbn+NoZouvnvTu3+gDdzNf+cdovJBxfYlbg3Hmy5XLwxTnpk94QW6xF2+f8A7uuRn62KsitXrAv+OIO9b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTqg2dwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTqg2dwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F609C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761584393;
	bh=9YB1XSV1vutF+GAh5VeuSVzG7hJJE9Q7mdQ7DAZhMVI=;
	h=To:Subject:From:Date:From;
	b=BTqg2dwjiCZHTT6ixvviAE1kJWnoMsCd0xclzMu/gl247R7p3O3NILGaILIJor6ZY
	 Iv6ar5c+XcoJh1wPVUqvAyN2MpXQR/sZOSi1mTJFeeT5BtIO/Y65F6SKH+w4X/dAL0
	 2PlSgnYCc1xPiAq8KNitR4VHu/+RZpkaJxBfDVPIzPHrb8NUOLCcHtbXgCUZBpu2eQ
	 6l3XDNO6WqW7cFoueZA4rGLNfg0JSnFzq53mGMlppPwaTMQutf4s8uErCf9fPRRYxP
	 RgFB0KSqtjyEiKktMr80PRfMHwKFqz4xh7uwGUanllv+UzF08JnIHlMNpE7p1EBiat
	 lWuk7aXARSgtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE9CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158439358.32379.8480430192821065831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee128f5a9977735a21a095fc5a77e003c24c800f18acb4fec293e2feae85243f
Date: Mon, 27 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761584393
