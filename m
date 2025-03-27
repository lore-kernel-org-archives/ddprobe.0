Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E39224D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743037193; cv=none; b=DFUv6EhH+NsednpaFDar8Zd9Ei0qS+VT/rS1tLhDP16gJaQk8VyydKD07Y97Wn4uBlK1fBVoZ74HGrsY/7CTbQcdcGFipRtKTI47Tt5PDTLLJxxHxIpQwzZlGX+FY07cqN81R4HptzKqA7G3Za1Ccig8ic+kKpnj6uMbz3OiixI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743037193; c=relaxed/simple;
	bh=FAn1G4IQ65oFssbUAVK2x4Y1se/xEpQj9TkthCqI2+I=;
	h=To:Subject:From:Message-Id:Date; b=IHeL8nJLb2qsALaE4H/1hFhnzmAOU54CRl/QcnhLXI4TbaI10ZQhU5LcJ7S7l4qIUPtRafoiPu0dDbmoPl8IYVFwEjOucYY04ktvc84wKKlQ8D/MKOIw/i0+AxFBkfhTaT777ldKdzULxPCmZyXRw0CsG+lfr2loPMvYZjRKS9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khMk/DrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khMk/DrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B39C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743037193;
	bh=FAn1G4IQ65oFssbUAVK2x4Y1se/xEpQj9TkthCqI2+I=;
	h=To:Subject:From:Date:From;
	b=khMk/DrC182kURJYhuZqzELngFG7k/zhpeJqgX4y/vloBoKAybqIVmZCu+rdu9leV
	 xctxBmLAC1vG9efDPpUC066Ns6Si1lAA0RUPso7f7nfyXvcENLWpt9zHfyImV+X02q
	 cpJfUNUjeZh7pP2lqNvgaFiRuSMezM9cj48KGgQpNvd4f2ounv1lnb7NBaWEFEpdgT
	 FMJd4Wv2E94fV2NE3aWdpjcdgRA4fXo8C+PPSGDOf6bEnSVRTwXuLytlVM3iizMr72
	 locuihVp4DTJp4TEjbtzcLeB3OddfJO8fTZyW2ixXJmg/A5keHMzJdUb/c112FmdWY
	 CZxnUm0bfNvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99916C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303719359.11141.4167972674666041950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66bcbd27d3d44fdd471c0084047472e41742740479db85f5af580df26913299
Date: Thu, 27 Mar 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743037193
