Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C9931D371
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768512234; cv=none; b=RJY1xPPbsvcns2av/xlTHWhKcj+8rNyGWirXKE30xXTRHpKN43F0TMNqu9S6aJlw0Rpg4U1o1ecdtNGQoDYEruR9oE+FjJA41ktsK8AKTazWgAI8XPUOpUUg2ep1J57Hb2moiIz1O8pVISANv5hXKCmFBtrHWyFd+9fUu76Bsbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768512234; c=relaxed/simple;
	bh=XnaeFJBYfmCw0qyJJkXtQdmDQE1EIadYL/My95QqcgA=;
	h=To:Subject:From:Message-Id:Date; b=p3GPW1MsK6D10FK1oGmYsNsqUk8gAwa1mM1NvAaCONwiksioNPg/oW/10k9tFWFGGemz9fK2iVIhGvSeiNqkDghc98tScSgg0TReGL0uhmHG/IodRF4N884/KQabD2F0kaQkznSRZrJeZAGVxHW7/VnuKd8OXOJnaiHoQheSxlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s82Z6jl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s82Z6jl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1038C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768512233;
	bh=XnaeFJBYfmCw0qyJJkXtQdmDQE1EIadYL/My95QqcgA=;
	h=To:Subject:From:Date:From;
	b=s82Z6jl/QWs8CCfpbpkGRow0puoC/z6swWZ9URSzApVvishCIgZnglamWgdgtAq4U
	 zuRlf26BDzxvBgyZVj8SoDdKVzR69j6xbuGJa5CcnSfPylHhjRNmlfcbhaym9fROD8
	 LbO5+rBmqUbH6lRhYFTI5CRYtRyil8I5UK5ACflCLEFQpC2eD+Vh00wtxoZLanXvD2
	 bLXmM4M3Iy1XrgoBvi4WN0cr54555Doa6R6/L9MplJGBrA53M4j1lb3qYARX1LoIyb
	 MkLGOjLayIPCHuP7ermhgTkaNpboSREwCX0i3lh94EnHY/Xu3eAjT4qnhEXmpCcXjr
	 81HqHlta/uMRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F238D46629
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851223357.25298.18435179652407867653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b33be04bbd76ce7ab60edc5a37be6cc053be647403a29e1048baa82ae04826
Date: Thu, 15 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768512233
