Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264DA38A738
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775492134; cv=none; b=qHERe0dHfcaoOKL+WmBmKXuINj3XMvbdX569R1MwrPHk9trw8Y+X4N6kL5aATv1aXk/WpPju0eD0TWYDA9YnLO+HjdSSO24a5J1cHXI/EzjtgqNsK9KhAXD6L0hqU1EseekzKSvg/yGZmSLrb8o3QzHLy3OYRpkt5zH5l5t5k6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775492134; c=relaxed/simple;
	bh=bwzXc0PtFl2kc1z465u0oOSyviSguBe+BMHiCTlYlmk=;
	h=To:Subject:From:Message-Id:Date; b=NJUNOhB5Crj0u49GoOWfZz+LHVI7N/LZkg9BhA4UV+YajmoejSEd2yeihveBDCAwrKwG7ziC1e2SgYdmQuroRllrQAiLS5SVNDkXkcgGiZWiPt9/q9KRxp7Hu8U2I7VXEhK7TaaoSX/vDoirCqToPsI4aoavW42JNeNdvFn55m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/czZCM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/czZCM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9974C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775492133;
	bh=bwzXc0PtFl2kc1z465u0oOSyviSguBe+BMHiCTlYlmk=;
	h=To:Subject:From:Date:From;
	b=n/czZCM+9oeS3uM0/MoRklFcGb/tnZzt67kKck5RT7ycejWDrY0G5Ll3HuvyGO6fY
	 P6JHHd/3+VxIGVCEuypmzCRgMLsSjNXXfhOSujm9Rjmn4F/Nus8Qil4i4ktJSlx3LJ
	 zqHkMCx+3bt+hyonfme5st9d6OaScDO1Db7G80Rzc6XRG/x4HUDqL/PuYnhD4X7ye7
	 pnCHguqXeh5Fm2nv6wSC37SL6smnDQe/Uqy/SrSA29QnMuEwB87lcnwK0qbSHQAwcX
	 1/wzjrfLPtsCOepjHrADsR8XHkVzs419r1tBcVJorpeFa8q/G3EwP+/v3+70oxbopB
	 VtR77rOLXbzQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA30AF46C53
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549213368.31462.14470285934150941001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9074467ac7f3c17436cf1fd7a45fcf46a0f4f8b48f2971ed03c2f901d707e6
Date: Mon, 06 Apr 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775492133
