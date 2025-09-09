Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD6E22258C
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757443194; cv=none; b=j46g7jh5fTNpCrPLJuotVhWUzQsF3Dkep0C4UsqPXKWz/6lOKENjEEEPYiFXO/EC6QcOExSDffI8jyYE9nD/HCr/t4FY+jquCH2coO5TDVA8nYZqTlJY4UbfeHpJ9/RFsF/nWyO8biWQ2PzZFQhtp1SCNf7M7WV/uxoQQM6dqmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757443194; c=relaxed/simple;
	bh=5tGeHpHxwUi9XGP86imnkrC4ejcspeTvLZviGuGujqQ=;
	h=To:Subject:From:Message-Id:Date; b=DWIvl4d3xyJUYg+MWIXcner2134C8XfWX+tcsbz0sSaD5Ww5UtqaTU5HJ6lW8kNWiDURkF0S6D8h89FOuaj8mJfX06e7QeEwcz7+Z/1o7iBcWcZtOJ3pNUU6Cpi8pnRXHQiusZZTxMWHbmSpffvKkylhYFZWXYs/kFbHPWVXvLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEYkq2Q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEYkq2Q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5980C4CEFA
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757443193;
	bh=5tGeHpHxwUi9XGP86imnkrC4ejcspeTvLZviGuGujqQ=;
	h=To:Subject:From:Date:From;
	b=iEYkq2Q4nAi6pTEM+vuShE6LguX9VL5pdbOqPegKEydGlmRsh+AYErMUO95hF+7O5
	 sNpozPvSIGppf5o0iPMUeSgsEQFIlpCTwg89nI6UO+IN2ZiSu7N235/M1CG8uZQxbX
	 X/9VXa/sk+7EAUZYmsUZ6c8SYq/DYI/BgyiOR6Fl43rj2qDLkoml2kWAz3XDIEMMFU
	 9H8OFXRU8R+WjUB3+JlJTt+/vnpmko+XIpPZwvdzZcSEpZYdCmqr4SMiZvb76oEGPg
	 JNoeKDmwZV1+WYX63YMR0FZFMXfST5lwZryvaH0nhQK0nLK6zs+WJBAVEvBmn7XdBB
	 eLoaSExeDz27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C36CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744319365.31712.6866905584427374407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c9c53f45f82117d1d25d7cf0c2107914304f74aee3203e5f3990ee80da63e6
Date: Tue, 09 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757443193
