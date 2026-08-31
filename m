Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDA8501F2F
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788188434; cv=none; b=KHJ12FboYzYqRTRi+9o0w4F+R+TAxK9Wzeh1OE2ft++SIN22p8OAM06qeAEg4WfGD+uFl/8limbDG14p5hTiRntB7WqryQ7GfgH+5i7WD4cMVbczKt3czatZAJPi/1g+xjIKuZ/bU+vIgT1dNM/Gepbv/vHb/4RgJX84nnbovQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788188434; c=relaxed/simple;
	bh=4kOaO5wUVYzJkt/imz6BGEX8jldUK+nhfH1mr8BvMI4=;
	h=To:Subject:From:Message-Id:Date; b=Fi1Z5ohlA8na+J+ScSWa+JYxyRNx3hWoZeucKq+0/QRGuOoErc00nqqDxtadgpGRzLzKm+efBkgVZnnnVUUJ0MQwty+2DvTEucyRgBtK+m08b1b7wYXlynQdNK5iSmQYnjj5YAS60NTGhgy+Aj43SXXK1M3gAW9jQRK9qwYNZNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLbTDpOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLbTDpOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6404C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788188433;
	bh=4kOaO5wUVYzJkt/imz6BGEX8jldUK+nhfH1mr8BvMI4=;
	h=To:Subject:From:Date:From;
	b=bLbTDpOCOydovmPgDBjxlz7/QbORjJOsbB/rzk0z3Wj2U0GvPYijO7ufKnuCboC0R
	 QOEsB7+mrhQtAiWu5726cLK6z5CDfFd7tzsuNAZMiqR63RlCAnBHtlmvn2LwBlUEC0
	 CXTGTFldl6iVWxmLwURri2E0URk6g6I4tJbHfeCBDyUZDAvlIQ+bhpPz/N+xS5EQK0
	 d4I29B2JR2ZUR1kxj3KqloaSEt/zZz/MxrXiCNaHw+44zLIpaEGxSW38Yk33gTHwbW
	 eTTlb4kHyrAN47ekOdEYLahgSOg/c5PpuBcxx2HezUEID6kSI5VrSeeEXabKXrQ+5N
	 QWvhx77G09sWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB65C624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818843376.19058.18251770375807323791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b30f505b0dcd7593dee00b265b858d8a8c97ab7e3226359dc0b11a13c1e63ec
Date: Mon, 31 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788188433
