Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4FD231C90
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728156354; cv=none; b=K9wgYhE0h7TW9B9EtJl/AFDNE0N+d/LnRy7Xv043hGtRepj7pVEaImjNFwuJUc4j7EGALZs91+sRFEk67EGdwxlh64gOOdI/T9oDS7lMae00rU0hGD3jyamQOgnydXOIUTcloPbJ6m03xj51idGNmeUTE+Tw1KNn+nMI2HrMjmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728156354; c=relaxed/simple;
	bh=ri4XQMfnItDO9CfKTmZ1C6WYQDyrsDf52l2xA4bCj6k=;
	h=To:Subject:From:Message-Id:Date; b=TktwdWiyx156cECOhHlXikjM8wJpkgcUyMvLocG43yg33qrTJKyj+URqhv61e8GrpFGKdcLrE5dCZIAh14qAI+T+rBrdiBBXu5ICcfvSxJ+ncf1k+gQG7L8xoJuhpa2IEx+mXR1BqK3jePfd1Xj0AOvC5RZNdyaE1fBhz9BJoMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANv/4D+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANv/4D+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE07C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728156353;
	bh=ri4XQMfnItDO9CfKTmZ1C6WYQDyrsDf52l2xA4bCj6k=;
	h=To:Subject:From:Date:From;
	b=ANv/4D+DsRWiNBA/9EaFY3CJdTcR9YUDvCM/V3v7noenM6J8/ow+Xgwu74lljTNxf
	 eUEw6hoDJEDQ1GwDYtf+NIl49MDuh9JD0no/CDPIZRyFpCNU6kueyYmrmutBYcwhLj
	 KMIygIi5jxiEtZq+Zcj7o4h2Y+eAWB+5xNFLhtYiDTfYo8Fu8ZLgKjiC6MjgSFkhMl
	 /p9lr0m/dHbhUMI+QyDdyCoDfHazEAKzvo6junJSBUUCTMnf3eCyiCEeie0iCDxP7W
	 oViGESWb2EqI3GF/qSCNFGyI8h68fMNKwXc0CDo8T3F+WTZ/hREc91gonZuXZICDCE
	 HImEGdwIFkeVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B308BCFB42B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815635367.27259.15580369216410035258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad4f5c09f191e81801843a974acd432cb4ee8875af38f58260f2d0643ef9eec
Date: Sat, 05 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728156353
