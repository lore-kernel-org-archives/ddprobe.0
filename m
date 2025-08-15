Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300822FD7CB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755253794; cv=none; b=VeeLMZ/E/fHXC044/R4UnSL/fcp0XzjYe4/Fw210lgWlgDavUIL5rXQiHDWVFaepI3ttLoHgznLzR+zLlfh3OS2YYQH+H/PBXBNeozi+aUb/nlgQz2kiycUJw4pLjheQDexM0pO6M7jdLfAXGj2Zimt7DapBV+apUlFcXz9jBy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755253794; c=relaxed/simple;
	bh=eZaqdqc8+amGGyyxjEBcesMri3JAVaPt/2qp6oVQcOE=;
	h=To:Subject:From:Message-Id:Date; b=m93UB/7WX3nXI9Ev+YEVIUriGuOwLLL5eixL2zgo9bt5Ms2irPi9AUIDRihDdjGq18VHwQ/l/ycyBciwvT/zj520vZfrrM51dk94udUWSZHRzN+4YMe6+kHxucCCa8IeFefeVU3rFnG+surNpFN5HloMw2fOtMeqjpZpMi4icYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/X2bIVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/X2bIVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1767C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755253793;
	bh=eZaqdqc8+amGGyyxjEBcesMri3JAVaPt/2qp6oVQcOE=;
	h=To:Subject:From:Date:From;
	b=u/X2bIVgA5u3JWfFPkzqyfKnbc9cfv9LHGcLpoUkGzYQVpkP2XoYLXwZd4huKrlXM
	 yjYiWLb7pFaFA1l6BTjfQmwWK9MZdSCFIbA3GkV1i2Hzrdg2GCVqcoXW8I31l50IzX
	 LMcsKRwOqRTHAH5Vv0NtACQ3dFN1gP8YhdUuEiLqN0j0VtSAxbP0punizJTpK92Y01
	 eN6V2DaAPycnUWBrU63WWE/0FO0ioIV9lvqubnEveVzB+VdM8QZjxuOogjXB7ef3NJ
	 EHFyGqu/JUCuQ3EOrQayRz0gb2CB1y/OgCHbUG+9ZKGxsGIR7ao9DipScFONj2oHUw
	 ptsHsNIP1MjyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F8CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525379359.12845.17742700666497404252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b04e25238a54db28d44ca36c68c4ca7785b85edc85a2f9cc179d50bf942072f
Date: Fri, 15 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755253793
