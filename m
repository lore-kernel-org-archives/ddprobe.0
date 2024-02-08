Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07589762EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707397097; cv=none; b=BSb+oFaT1ovf6HBJ6N/VnchrsOp8aHtxPlFCwOc8+TH1J5ay78AVdOcLJsRb+Q6kY9ep/0FIfkJMwNsnWjyZpdPYXuXjZu8wCFMRHkK94E+QL1X1AtjsLeTqguzZYORDUS550uZVcAk+Td3jGzcEz7i4MyWmvQyG9TPp8YTyqBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707397097; c=relaxed/simple;
	bh=HEvOXKhlTAfB+CQygzxfqlU+iYU+h0tJt7ZoLO1kH2I=;
	h=To:Subject:From:Message-Id:Date; b=SAk1PxLsN8UeTkVV7PMvTjg+1GVY16voHfWfUH5tUrR20SK6ue9jQKogx32AOMMJYKwYgOa2lPz4RM6PUU0hs97BESrRbmAbsG7KgKzpfqykaSqcGPWPcNProENgOheZ4l5qG49ye6waYsdePz5V/hKhqepuNx9rpn2jaqoatyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZ38CBBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZ38CBBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F14FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707397096;
	bh=HEvOXKhlTAfB+CQygzxfqlU+iYU+h0tJt7ZoLO1kH2I=;
	h=To:Subject:From:Date:From;
	b=sZ38CBBQBZ2ndByNFaJdH/9ZWeOxQ+6KNXJXmYFxBpanJhfOZ9GXsVjFrqA9S5Gh7
	 EbTys7u8sufvcEBD9slvb8diSU8ue05GP+11BK6Sxk45CdTDZxRX+6SGgbj6rUJnko
	 Fc4pS/0xVCkGO1k50v8EoFB4UKofpfWgYet7y7RHssezxZcJBPKdTC3FJHcXFwx7d5
	 XeQGFcqCui5c1KjDQzwlSFR4njAWBMC4wKAibxd7VBzMqFPWqNkMlLN9YbYmoncQWM
	 wwRZymwn9Xmyl6Q2WHFDGMVYmAPg68Ehtir8XvMLmjChrTVOI7BjDBmrON06kwt56R
	 EhdXVAcDSJviQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6267DC48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170739709639.9490.13493356787067941582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ede80e4c37116ff234fabb96f6babaeb262a1f20c7d0559d20797939e900fd
Date: Thu, 08 Feb 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707397096
