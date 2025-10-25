Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D1B20ED
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761418794; cv=none; b=QFndtLaTYTpG5qsgxKINY0JE9t4ihXOTuTEchVeA9NxY1gZr7xSCWLt1cR+gLXou27I1tqe66tLnpph2HrI5EEmr86vcYg8oP5l+OCwhheBVPYM6Pzo5B6Z3RieVdDD3/TXG+u4HkAHXKTSlv1fgqwr+rdIm/dWy/XjnxRw+FdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761418794; c=relaxed/simple;
	bh=niCVgUnhg4sL1q/YyC6Z70gjrOC+beVPNFwGL/dzNqo=;
	h=To:Subject:From:Message-Id:Date; b=HyuggBtyOvkL7hUh+/hBpEVx+jInUs9wX6CQTZvuQgEhHCz2wa8bsbaBaLMi7Ouukx1Id/RxunPqqiodo/UT40oh5QPZVlBQun3yNTPGMS75Nx46G0iNXcP5rffdHL7iHdGlbfqtRujPfveVTnItfLunJ5YX3UU7tnzdfcFu/jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f29GzTGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f29GzTGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D25C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761418793;
	bh=niCVgUnhg4sL1q/YyC6Z70gjrOC+beVPNFwGL/dzNqo=;
	h=To:Subject:From:Date:From;
	b=f29GzTGsZNGMP5uR99YECKTcHW8YnTsbgxLr8FLcEje/8roBgW0XqqSNo2j+xud7T
	 h7lJlZ9+bD1DVUlQtkEPFm+rwBTZQOyy+yz/2EtqGklHVxfj2bhM0HAoZt9cXTF6Vx
	 v8kug595ynEt2tTAG1xD3e29w9MSrT+tjKSe3Ps7h2Q2oA8D8BZ/EYaOzAwSc1HXg2
	 ZA8PMemsywMnn3+EKYHwtMRbpY5g7BkuxZumAti0rt1TQpmYmeRx5U5WWRHZ+dwqek
	 Ol0USM5LU88qbSge/4FU8+XjPzC4nys3NgO8YE1kcq836rUn9a9duQhAVAFtEsipV0
	 5/rc6vAw3fwQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A26CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141879358.30411.202270666778639006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b48be3eb76588270fe4feb46e9762b76c0e7b578bcf1d0a0345f1ca7b6f0999
Date: Sat, 25 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761418793
