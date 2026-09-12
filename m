Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F1C29DB64
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789252234; cv=none; b=EFCYcdfduQQeNTYF/+5/gu9Z1ah6lVrbVhQ7JXgsLMA+ZCftoE1lUGVB7gLuvJSPi1Xbh4cxiuzBWdKknqr4qtlay2k5XPljNkzPAFsCkKrgqq/YBGzrtrT0PJFdKkOY93l47YRFu0fJszm4S4SpxTihRtbvlIcju5Opr1VW6LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789252234; c=relaxed/simple;
	bh=EvBrvpQV+bvzp8xoAficvgugqXWRjaPD9yEHc6qSoUI=;
	h=To:Subject:From:Message-Id:Date; b=YkRxjfyN51LbNB+ycSw/n2VqMxZzsnursj9SY98LShwvV/FCa590NjyTh9iGIHU3WPlQWGdRHKBwi+fv/XuxB+t3u1pr0Ru7VEWE2KKMBCoguJ2jrioSnfe94gw/SWxNSgt+cekxoX2++JV7FNtcy+sHptpulrEEsl5UFycwIqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz6A3nBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz6A3nBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0328C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789252233;
	bh=EvBrvpQV+bvzp8xoAficvgugqXWRjaPD9yEHc6qSoUI=;
	h=To:Subject:From:Date:From;
	b=Kz6A3nBpj2JIergNOrq+HcY0yxMM+AEdfH7UXqIOKy7E4bV5knRyArZRNYGisHgiu
	 m3TLUz3U5KheHTMApbv65A4O2qtuk6agJLlzkj64Gc4cPjUdLwqxIf4vJxGwrwBzm+
	 x20fBxYl4RB7aU36pGLJsPpdp3dRrBJzgQkekFf2/9JAvDoPEi4xaT4YTOw0lRBPBj
	 MDmRAZg2Ek/dq8twva4mOfP+o5SloD51Kyj3WmaBF8N03VMYOdSTtayhFI6Sbt+OYX
	 tigRwU0MmZatw1cxUv1k8tJ0JnLFEnb0jACTbVj07AfVHttT1/Hong9AkuNp4aiZRL
	 uvHIb7Awska7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA40C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925223369.8682.13027860855995161134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3b1ba3d2e97df6c96541cb99cf02bccd13f16ed9e200c1a50881ae206fa9e9
Date: Sat, 12 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789252233
