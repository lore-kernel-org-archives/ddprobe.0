Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4876013C9DC
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718174903; cv=none; b=MzKLU9HxoUZQ/HGm/kzlg6p8H7RNKfpnzVSAXs2DFI9yh3dwDuKz3n8pmy+zbAuIcW/AcX5CmDlZCFYx1wIlCcTmZhdcdLxHFlEB2o/aPIkwSaTjCCJDj88QF8zPlQstFolswzLrRvwFNf1Sj5rHvttATEV6vYffMgg4PAjjZiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718174903; c=relaxed/simple;
	bh=VI6RxuMc+vQ3GqxdmP9QYNmM+zFgCN/2BItrg77gnYs=;
	h=To:Subject:From:Message-Id:Date; b=CBe1XmFcatDUaqcI1LBxB8reOezbMfeSTs+b99HJvlBSI5tXPuvX398WFEzpc/jcJOMmJJ0OXFMuF76tdcGXWUwEjIcPl2rMGDsV5K/z2LMc4aJmFBs/xx5mRuPOdfLGTm5susUnz64l5f2/uR/0POyM5xFudW+HM87Cd0zaQhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L59G5f+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L59G5f+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0256C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718174902;
	bh=VI6RxuMc+vQ3GqxdmP9QYNmM+zFgCN/2BItrg77gnYs=;
	h=To:Subject:From:Date:From;
	b=L59G5f+SqR/ynwL7OvTiD8ZHSNacF4clD6quutARn7WDK6eW+Hrvf/RvN0EmvDpJ6
	 VGTp1ssKrZ7BjhYbrFaXXVA/t0O4WyVZJqvtLJP0iSJeK2TzluP235Asx9qYYmn9gk
	 QT3v0ayreRHa53BlsUMIx1WegOfEGq1KJd9gpSIDX0YCNCH/KBpOEf3pNp17L5glO0
	 mGH/wwwm+/RTVSTiaJ80jZ7wieJ9LCbKJC0Usaby0qKUv/ko0qpoDK+td61FbssL+B
	 nXHjcYf8GYvBZNy9AkYstUXQxdzPlCilGDvYrAlJl3ubRAo0s1zXdleih2NAE/iBcd
	 xcHUnthH3EAGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AF5C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 06:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817490280.22202.4179482874411554313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4229bf7356a44e45cdf17cd4145555298c2a9d9842dd0e2b43067bd489c4c589
Date: Wed, 12 Jun 2024 06:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718174902
