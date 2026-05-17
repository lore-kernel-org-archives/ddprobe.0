Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39B8309F00
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778986234; cv=none; b=dF1ISAE/7pccN8z6pqDibGv93/iAv7WDhnWQq73cQrMW4ywIDZ278AfmpySvdQV675UGBd8tpI57+YZvcy+jvOskECtVUc8w9xnm0qM9NGRYqSRk/7ZFjivvFy0geK3sqblZ3dOJNwc4fnJEBFLNy/Xp46YwcdeQbKvTpZqHb/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778986234; c=relaxed/simple;
	bh=i8JyFsQLska9jY3FiFEPs8OMwugyFh7Mza4nDsvsme0=;
	h=To:Subject:From:Message-Id:Date; b=hyqjmQJDhHsZ3j9CfKy6bgF68NaQ0K/FYfA+rozJQOSzXQu/n9+7944CqS4Rkej4FQlinPSgWuiblorpU8VkWNolD76U6mMqfEaMiu5I0ZkYa9rCD86GYO5TK+LTXWU1w2Xv8UfUa8PZ/XaDI2OQvP+KIEVffZBdU0lwP5Nr7uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgAcipIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgAcipIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5702C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778986233;
	bh=i8JyFsQLska9jY3FiFEPs8OMwugyFh7Mza4nDsvsme0=;
	h=To:Subject:From:Date:From;
	b=FgAcipIVCoO5TPQSsHpK5Ye7fq+fOW/MUyDdlg5B88K3spWcnJ6KJeMdu2QhupDQ/
	 sMsaEXgyFSqfT/wlNwFGhT9nRn9A850R7BpAq1jq8khCRSbdHblRurmZKgz1b46+vE
	 vEu+XfA/8Kk4ehzqbd6dNfb3qFPfj5/zIMUwfggO7yE/TwkPoFUMo47k0yS1ZCUNzc
	 2vMko56uHFo7zkfFZn14mGG6LZHvLzijLnhieZqJLL/vfKIV6CTW6hYw1q9hUxqId5
	 jh26PYKRQ6Yvg+BAQ9f/hvohtbR0l3XLgo9zK9xSIclxjAjSzUoC7kkze4tv2eXw17
	 /ZehC7xuPHZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DE1CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898623369.9111.14888565028037892762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765a3eee35c4778abc49a0e63adf41bd515110fff2ca9dc90cc78f4e9a95e040
Date: Sun, 17 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778986233
