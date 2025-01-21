Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2B51ABED7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737458154; cv=none; b=juW/yPlBkrk4QHOznitp4l8WCNJvCNKc4tgp3S/pF15ecuXXSVLRrYbEVD1QfOXxPvlKMWSVXdhyD1OYU5fQphjpY77eF/W1J/zo1JpwfsdualfoiXM1HeaSq9GbbozSwdi2L7Ro/ure7GeIP3PERuey0GaziK0b1m5c7Uevp6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737458154; c=relaxed/simple;
	bh=PSiMPFm4NLidR5nCs2q+HMxNZtISOG9jFg0DdhuvS2Y=;
	h=To:Subject:From:Message-Id:Date; b=f17E4LreJKTeNSE207bHx0El24t1RvMVp6zACmit4A2ILB3Ez5nicpQwoEw3alq5npW6dkTH1blOoLFc5ua1iwnZT4lCLbNm/SPjw0fYenY3v4xTjPE/h9ScoB3p6ATJHWhviHHuqXTF7VUJWNhno16CChHZRQTYe5BuOb8WH1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUEQipZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUEQipZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEC7C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737458153;
	bh=PSiMPFm4NLidR5nCs2q+HMxNZtISOG9jFg0DdhuvS2Y=;
	h=To:Subject:From:Date:From;
	b=XUEQipZo98ZfaoOt2SYMWIDGs7ricG3wVbYSfUiibKfPT9/LcUggEu4XppV2sz8tM
	 VQu/dF5sfCdV13thrx8Oigqi6lirEDpVCZmcv6ZoGXMs1bYxQSaoDc3Actaph+eGya
	 8I8mwQ6LtewKyLGUaXDVIH8U+/y98bguQ7gFTY8irFSUtAiGjL09uP/b2wiNJWfYcO
	 pSV69+KZKy86gx7M8fyLbFbVNNKXsK3PGvUWZ0OogUN5dke47GWnPzYJl15sveAoV1
	 sMl+cwkagZ7YlmNoj8t+0LFoTBzpm1otXSHgB0DjMLKUor2xW8CwzmMay4oA05U9bF
	 x1yzUlTLa0xDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CFC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745815358.26715.4768343370555434462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19662614b5597793839184a9dea625d831bbae9cd73196a13b40ae124e5a0361
Date: Tue, 21 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737458153
