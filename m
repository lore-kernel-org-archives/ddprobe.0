Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CBD29DB96
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759893594; cv=none; b=V17YsLcoNm5ix+1vT1/MGAdku1lt2qE6XC9uDUBhclbm0ETx211YdGtZQPLYQM4xmNEyy9MCCFQpL8ACrA6NQk5A49HhsPBGsK59GLJvWAuZ4a/bZAqoxDXvACeQeGmi+RxssAY2ouWKl/HPDepFB6fjqgHBSzGFsXejgtaTJbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759893594; c=relaxed/simple;
	bh=xsmjXQfL9AwoPm52k0qxee+nY18FxSMZR6VDBfz3ZX0=;
	h=To:Subject:From:Message-Id:Date; b=HfuO6iKyNQMohZXHmHaL5RThCsPsI7YLto2XFLJSR5gBYI9iyYxt09Zv38ziplZUG/OKxK9d7Yg0GjlfFMdjXk9xIz7hnoCwFwz8qBmdxgpPVjcatarO1T1blEzdHwSPwbcuQQ9yktCmAfNbWCZdUMn5kYt5hXtUiQC0ZDqCuXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDSWXLlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDSWXLlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED2EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759893593;
	bh=xsmjXQfL9AwoPm52k0qxee+nY18FxSMZR6VDBfz3ZX0=;
	h=To:Subject:From:Date:From;
	b=jDSWXLlGEM9eOVhKBAdaWJgl7kAtc9ruBw7h8grhT0vBCy97qQ6a6PBzXKKrNSRUr
	 Ty7TeuBqCz9P2ae+YxT+/ePRkFXj76d41NIjSK/S5ZNe8npnPeN4k+6ORVmUkAg7rP
	 p2UEtFy7LnRkEbqrtiaCqv04q5E417JCAP97B9v7RpH6Wf7R6t2t5GXr8J6MrqacZu
	 fjvbJme1kHJIp6RYdnjATgnQ7St8XlYP/7kGZJ/RmsaoF6fhQZunPiHGFiAsJ476LM
	 vOrSdLNpSO9nooQd7TLPevIGvC0d7G1oycvxe6y2d3EOfP3l+4PW3WfW35+DaV+u0T
	 szC8IjV7Rat/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53ECAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989359357.11480.11267805025491796959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373b877f481a77964cfe9903476a316bc25c37c1d5dfb2a1b609d262240dc794
Date: Wed, 08 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759893593
