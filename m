Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C5429A1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769340234; cv=none; b=AprjAXK4LWPZsHDw2HrdHn29bdWmaz2hWWuzYAfXrUpvNG9+asG9xrYElA/d5PXY3gyiLX5WRDhnNUukFtxpusb+XKTydIdXaMCm0YI/KuOLMu35dA47/UMhxppyDH/QgoVJfV2wYmtiOi1wIqR8fOG9b5myfxfcNDYqmEsmha8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769340234; c=relaxed/simple;
	bh=joq0WYw0kALqo7hLL23R9ZyeFPwgBZk//cZEQPXeWpY=;
	h=To:Subject:From:Message-Id:Date; b=Z+xHadX6kbzTiokOzbOBPfoQC6TBL0l7VzSYOpw2uDBPLgyOrEjLBcTguGL9+HnyqQ4zUtteb7zO0Lu2/YLr2oDQMDBnAqrtW5qJnGYl4APlsY7HZKme65kuv1ffWjSmcDUiY40IiMs+G0UigiPDm0CSxV2DvFMOLnnWwc6jeNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdNMUWlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdNMUWlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9674C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769340233;
	bh=joq0WYw0kALqo7hLL23R9ZyeFPwgBZk//cZEQPXeWpY=;
	h=To:Subject:From:Date:From;
	b=SdNMUWlo0SelX+3pV6ChPJxl9qqFGLmn9sxX56nDOoW0qXPhHPqoF8oAy5V6pLpKG
	 Gd7Vg/QvlWC8sKrWmG/smtlGLGzq81067OxZOVPdoL5VIzbqsTLRHe9FXPfmpfvRuj
	 Hp4boR7Eb/0Tz0qDpZa1YiXw9aBwN8RkCjljih9pWPI+b+PtbQQ/lKtavld6TsvrU3
	 sf+5yTgpLmIqS1Nl0QikSaSj11uwuJJsIFnHpZdL9mxgF/72vPuPxw+wgHUibhQnLo
	 zFqUdpnHVw1j4FPM2qnDj7RyHc12wo65uEV1jTQswtCFJAAztLzTCEw9HSwccSyT+h
	 dkkPP7flupu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96675E63CA0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934023358.19056.7710857992794138400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6c68d9b8c0a6e04c3f1135c151a1836b730a1b797fda152467864b617c2a8c
Date: Sun, 25 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769340233
