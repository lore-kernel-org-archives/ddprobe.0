Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD85A476CF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786107035; cv=none; b=TNKYC0O/A7GAf5oO2dvdFw9G06aCQc18UV7IC3iN4JGrIzeP+HmlEuLDlg226mVpllMw1YXGrDtgOBckWzrk5aTmg1XX4tegumnG+9UQ4pzL8Xcxoud2hNFrP+w9HyQSpMdSJLcUi/v6CtBmxL9GL1i1905MQ1tayHeg80SdoSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786107035; c=relaxed/simple;
	bh=Ur4nWLqALJDv2XwOajHoWBrBmorNqtEFIolleL7wuAo=;
	h=To:Subject:From:Message-Id:Date; b=u9wINPeLgFANf3CTuDLY++g14YTkhLlEQqJB+Cyv6mknDtmUqPaPWLQ4FJx8sQGDARTpHDqgKSSPhdZmHI3/87vUt7LOUe6BD3WfA6t3mjNK+R3e2dntsQKggPNrdxIy4JBfhMBAaIG7y+H/SMaZyBBOOzWtKM/kaOkZK7cF6uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eav7Y02B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eav7Y02B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78EAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786107033;
	bh=Ur4nWLqALJDv2XwOajHoWBrBmorNqtEFIolleL7wuAo=;
	h=To:Subject:From:Date:From;
	b=eav7Y02BiL00saZfhi37NeCB8bJYnWsCJRTJOifZj3wWdISfRzHHXkW0uK/XFwpgQ
	 Yalkv+XGP+SvOT6a7/zkUwUUhPK6zrfHB4zdpL2TTU1tJXdj5p+Z0+zj+OEYUpTaHt
	 Ao/aOlVy/C6Rr+f5LBnjr7w9gXOii8aP/+bJHf6fpRrFhAiP6x4xVIP10ZUCNkdLwv
	 CqkcHse7pneB06GS1cdiu4R3+Bnwt+lqD/vprzrbsaYGC7mBiw07MBrrEZAWM1Dl2H
	 222CmAHS4CNq9eFcZctPs+JpqJKxT1rp0/6+3X+Z5E0paF2Q1yTX2brxmz5ezNhTB/
	 G92kaoPjizPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC171C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610703369.8765.11146595763592425984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0b3134f813037e67a832f6fd6694b0ea7a8f042c49d74e551b5a7ece5f8dc4
Date: Fri, 07 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786107033
