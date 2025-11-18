Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065DA285CAA
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763425915; cv=none; b=F97GFWLWrqvT+n+HmE6UJqvgRcx9cgYdJ2VPkOCE6Vu5bCa+YflaV/a2L5xWmAE+UAiL64ZPR0nj1pnm1Gjt8U/2e6qniKC8qkoD3gwHLwG8FbfqH2z4caSYCVUnubZi+wdNvxzGqEwe+jVMYzDTroxqENV01w/NUiZyUfnYkXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763425915; c=relaxed/simple;
	bh=gIVNNVA0iYnPyYHjWyuO/0rPM877PAiFmF9UHx6yuyY=;
	h=To:Subject:From:Message-Id:Date; b=ryUTRNHSXCvkveWYcjcjzI3AW6JtdsAhXhNsx7BHwKx+jNmY/zZ24VTwEHcHK9hbTg6aAx+OFayfGRc0crRsW3vUAX8b2Y5w2alOB4ME/Vdaj23Pfvr8I+0a7346crHygyme2ff8NZ1vKCeQg+9fH8biiZdZuzHMyBZEEjD5gdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7Qu6TWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7Qu6TWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B12C19424
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763425913;
	bh=gIVNNVA0iYnPyYHjWyuO/0rPM877PAiFmF9UHx6yuyY=;
	h=To:Subject:From:Date:From;
	b=J7Qu6TWn707DmFye1FPBSmv3JqiYKCk6OtM0T8XFG0fNfIAs5h6KH3+4rkjPYD006
	 7glXUeatz5uOiZe3G0hfVKq0Tzf+Wr80fRaJsO5AfpPo3nGez0AEt76xvUigu3E87f
	 TghLfHHIDYt5p69Xg8xEFlhe4uNjTfgq80VWf/QcblNuNevh5hmNB5wgsCMNp9ia0N
	 reTL2HBB/Q8N4xeaZx9GHDbSCdy930TAT9JZnbCnDyRQSH9IxrB4OEqWYGuaxYnNlo
	 Uqj52WwA8kuM/+UTYMVbfn0WKNIdjf9YzO0OLk15ME4BQv1N/+h05yNwf96nH46hKC
	 lfCsr6h593y4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1FCE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342591358.29930.8635768121324719301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99cc71d7588f9d0e4b6a954c7da4b48eb612e1010d08e905db2d6b08ceedfc5e
Date: Tue, 18 Nov 2025 00:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763425913
