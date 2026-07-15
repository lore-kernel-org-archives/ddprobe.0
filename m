Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EFA2F8EA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784103514; cv=none; b=XWrGueqWmLpuXTOxAqK/2pRELbcYepQ5PFwCGP4NV2JQTyxIxgSy+NYlTsVcJn3MbesCakDTTdlmHPrTTdIMRt6Y0S1Fc4YXJtIGEoZjBIbFbbBEUSBErKajefOVJFfFnnHWM/dVKZSsXfuOonE9kjtGuyuUIoCDG+AzGGMquUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784103514; c=relaxed/simple;
	bh=IiIuULEKv9/YPb1UkTmyTe5B7XHbO+LsQK2RALBvWHQ=;
	h=To:Subject:From:Message-Id:Date; b=rh9SOxw5XvWCwgaNdD6xWjapcNsgPBIQ5jWy4Ta5ghx2kBbme1xYNhIW1VVXyM+zy66uNIZeFwXvReClk6pbxFGLA1WBx/OFWa4UN+rRAYPR0NeEvICX05KZa0lGSm1BJ+F39yeHYBLc7PUP/LEmV5mMMOjZBnb9VcgEnDpFWMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJwhYndL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJwhYndL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99B6C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784103513;
	bh=IiIuULEKv9/YPb1UkTmyTe5B7XHbO+LsQK2RALBvWHQ=;
	h=To:Subject:From:Date:From;
	b=SJwhYndLLZ4LyFPHKXIiuOgGpMEdEXh9ksbCXwkF/8DeporQDoJX0NA1W/IR+q/Jy
	 seaIM0rSdRhLJ+nyEcIQjhP4/pwarGHYIH3fbxr7vqS5e+Lmkcm1TxxZW8SLXqCXwE
	 rMoqV2ZNAE5GxHKoudsrxb+jsed4zvmZx23baaYsdP7D3y9KRjErA0HrFcciNFwE5M
	 whudzhPt2S3TVNxLEM8Tou4x3iQSdEKCN4ngsq6z+49TjBBWDRtd2J2o0u3ZKHpzQx
	 A3y1TcgORUOBEqP/C19ZsCRZZ1/j0/uy1oH/aSUh8afdFrNzEVIHkYIqBmYnm/ZImJ
	 5/FQewl+N+Btg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD473C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410351369.5509.10682016725490428983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391bde001c10934169151231379824f540f873bbeef2cc98723d51b405f0e44e
Date: Wed, 15 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784103513
