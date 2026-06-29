Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0053FC5A8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782734314; cv=none; b=Qi2Xg4InJI203MNFfsrVWaIwb0bYG+QjB+mS/EnHQxT+k9Hk2KfmuSrEjpJRGFEW4Aho0q41vWh8Ky6YKSWkLEy40OK7KYDJ7T/wqpkeppgfu+k7FYTbuY1ncfbSE2o7so/uKIPoQpu0dqqYjEvcTyo9mDv25pjfFzmSXTYvF3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782734314; c=relaxed/simple;
	bh=iRIyLnQwUyWV/gCV0Chv27iIleDZ1h81IQxi1MnIq+c=;
	h=To:Subject:From:Message-Id:Date; b=hgi6ZhM/wxlXvb43lPMmIIH6ls/kcNBCCXiX/ToCEqo+qEm8+Di1HXMr+DcNg9Ri3g11WYO8ul7cF8UWC468ZxMo9VsIa1j5VaTSDfaJF9kLEBwMdmJWsyPGRdYsFWgeN+AHp74xW0p4bO6ODCyTthaOZDCbueSGxkeZnBPM0cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPPO2upn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPPO2upn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C8FC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782734313;
	bh=iRIyLnQwUyWV/gCV0Chv27iIleDZ1h81IQxi1MnIq+c=;
	h=To:Subject:From:Date:From;
	b=gPPO2upnznI+/7MAqdEJgSH8/v2Xm9+S8gwgPeDbKkEmIBvLTIKtETLnbyHtXqAu2
	 S0HwUfXQCU0j33+hchQA1IB3YU/UhKlROVHBNX1iHGXz/Dcg9G31hwCS2ZTyCPLlu2
	 6RgfT5Yr/0eC/eO+OnAymVXOn8IuLYGt4nL/ryRiubmfphdrYkZBXZhfD3yqeJXeEa
	 NZKKuqp9BfBkv41dsL9Bmd0DsHxZdBwG8PPUQTsEIMmGmw44P+sCAD5ZTC0KDAa3xv
	 tXkfVqSOWGByQJ0qONgo81jkbvoSioY/D4MNIBT8bUKQYgbekjCY0ZQPNM/SIX7vyt
	 Rj7ZyfsqKffhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB78C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273431369.30863.12174018953540785889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a82e34f342e4c7b99c169a8371087822c3c6548a866642427a63e8d4dda148
Date: Mon, 29 Jun 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782734313
