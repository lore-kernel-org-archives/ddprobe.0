Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2403C1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776574054; cv=none; b=hLQo/7apWOUY5K9MtpwPHhgLr/TVF5mhlLUSMKe1fkfJ8oiHpNUkC8Cl+rr8loc8RwbGkVHxIGPeDDEpYMJv7l2ePs89YddHBwMrFL5yfuhtyqcGLi6ZTNLkNbztPaABhtd1ls6RGDqwF6fqE03F2MjDg9XbsJPc8t4lDdCVDx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776574054; c=relaxed/simple;
	bh=jeP5cGYFPEJqq1i97V9N+dO6BDY5uycysADeFGxRAvo=;
	h=To:Subject:From:Message-Id:Date; b=A7XDOr/IDN3hZm6IhwPDPPJOh7QptADB3Xb+PnNpwkzbgF+w0yfhPJVCX8KMprEIqTaVNNfSXtNlt6rhl22FByIw6eqawqMwdrPgcqj1rjTFLxE7bo8tiotTRbK80mDY0tVQt7utWyGnUDTWix+giR9R1pQUDgR9p5LqHPgoh2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpNo2V0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpNo2V0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0028C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776574053;
	bh=jeP5cGYFPEJqq1i97V9N+dO6BDY5uycysADeFGxRAvo=;
	h=To:Subject:From:Date:From;
	b=HpNo2V0vHBpS4C1pZMzsV6K3q+dTz8UMKLU1KvSeUomMeIdxlGVedPZCA5Q+7mnNA
	 u1ZeXARL42RMRwCaow/vM5uMUd83Vg1kKXFrNtuPBWR7jaGfWci4YIjsFAFJ9x+sCt
	 2ekaGIOnWPgPDJMhogrOuxkly+LbDoKM42WFy5eS1XmqpJENhuumsVzseQN5O+ZHcl
	 W7barf3X/AbypNfyQVEfHTMzVHXafLW2mj/xiDKzy7O8WbbXFfMRULSenaMrAfyVjw
	 CQ+6mqPu8XjLMYaNUSD9QO/tvuHZgDfGZvNGq4kUIa5p5jTXxlg6NaqXvg0O5lLR+6
	 KsbcP2E1qV1Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEC6EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657405368.24634.9568016275381644975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7498e5e489ea74eb1299490585fc73ca4e1661d33a650ba46e21e40d0cfce1
Date: Sun, 19 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776574053
