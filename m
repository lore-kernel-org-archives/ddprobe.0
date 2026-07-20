Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585313A782B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784531314; cv=none; b=RwMjY3rJ90fvHvGVwISajcRryvud5aXFLJOXQY2C+5Nf77m6k30qsY0TrNFDGh0HLxGzpH+KO+1WJ1ZfmZH/eU1k9y9T+YX3WB/aJJml1Ylw/2ClUE6J0oiCtm0o9cVnU3lwalEmEjcwGzU++fQKXYjUJ81/9IMuXJtrivDKh9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784531314; c=relaxed/simple;
	bh=ERDnmU1YlrNr39fEdlBVyMkNXnoaIkzJ8VdMmLIyV04=;
	h=To:Subject:From:Message-Id:Date; b=BSA++adQco1Lrjk2RwM3vPNmSHXWPcrJXF8kbB8q6z7VG3ouR7gfepaH6bRHolo7ayhD405hZsRyT+AiT4h8YXtyHfbYMJh3BohZelhi/EmGdqURF1zkfUPjFjDrLhwoWvTofmt8tbOXCPSD2WuSnFVMIHOEoAWYhmpCswSCZn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSQ4T7y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSQ4T7y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE59C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784531313;
	bh=ERDnmU1YlrNr39fEdlBVyMkNXnoaIkzJ8VdMmLIyV04=;
	h=To:Subject:From:Date:From;
	b=BSQ4T7y/MniC6U8VQ9xjt0cYkMqkawdcT2a1Smcs20G6T+bXoyxaF6Av3REGLewel
	 kPRnPX2Ul4gLvx1HR9YrQauZTdEwuzmy4Z6fkaA6WMIN6cMIyhPeV3Bu4KJB2xX8gm
	 v6eIkIbx3wlbtD+Y/USiOoMKb9wM29CET78IONkZ5LcZ2WQitwF4t8eCcji42Josj2
	 mryFSuEA0tSpC/9Tz27OFgfTcl4zliJBgjaXlcneC8RujJiBRzKdrhsN+UcOJTjbKb
	 35MGEE6sAoBwXVzWaF8SAiSb6vDSkQRYFLkWejsRdf9RCjeDsVtm74m+LMTegE0oMh
	 raMkO78wsqEVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4583C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453131372.3616.6664234058079551405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916c0db8d27e66e8b71fa52a6b7d01cedd76be1f981196f0df7ee1ec8abee0df
Date: Mon, 20 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784531313
