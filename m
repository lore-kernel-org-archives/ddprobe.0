Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA34828726E
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764574373; cv=none; b=l1a3M3JxMp2BpZHG/19tavDwS8EXTe6ltsixc2Rzg8jWNv+xa9vY88AlCfewNjDIJttUg2GDgMdfjsH1pq6Xz10P2BHx7E7O7LbPxUs0cmswLnX6lGa3JGLApICxuL62CG61OFKqSh+dJEp/Np3j1b9HoPOO91k5a0oCqK6JoT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764574373; c=relaxed/simple;
	bh=2Hcnsolbt1hPHHvfnYOdetzPPEph2cVzsPjJ6WcUbLg=;
	h=To:Subject:From:Message-Id:Date; b=aUvFBnycXwPGyqEiyhkm2VFbvs8AwrRRm/Eb5z7+VRvxovhQullQxQ/YeketBcMcxq1fREP8PvaKizJQD+KgXYKhIy3B95SB9BmKGic9eCProggsDtlnIGMHEeFNYYFW32aI39neQJo1VrNg0Bs0wqOJKOLFnQp62F2dsh5BjrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKWQ0mxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKWQ0mxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764574373;
	bh=2Hcnsolbt1hPHHvfnYOdetzPPEph2cVzsPjJ6WcUbLg=;
	h=To:Subject:From:Date:From;
	b=hKWQ0mxL6VtXELDwzqZgFQKUjh3l7qpHZ+M6CvUSVY8bGfWl62D6r45A8sihzCa/W
	 3Umtn5cHzA9Tn7F0mAM0WPFBSfe8yNFuKcstGX8iKXkWev9JcM44qrSNBv7dMh2ni0
	 KoQsMnTSbaAjpRZ30bojWL5uHpUkoiHrR3eYX/6TisxvjoV3xBqJQW3XGbFTGTzDch
	 oF7TDmr/ILE4f2r/kPd5seUSp234oZxw+9xojkqiZiDXTHDpci3ZcG0+rcX8oGfzRX
	 CBQOsw5tea1iMyluilNr9ncBdJOgoaX8rIEPMBnEPTrDbNhNe5qtFU2dawSz+szI9w
	 d8CDYL7wj75og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8FD116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457437358.3410.3673103773813561627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27726b0f8d9345274bec74dd1a06921e65b9e6e00d3d71ba22aab5d694a69e3a
Date: Mon, 01 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764574373
