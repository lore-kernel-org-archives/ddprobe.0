Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D52B23BE
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718670503; cv=none; b=EnyYdUyGPlcmoU2IH2B1dTyC92aQhBYoK3YPp2rm1BWTDENOreT+4DaNSyrM3KNKszZp1TxevJR9MzlhgHiVmJvU/bqSAk+YVpWeN0O4yPqi/Qlcw8a2HjlLRsGgOm1ohzJI5K+FjWxTH6nyb5m1ABdcRsPZoQp9dwUANiNuTo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718670503; c=relaxed/simple;
	bh=3TwOYcTk8pT2HRn49Yn+qp4+HKXHnSRmMjnu1NbKu1Y=;
	h=To:Subject:From:Message-Id:Date; b=IZANV4bvRNvyHPnBTHsWQvm9C3fc8f8Rci/WfVkjtW0RjzSlzllzuJJ0kZ9ForbF64mrZl81L9EHVz91Sc8WxQ5GhAbTVApNQoK73r39HPbxhRaO8UTTst9E8BTcmdUlAwGc65HcxKIL3Jw1k68CQJ67gi+dKQvbLAVzWiFZwoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3qBAk33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3qBAk33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CF5C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718670502;
	bh=3TwOYcTk8pT2HRn49Yn+qp4+HKXHnSRmMjnu1NbKu1Y=;
	h=To:Subject:From:Date:From;
	b=M3qBAk33tj8zrY8HjK5JtYIsycDV5K3rDAE0fMb1SiRdWAMhH8NRinLeDj/Jmrcjh
	 7It9gFoutq9KaHDHGktxtPrRBFpJk6nivMPVjoikdBuJ45tdcvmZa5cdU1RVLXILbd
	 TMTUUHNsCfbBpxMsxE31SN3GQDJYzFn5SWXWFoPf4C1xx3vt7Gru5qFKr1W51sCFK3
	 fsQeydXPRdeme/g7PlAm6E/I6aluInWc4WD2+6WCwjPzM+akNFEQup+VWfvVRCmjXh
	 nabqjjhUEProArTmJGop7ivxQJNZv9ELJtsxFr7FeBPXMLO5CmNZtFEEfQguNypkCS
	 foIR332L/0uPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A1EC27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 00:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867050278.30923.2794457763824711132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded5d0632e210a8efb2370b6c50918f2a888444071e370511dbf1dce8d083fa9
Date: Tue, 18 Jun 2024 00:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718670502
