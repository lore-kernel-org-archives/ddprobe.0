Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06731D530
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712336297; cv=none; b=JCFuH4CGOttmxGX4hEQ5I43edJVH6hfXqp0FzW/bfDYwZaqmrz0voffFatbIdzdfZiMZQhOaaHZnRjJJYOnRloN2nGQCiBiOzsPPOM90DaczWEp4dEBrxQ6viF0G6/VQRa0jXnqM1CmQJPBqT0RZH+gJMF/6JTkjP91ytpc43Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712336297; c=relaxed/simple;
	bh=QIGOVpOx5H9hZXk+pkjSPgWiAbI6Lxo6sTPOhsHNyBI=;
	h=To:Subject:From:Message-Id:Date; b=C+YXQHEDol9uFQSWB7v6qWvghUnB0zKYs8Kf6cmmd5449hgwVx11VEsHfT0MZMra0bzJyF/qPwbM7zPPqyOL+rSpKjy9c3AV3jSfVhGmEpfXSfQm7PafzvLN6TB3ncEq2Y67NPmd5JKX9KR2seagqwKX1zSS1aXnLtPm68MNBng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiYBTwNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiYBTwNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E32C433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712336296;
	bh=QIGOVpOx5H9hZXk+pkjSPgWiAbI6Lxo6sTPOhsHNyBI=;
	h=To:Subject:From:Date:From;
	b=TiYBTwNTMeHq39tryjMKj4orQuJyhMeIf7pwnovFYtrSuGt9MYallurPOOCpKgYMO
	 yXAylSoUpN5xhOaomvPWhSQVvoaA52D50XkvpD/1amjAL76GvWGMKEC7Rb4Tfm654+
	 u9IXb9iVy86vg29gIHy/j6M01zzKB4OpJfWrFCP1wT92B9XtMJKqz0GJsUIkBrrXtB
	 ww2MvYMeZjsS03oDPM0smAVsKwuRjntHHad+8HUmXuqjH5y4sp/i46fnSeUHr/XJan
	 b1HMvBaJJDfgEY/Efdegk7cmg4SB6mzyT4wPxbiZeTpYQNSk/oGqSmVCwCw46ffhcg
	 eumsYgkIjTdGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF2EC67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171233629636.8639.2924152915001446612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253781768b9f3fb1e85675fc5df4404a726421c30b85cfbfae20d3993a134e74
Date: Fri, 05 Apr 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712336296
