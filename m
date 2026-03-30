Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06A33396E9
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774884293; cv=none; b=BnOJFvoWfkC1WQ8pVA7Zr2fycQmVZeDo1E+wCdsk+C7Zn9jn0CSbNWQkvwcd0EWCMlY+plaQhgdD9CLI9P8sTZ+p7xqRvpBM5bvEWlEGtvGz0wsNO1oRI8Gad6bO0Pudl0UuiqrzcbA5/jUus0vYrTAooOKZ+XQ4nlfm+/JvHMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774884293; c=relaxed/simple;
	bh=MyCA6r+ennXPguQH8Mk/xeH0ZqhmFeRWeD9yp3Jji80=;
	h=To:Subject:From:Message-Id:Date; b=EG1aM097YaskF1F8Imz4x63QErRi27G2Zoh7u+NDE3DPWxNyxxBmqsbN+HwZxLsGdgvc6AVTSvmmFX/twGUKoBrnlR54a8EW+Kp5i0BWjoTawgjnf1g5mZEhZ5jxjB67ZQann9DuPBjkLK4zsB1RMrL9PFpwLDf7EXEc6Rn9dvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOVNH4xE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOVNH4xE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EDCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774884293;
	bh=MyCA6r+ennXPguQH8Mk/xeH0ZqhmFeRWeD9yp3Jji80=;
	h=To:Subject:From:Date:From;
	b=OOVNH4xEEHwbSGKt9a80JyJEmIfdZzyxwW4BpQf1g8ZRqwAg7cetjgNUqeJakv7bO
	 7o3U4mVfMm78SIHwIPzuoC0xs5bcIUe25ImIXdKutbdPg6zfe9PqmXUZJKac5XMQEB
	 kxUxy+phFEJaEIVRgEnnsLv4fB8pOzx0u9fZmkZuLEkzgX7xBc9QwJOAsKL1t5IxHW
	 ZqDQdbkEvQMNhhsIFKFekY0C58Bamj/Ats/e/PWpaBcux5rc/47fdRCLnCdWVhbpE3
	 ErLpLo6xSR8hseJXLHpoqEsmXkNLOjO6i3KtngF35bDsdWa9va2mU3Ed7Zdn3Je6ms
	 wV13FH0N5aehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F8A1061B0F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488429358.16262.11196158905837757051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b909f57ff7aa1e0cee730869a6cc94252394c64a1f916cf0e142af586ee68e0
Date: Mon, 30 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774884293
