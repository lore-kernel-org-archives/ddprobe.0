Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EBF1DE8B8
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732290954; cv=none; b=QM4Gi/SWrG1ICF9B3UPl65NjNypmKzCRc9Nfr2a3XAF8mXPgs8AVdZ0a0xtF2r9pi82jtoCtxAXL3pLNkTmKzYchzYLAiVlopsOADZbf9Bq/iryXAg5g1I3fxxLUpjXHkJvH6DKACbDzO3u7SHKLASVP/L+pYhlT2lFz8Yu+DH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732290954; c=relaxed/simple;
	bh=tsEMSff+l8j+IK4qQsWBIy5uLIVOQQLKw/QaI7FgzB4=;
	h=To:Subject:From:Message-Id:Date; b=b/twYgKDsVnYPAxFkBeo9Zb4HKcO7DxzX0AvywtJjQ0+9qvYddgdWraw2L7YEpj2gdAjtZQqUIWOYbl0g2U/TdVltKrJqe710nzDe1cUg+pl0cXNSNX9FeH3jQ596e2pEiE6+ZhMgiMgIYoYv/tUy3ijAxd/XYPBsd5PdMahxmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6wKujt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6wKujt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00B3C4CED9
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732290953;
	bh=tsEMSff+l8j+IK4qQsWBIy5uLIVOQQLKw/QaI7FgzB4=;
	h=To:Subject:From:Date:From;
	b=R6wKujt1X8upbC274fWlncCJkdxjYwCRIVCX6d4KDGMmSd6hJ0D47l/rRbJ9Le86t
	 ChjbPBlHCr3/7jTXtOpTk5CV//HMGsETJ0+RwpKyBSX0wUiDT1TZjPV+naMLo7sxV7
	 xX+m9b3nshRYopvbiSBEBi/okcYhqXe6dHn6HSyQE97Bnk2yu6hZf8jIceqBuW0SSt
	 3l70rpx9LhbForuIvOp7kO2rY4tfNOQLPf1egx++n13e6MrBEaY1wF5FsqJURyB1cE
	 9uZmMJQV+iXTr6KSHyESozN71UYX85xy3H5G+uicDZ5YfS5UamUecv5LLDB52ZXWd6
	 oI37+idTtud0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DEE69173
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229095366.16085.11863109157877640776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd251c2ee3735d49a4422e46ba274e20b47027d605bb51c64365bebe19b1dd1
Date: Fri, 22 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732290953
