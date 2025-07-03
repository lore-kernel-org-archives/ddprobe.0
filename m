Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A24B24B26
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751506795; cv=none; b=MeibPtaSQSU8U17rXaUStDntFeLuy2Wzgw/f6KFZjFdEkwkXsa+kMHqIG5Ku6C/CDdI9Hxn861NI9CLjVQ8oKbDO2QTHInCE4Ts5G7m10LkD92JCQCrpOaoqOdHWzVOmTilrktHvCkqU095bXysCrNWDpHLQcX7QqUf4Rmdk1ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751506795; c=relaxed/simple;
	bh=sJP4woGUuxd4q+vW86iINNE3/WwwqjV+F1JfoIAxrcg=;
	h=To:Subject:From:Message-Id:Date; b=LBNAWskJ17R5x6/4gzmT5pn57h7SeKVX+92ooN86bZkMB78EV7ea3KDebVLAwQas+RATW0ty+fVc5XxfFoPCFEqXMovNeRYf5sQ6puOr6V9sNZYB3taLQlSm9ea1RPuNoprXG87SDf8qbCJBcF9rmX3LBhgLNnEmGCM/6Iai8ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDKRmf15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDKRmf15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F16C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751506793;
	bh=sJP4woGUuxd4q+vW86iINNE3/WwwqjV+F1JfoIAxrcg=;
	h=To:Subject:From:Date:From;
	b=NDKRmf15IYIvzB90/l8e4JcS1HJTnf/Gq55A4NxYK9tH1xYxNYWEePp+Xtjs+EVRA
	 e9h51916dV7PERthJFwf1Ay0KBo97rGXgOfadC7neZVSSt7gsxUDwWhonZzhLYFoSB
	 WgzGD0qXizLm8nKhvpmUv26BmBii9M+4UbFG/MkPWkXI7Vhn8t6s6dXI4WMrMgNdI2
	 qpiWlFiXreeyiJ0SZZedVkQqUuj0iMk+nOunm3f0Qp8JGbwKYuLVinCKX14tNOPphu
	 oRq6BzLoKFtD5uZVYBvtBOA4UWO6bAkovRYQQf9bFqRaI7KueSRLBFyIEtGjyD5zQb
	 DR277GCc0W3iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9927AC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150679361.29431.6956023705243751131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51d3ad9e3e6d24c433cb3dbc06d8e5827f18043d10852e4d0808acd14e9a590
Date: Thu, 03 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751506793
