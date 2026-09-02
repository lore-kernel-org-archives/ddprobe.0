Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413E54657C0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788345634; cv=none; b=swzssAWu9DUMSOpPe2X5FyL06rD4i/3+WZ+di6vyUwSXGmISw3aY0zBxn1J310nEU/HnslXlkPH7QVPYbm+/nkBEa0R4RyJxfpzVac4bUnsSfVL7IzNVIuVKLICQ9enQNXL0ZoWBsDaefSZ91ydGP2O2f2F8ZG81ErqT7tbLhXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788345634; c=relaxed/simple;
	bh=unaFHGy+rsHjRgLjd80YerahZwghJnlR1uqw0IRQ2Uk=;
	h=To:Subject:From:Message-Id:Date; b=HwP4sev/xwNy3kU/8X+uRmJQ+dcE/3pY04tMDPnX0FQBDGLtz/bZGsj35zwJdr1BB4e65bVmiB7sb4xIySahJopAjR2S1CzRvIZOnlvDDcpLCjyNY1O4t1jQ09eZ7Fgr3ZRuuIsH5RmZIMURqOryFH5l18b7VwtBvHL03/vyC18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSVL28Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSVL28Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBEEC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788345633;
	bh=unaFHGy+rsHjRgLjd80YerahZwghJnlR1uqw0IRQ2Uk=;
	h=To:Subject:From:Date:From;
	b=tSVL28CrCgw57YoZFJo8OaC4YFuLkDw8+tVfbPBW2MuhTaeIHeAfGm/cJVGDj7rrX
	 bIs+CHTrRHfdu9JPsnS4bBkJn4R+QeTvxkq01du6TMtg/81fLsG9/Uvd5uGWQRAAM0
	 XjAhJSeuqVLK0HQMuJS5npKp5qhJt3nFbVFSJLT0jV2j8blyfrZSF70wBkjVW2VMKm
	 AiBhrDTDqLLhr+7YUrS+klcLlcPdKYfA77QfDSSimDiVSf3kFfUtvsSgF0iIvO7lRk
	 mQgvzEXgNixIFXTJW7FaEpSw5RJ6CjOu/MpRB5sYnK71uRxGmfJXSiED6ryLAJ4foC
	 PGqNxsOD69C/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA191C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834563368.19124.7404103374614023017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b38201c8552a517a8f7204892b60908a2aece10c9c7a8746f9fa92860ea4b1
Date: Wed, 02 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788345633
