Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E176279DA6
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761687594; cv=none; b=arz4MwLyn37TBYIjx7+Z7LnVzN339irJ3O7U3Y2Y4wX5ShbVetpLy3zhAHM0EoK58PDQkDhHiQ+ZhnpjG9fsUBU8RQ5IDhj1NjMV0T0RBoh2F09Vll9tw51oKpjFkIcVFn7O8RguQ7d+Dqrdr7ivBdhkXjQwmpE/PJG3xEiGejo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761687594; c=relaxed/simple;
	bh=+duZNiDEmkkZpZDCClg7WL4g4nYxVgmHViX3dHH5ICs=;
	h=To:Subject:From:Message-Id:Date; b=a7pwMmFNTThaQ0KQpq8SR7f+1tYGZvH7LoNF3fbEH1oBSAnQ6hTPA9C0LfPQ12sbiWIZccWBkRzd9+wn5FlP9ANR/eAxg9VAzNB//WXcbiRb6Yw1+O8v+3HB7OcJvJTTwSEcUIb2Ogd865Z8B+EQJUSyb31WnGEXWFlwKRWK+YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwlS5ld8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwlS5ld8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761687593;
	bh=+duZNiDEmkkZpZDCClg7WL4g4nYxVgmHViX3dHH5ICs=;
	h=To:Subject:From:Date:From;
	b=kwlS5ld8AK1W76/qMxmEwJeWcxyKC2Rqd8egHrAkOVLFx6AlwoluQ6vcH8Hxl9aPd
	 8ks+Fb0y2iDwqV2xSpBO6CHB7nOqXE3lOOPpRdkzqm80w6+LeWfzIauid4DhX1zcvg
	 HmxY8K6xso1C1i1KKyyxxcpjDdvahtvmiZ2psj7StW0Wz/2qoa+EpEcqnMQPrsfli8
	 zKvwQIf5sj+v0Q/WNcMYej191bzxt5S584u/t0+KTPJ7IK2Vgr6G6FChgtOlHf70vs
	 l1WqcYLguCAyhTrFJGsivnYRC7G4hb6HXIKQVBOIfQw+885afQlLGpzrjWZ2MyJapj
	 2ETFPpocnUZSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B99CCF9EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168759360.17745.11694461363096456496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57178ebcef6336a090d5ac13ffbb398f1204cd64fe950f9684741031d8adc43e
Date: Tue, 28 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761687593
