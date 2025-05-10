Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4585133086
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746898794; cv=none; b=d2lXFBwir4hQuHWxsuYZhA1NFF4Rmdlt90g36W/nd3etTLov3PAnYNK6kcySHgojxeWBELsa1RCTfHAQ85u/TsGril5S7rp/zmsoSCgAYNiMWx8j0LCnFQjuoyK7h9fg6bBpk7tfSUICroGbi12u34ff4i9qPzZDKEOgbmcTm0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746898794; c=relaxed/simple;
	bh=YuLPE6f+JiZzdCw7eB5pcxtC5BcVCbgWCqYoDUQo8nM=;
	h=To:Subject:From:Message-Id:Date; b=kiIndbwhyncCExd6nsFu7o6TrKJ6ks+/VAPhFvH1G6ttrqIk63D3iSaZ+rulG4pZ8A3OP0PL1RHEYD2q3M5cM3SuvDvFV8SUxzr8RW5CW+swEF+g6TKB6Q4V/stJUKIAAD74lOuexkh1zcQSfGSgrSwljs4PlQBL5VjLY2c0a5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LugGNrb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LugGNrb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62EDC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746898793;
	bh=YuLPE6f+JiZzdCw7eB5pcxtC5BcVCbgWCqYoDUQo8nM=;
	h=To:Subject:From:Date:From;
	b=LugGNrb0jk/AWGVj6xYRTSwhC0o6cH4js5bYYhQmAhPEIQsyVgpNI3CHdrj/8nLN+
	 IeyRUy0sZcOHmloa9mVBMWT4D9uOOliP/KVdTJ+BvLkesJ/yXG3jxyOwFHYsNA0uZ4
	 YToUCxet3uNdiz7UVA7fxuX20g61phuH9IQhQ7KbNqmWgKhc9/o0ZrAZVj64iEsXS9
	 3J+ZX1LKGctpbR4peosda4Z5O7dbDKNN/XpziHgzEf1EVxSg5euv+qfknQ9mNfrryR
	 WttjqkFi/yn/KEa/9Km84Lp9UPtz4Rs9ki05/5aeO5ZT5WzObbymFSowhD0XQAaTiR
	 2SldE0gYk2jog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946AAC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689879357.16350.5804832641702514628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f521f945c11c48ac48ff2d445258eb461175d2fecd7f17afd4d5c43d8cae753c
Date: Sat, 10 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746898793
