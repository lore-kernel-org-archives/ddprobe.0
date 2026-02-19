Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153E32777F3
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771490094; cv=none; b=Oj0BUcPW+jTqjNboudqPZmUIm1JRfCbbu+SMwjqSkiOi5XyZdeaOPtt8WtBKTb8j1z7OIVizkEZ8QSnD5gihW6cVMiObdxWGBCM4guoo6kp+tbxNfBDXNtXtQw+kwM+RCtk2iih/weSWqtdXo1TTeviqsmITSvKXLuCPcd42Voc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771490094; c=relaxed/simple;
	bh=cmgVz349JlyWILYhRlBu0wC5gGNcCKEbGwhKwk1LVug=;
	h=To:Subject:From:Message-Id:Date; b=prPz06xiq3YyfzLDec0lgGHBsC/EnLoDMWYC8SsKBBdd8QRK0/C3sRrRClBjVxhy6ALUo/ERTc72FNlHE6ahzgxaq+grrOsqGQO7D3PPKoORUXSv2f7+1raI+66D9SQRWS37am3DDR9wBc6LTuEBR3KEymlvjzD7SfyrkYJd9OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N15Hy0sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N15Hy0sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EBBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771490093;
	bh=cmgVz349JlyWILYhRlBu0wC5gGNcCKEbGwhKwk1LVug=;
	h=To:Subject:From:Date:From;
	b=N15Hy0swywU2JYVXTQ5miUNOc0jSS7etcyW0unhOkeT9h/Ug4OH4afsLY5WMNxiWs
	 aCf+lxJa74oT87VXt4aKe2H8YFZzgm6Arqo/dRB99j3FdtbKw0dtNst9RvPikUzfw6
	 nHQriXW2B7cSmWN3XEFReCFcU2LE7zdAexqv9kqCpgxJWuHM8njJFrceEkAZbG8ub5
	 WZ3lFg48++cMSTd6sKy3W+AvomKWeB3DrhYdv/DPtfDyFl0PbvVK0adQBiIycYXmrx
	 Zm5wqmLarS++xA0GERKIPDQE6GW91CUUeiErhNhItgrNh77QDwbNrSLo2jgNa5JxB+
	 5aX6Ck5RKkaPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95853E9A04C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149009360.22790.11642047708674144360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037ad0df35303320e3b3cbbd0fc50a57f1239a2475ced26a606f3a00955a8607
Date: Thu, 19 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771490093
