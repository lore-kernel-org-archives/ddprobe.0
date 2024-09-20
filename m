Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D47D13B2B0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726833954; cv=none; b=n8xChnTHc/n+PH1IUCeLjDU/Ha2NRiDZZ+yICMRji1jQk/VRqcGS8KkKLvZF3AJR5FktfupwPpEehJo9exCnbrAY0aFjxdiLqZQzsiK2bpy7ZCa4Abe6bVdmVl6aqpzkr1QHju5yWESx/9f7Fqfc7nsJvnBcJyod/PE5m4WeMqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726833954; c=relaxed/simple;
	bh=+/cCBj9zJ/LePR80IjvccNW7QA/S2/pwvEsCwvFCbWI=;
	h=To:Subject:From:Message-Id:Date; b=NdtQxAInk8lbfKMwDlvmdLPq2RUw/pJvspHPDhYR7M0IPvhgOmcW87lvfTO0NnyEV8w7S6VIF4nKhaM2nDeCPNwxzHaFQ1SPhWd3QPP74+jAwMQy+oVjsBc5vttdn8+UHFCT8snBpTl5JnFB3+5cIJNpHtXQZPsQJajqILX12w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NreuOQam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NreuOQam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA89AC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726833953;
	bh=+/cCBj9zJ/LePR80IjvccNW7QA/S2/pwvEsCwvFCbWI=;
	h=To:Subject:From:Date:From;
	b=NreuOQamx4PdoGEk559fza/BQe1gjjtGC3vWN1HzPLeeQYH9lgbHTEjAnnOC42ZQ8
	 pD0a3yUxtyaN9WXQ2epfglkvbOQ1d0IrByWQ6KVY097mlqs1UEuUG0vQk/AOhF8rqQ
	 cyamT2PCXshoKPFD+ZW//6e8ofvDIgeWfWwr9uABticRQcylkqRlKZTrOAUF1mLyt7
	 0koLeo4TtfNIfvXzYifHTP1+Crad4b1O68NUM/fpxBpIZVTCd3L0CgUANy61xC66F2
	 OoiH0oT9Zg+g8bannpFiYphjKtk1p80YQimj9rZksm1aAQxPTFRIIjWUsRznxKep6h
	 bCvD/c8JpfBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E7FC7882E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683395359.12443.9747074044813641008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb85d77a8a41a0a97f8351e7c246b2aa823b8ea3b3aa3932b007495f6f56048
Date: Fri, 20 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726833953
