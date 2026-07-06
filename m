Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E2541D4DF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783332514; cv=none; b=AYNBZ6bCoS4t1l7EIws6ri9vP/ZmGxa0MkuOh9IbhvS5XuCOM0TF5KKuPBLKh+Oo8kVM+BCLhi4QtKvtEAejdhEts70Krxe7d2b4wdtSU939nVrY3DFcZ9cUp48lG+S5KWJSh2n5wXD5/95WXNSbVYMfBvyL12gOqyitNJbHQLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783332514; c=relaxed/simple;
	bh=yk4MgmIQmTzg4C8aw6xgnjJ5ElYIUxuNzNmwaVL0aVs=;
	h=To:Subject:From:Message-Id:Date; b=OeBTYwDg8gTDTiHG1VdNrtNpuvljxwCr1o5W0lfqOF/9f0bhnZC9qCuA2DNjdWVqMiRk6lH2uQKCsMQ3c8HP0l5SLFW0QHIbHbk6pfrOxeZB9QbdNzM86nmLT0qwc6XWtSuSKCVEHkMWwMPnUWBhUWAOqbL0hMjeyZOB/4NHM8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs84LDjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs84LDjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E246BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783332513;
	bh=yk4MgmIQmTzg4C8aw6xgnjJ5ElYIUxuNzNmwaVL0aVs=;
	h=To:Subject:From:Date:From;
	b=qs84LDjjzdbm7KjOdQnCt8NQ3iaWwdMZgnyfb1+WPJY1kUskuAECXImnvPTRKV2B1
	 zi9CHeduQkgznTyY0N8HQ5GcAGC84aorQyFXzjiYAUXk+ms/5CQHVYYfCf9cPqMqe9
	 dSDIGgJkH1C7t8lEAdFNnawgysonP4Ye8OK9u6qzsN7LqGK2e2zjGexd4puhH7LxiU
	 zzw94YY8dCplvEMzeeq1AQzZorb//ZvoUqI0Gx9PSAaZTkeRmFspJlHed1Tn550SYw
	 x3oMxcHqiKGR+UG1q623tcPYhyG2itD9fx9cqpmlX+MhMpWb+YhxuS7QIBAuauzp1K
	 iIWF4f6ep8wEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F0CC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333251375.23477.6492719038690248159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c54ed5ac2c186c6e1e53b0e1e982071fe59e506d79b313236834c0eee9f994e
Date: Mon, 06 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783332513
