Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0726B26ED25
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773294294; cv=none; b=ZeRHiXzA7P47dDNtJcScLhjE8802fLO8+MtFM1sW+887dpJPQw0ONJrsX7zens7ZXJ8FpyzDnBnNaPLYVZjQhJmo21yXSu3K16OFJYx9s/tEQBiCZaek9D/Nwjz8Vie3cPpWg/pRaRUKlRfHiatJrcNyQH4ob1Gh2imdvgJHCoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773294294; c=relaxed/simple;
	bh=2LB5+j8KAFSQYsd10wfzoPis7Nr9wNDpaT6T8zxKHPA=;
	h=To:Subject:From:Message-Id:Date; b=RP5BCIHe4YYRiITO2PpARl0FqrErR3gh9ffCNWF1b8a4r6le0QrDfzup0GJrYznM1Nx8usqcC7q4Zb0Nla2K082nT2zjWFooOxcKDP3nM+P8QpbMhhEiFUD75WxKndxRYkks6aJrK6QY/ozIvwkXimT+AK9qi6zOXketH7cQT34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtde+zjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtde+zjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F909C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773294293;
	bh=2LB5+j8KAFSQYsd10wfzoPis7Nr9wNDpaT6T8zxKHPA=;
	h=To:Subject:From:Date:From;
	b=qtde+zjyOhYckIbCvO0MEadme21axBeSzjCUHpzKUC6b2S5hJB7hjztnoC8/xo8Ao
	 YRqSAgimGQ80iJ4ptxiydJQrCs+5kLqXwsJMJR0Jqi+Hbe1koqAHLTQ95KMYGNqUsU
	 sWp0jyyqQqKnVf0Qy9DgteHjOCx/U0tPQ2pk/B9uysnT1ty5SwWd+lGk0x4t2N2Bem
	 UUW0QnYUJWZkwD9EHjV0duc/6DGSWN49gGUwdxVvRBqR3f4iZgNGyxP6KmPXEBU+CC
	 OAsercA2vi3weBXk7GMTfLD/aDJg1F1OxiidZXqrnS/kG1seu/CAFcYQ62CSBkc/dy
	 0/NvJ09nueXKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F030FED2D3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329429357.11101.13376523772682706212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb514fa6f9747fe963925624a9a6733d771a5be7be8c36ddcb99496b14847eb0
Date: Thu, 12 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773294293
