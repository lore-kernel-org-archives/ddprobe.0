Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA88246797
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749578394; cv=none; b=jyGvKqRWlRdytmz1UJx7if5ExQZiCYuPn/KC6LVoPTT88hCK/dAKpoNghFmJtBYpUqsM/oLWRrmb2+f15zt9DrXD9ZLk5QPJv9TRh34d1GKRLII+acAr9Q98TL+3zgJ3q6b5TeWQVJC4JseUt950+YTdfZ/ajHWzFs/5NGISpDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749578394; c=relaxed/simple;
	bh=m0ZRQDQqJg5XO52obQwDOt729j4eTlLG9iJhTAN4+14=;
	h=To:Subject:From:Message-Id:Date; b=C8A3LXuhN8wv8K4zCSIYPeqz8cY83ChwQk6qkwyUx01EYFhDvMdOrkCwwlcxEHUeWfIa0pv6ZkZhAOo76XizaFW3mLGz2pznjz3sYHgred00IiDdqVGa/c4V7Gkdf5Cw7egEMLssxvqftHUt+NZECrkoe/ZQsnhJiNudxJ2jRmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLC/qSXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLC/qSXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C5C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749578393;
	bh=m0ZRQDQqJg5XO52obQwDOt729j4eTlLG9iJhTAN4+14=;
	h=To:Subject:From:Date:From;
	b=dLC/qSXkxw+Fq6vZ/YZfv/Hz4sdqELobxyK7MXC7vR0/S1Q8t8qQXoDA8KCOSQo2g
	 v7Czzur64ObFpMZ8XHzfZ2VvKTVmCDZQ9lL2IGMh4XXuh7K9R2VOFGvVceShVxjMSd
	 GGrGWZvhj8Sy9PJWtesOjCaDzEnkMEqv/D3C4isE5Nod8JVWtWHYZ6b77lv3eSkdXK
	 YH5vJIBEmNx0F9/MXST5R8N28BWdwH3al6Qgix/9Srx7QK9dlMTI6U9bKOT8FzghVf
	 1eoc4+qvHbai6r79TOx9iKG8oVwQSuNPNAw8IydUIQBGz8VeCeL85F52jZyY1FwlD0
	 rJnooKTfG9sig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D42C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957839358.21582.6641141797374081219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5120b9ecc4e8336fc1d34d7e380eb2c4ba14898b1d0cc6a65fce2b6557cddab0
Date: Tue, 10 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749578393
