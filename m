Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D87323C4FA
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764006114; cv=none; b=gUvp0aI4P9oDj4ynQ1I4uJzSUeLdM8dkj3ilbwlJyoI0mmVn2GEYQUom0u7OiVIu8Rz7PR1MiTHgOgylTyOzIs623/HHqlq+nR/nlf5IHNXwbL4uSgHmlgNPm/P0aBWiJ/oBr7hQTT/YO9eP0w2citl/c36uB72EB7Dfo1tAwck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764006114; c=relaxed/simple;
	bh=CQiEzcuzED3WoBQfz6F5qo8bN/hp0Awhu8amUXwzNPE=;
	h=To:Subject:From:Message-Id:Date; b=l222hZ6DEB2W+0JlQSZrtIr3vvRQ3H3uDUi7z6cGT2IKn2087jAd/npOc03LpIo062HlTfVCJSRy94XZ5ZZXMnW3egl3/9kWb2AAqNc42gPmLytNM3EfJ6xxktJOdA/bfaY7n6hi9DnD8uLAMayryx2cwuEbBCVmDOUHJu62Y94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6LvtK+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6LvtK+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFB7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764006113;
	bh=CQiEzcuzED3WoBQfz6F5qo8bN/hp0Awhu8amUXwzNPE=;
	h=To:Subject:From:Date:From;
	b=t6LvtK+9+M8/o4leOMHwPLi/rfEUXLC094gGu2CU+8/4YVvrjYI7ppD/0553N2Qj2
	 VHV43NGLWZjBoAK8aZJX80xgUYBvdFHC2JuL1qhwTH+6OMfRqLCzupLMK9fYxShqLd
	 RMFY7C/lfJRit4RoqXgejFHgkR7dg4NcPtNc5jfDZjwL252d2Lc7Ecsg+Cl/xmnJbu
	 BmKdtb/y+Md1Wl2DxmKi1TtLjJ6E6WZifR2pZmv2KYTAIa2Tv+VyghOssRlfFEoOQs
	 /FgNvQYFf1tW3tEPXNp8nW54zyh1ZxbRw7cafBRWwYul8rRcjpNy9SJtq/Z58GCSN5
	 5iyT1oNjTPdmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F7CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400611358.28528.4802996105199228341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5a704c450f68d1be244469d65f4b4571234005946023e068060ba229441a43
Date: Mon, 24 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764006113
