Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1816230DEAD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761220794; cv=none; b=NwYUqelclMHpYCwqRwWJqNNqDYz08btEd6kxoj3KGFLvcO/7RvnHbIf4Ujdr1JXvZtyP6tAqkQgaWWDmbRqshqIefWg/S0tMlBRWs8LPMY3zrpmvw6PJuf+6TThQ1JlFIBcrhK60O544TreByuWucTmWHoN01HIqFPMhVZGMJj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761220794; c=relaxed/simple;
	bh=dqCT9Jg+Sw+bt+apOKKOLS6MydWuQlfnBi4TIKnYXrE=;
	h=To:Subject:From:Message-Id:Date; b=ngD8v5FF+996tlBPulS4LW8VeY36hw9GSXfWWcEFdIbRPb8/xxByfr2b+2wP5nCKqtFrP8taLfqKHwL2Bd7L8Tn2w15MWyoIfA4Nq9F4po8hQqZifS2/ZPhxejC4XWzWRmV5PikM/CSq5TJXtzRI01Hsk8CGVMILCsrzU/Y5+gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zzrp5rlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zzrp5rlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761220793;
	bh=dqCT9Jg+Sw+bt+apOKKOLS6MydWuQlfnBi4TIKnYXrE=;
	h=To:Subject:From:Date:From;
	b=Zzrp5rluebD5JvWKtmAb4VWrm3V+ihnL7B4wMV9dVaqEEGdIRqZHkC4weHUA0P/Ca
	 Gy0GAzJEXJ58g3M4y60oQ83GXq4fx/KLlyrpji7STyiql23vviz6/MnNBXV9OyrGqv
	 MB5zDQCOhHXmWEXe5AsXc3ZVUypmFbUffch1Pe/h0IFEdXx+e85M537kfO790miN4D
	 7Sjy9CgN2FfvAYfaluv1d35or9dJGpHEMko7j73NNLCqlL84Pbe/cRcoT/OkFJzeCm
	 Gm0cRHYWgZkfHorsdbRPc4guxzJ1IpUIjDVYKi8ZF49AnXtYgI7WeIgGgirQBrU3Hl
	 rR0sAWBDBSj+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EEFCCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122079359.20277.1974001898421524242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b5dc318d7cac098c5e4e29c214545861bddf06f373c162a805c217c82b24ad
Date: Thu, 23 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761220793
