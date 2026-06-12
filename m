Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A06825B083
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781277394; cv=none; b=EZvIPgimgRadO4r2xmQHVC0DegHt6VL464tUOr1WHnZCCQDeQU5CfTo8q4zIOkEUM8AMwqxXo5THiPKQUTgybF0PXo9c+fDonq8BaNdyW/cJ7snEpHkEmtDcsCc6DkDEh2HUN3yMPKMGyCOdh90QyUTKbIItMIisNsT3J+ukOww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781277394; c=relaxed/simple;
	bh=oHCjIsP8AT//9eKmbIwX0LuTJRGs4AJCAXzdDRmYFYI=;
	h=To:Subject:From:Message-Id:Date; b=gYdYxSB3xKEcgTgnGxPIiz2MBClPDFGtV08g4syN1BBHREgZDk3PtmHzU51ont9X0sIWa/9ZMrd/3EU5lVilbaTJ8lKS3PmsepXdWdSF1W1kfi68UX4qGeH00Pn9SR83esY4anwiXM5BbruVEPYZBzRcNgJdgvXYHAyJpnA1w2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgibVKHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgibVKHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7F0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781277393;
	bh=oHCjIsP8AT//9eKmbIwX0LuTJRGs4AJCAXzdDRmYFYI=;
	h=To:Subject:From:Date:From;
	b=NgibVKHWBcTHp3310VjnlTkfWPpVb/dOstW3N4ncwswV2P8Gm1Hv7sxLGgaMHuQYJ
	 EerhWEjLCy5p9q38KTGhO1USZdfccBFDDsk/GYdmwK+Z80PPXdcffipX7ptRn4pJ6i
	 76OEtCODyNGuwAIeTvPbqyvYmGhPw4mgi3/rPWK7HbatOy28GeJ7TgsRcmE7v5xLNf
	 CxSQrFUiVyBS8b/gYNE5GA9WL++M8i8YxbTNxLzguukYNrfqrgvTwQInP4LikpCYFu
	 xLVLn96UMdOIZNm9fywDJ3PI6p+FZRVebW/3dlahRCB8mkwz6Clci/ZPDYm5VG3JfI
	 00kG+zec9T13Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACBCD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127739369.17980.1453583621499433585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948121733adaf6ae9db549701f850f4dae1c31c09357c295435a03a6dc269228
Date: Fri, 12 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781277393
