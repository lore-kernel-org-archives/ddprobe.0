Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235752F5A32
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767780234; cv=none; b=O+uyKB4trqRiL0WPY0ToPkf0A2+3VhGMvH/S8yLgQUOsr2x34EOpbnePLwnbM67fIlxv/N9ihOTed1mg61m94/rfhVlGGQEyGngVvQTo55XEaH8Qe+je2cIAep9mSsON9nvL+I1yFTKyopEgPITPOCRCd94lrg1lyync7FBrvAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767780234; c=relaxed/simple;
	bh=eGjY/TZf9C/TP200IHlGsVv2cbZI1X9raJNnJx6D0PE=;
	h=To:Subject:From:Message-Id:Date; b=LrzAx+5Odyzff6NgjChKpMCcbPT/ND4SaJtzN0cRONLyfBYeFYsFzoyxTmkGPGewVm/q3MeVkrFyDur8oMTqRF7E8Mmq6MF9bBobMe+98jcIqJVtzf0aPvCcuc5FBRwaTa37TOP8WtzDkWuhXJRKtjdPbdh06QQmhSkIFeS/bsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q60NiIXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q60NiIXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB66C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767780233;
	bh=eGjY/TZf9C/TP200IHlGsVv2cbZI1X9raJNnJx6D0PE=;
	h=To:Subject:From:Date:From;
	b=Q60NiIXzWI/0UfVPf0nNTk6EsziJBijBvn6ejAYn/hU6wAxHgI0X7pkclpmPlE6yS
	 /16SWA0ZPjf5QK4zdrmh6rOmk6bTuup1L3H7LAWjDhkqN9duFjTO05ZkdemWMX1iCM
	 hiHfzfbmSMrixiAa5zrIBmP856VuBGCJyc5mbs++DXQv9xsFAXcuxUJKkcA+cOXrxq
	 TRn4i4gJzKkHtzHCN5Xs0Y5MoDAQ3Up1NdJkzNyxep2lHnKEVMzp4gV37p4CG95Qg8
	 l4Fe/VnkU52fj/JI+miVjub6GTGF++t2d++zTKyWkfOBjOgK3S13YqiWyFdyBRcxfd
	 2IjnqWKAOX47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE84CD5828
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778023358.28340.15524553446561830758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0931de554ef705e7c15ae44ba54e5ba6f7a0de6c8bb8427f05ceee0ff079fcb4
Date: Wed, 07 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767780233
