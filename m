Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224C8175A8A
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774178094; cv=none; b=lzofEeD1qL2Ug/9nMf8vqQxIVM4SxqnFTqzqLeswghSSMco9YuCEqphlSOx4Ssd75jbuibBhqyBc/XR7aK7DxyBf7uxYrJGlf6GFV0pSGyKD8eeFDdORNhsyWOZP9lDMerb1+9/C/Tn/P8lN7ItxJL7yGmDK60xWqFJttfyOEFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774178094; c=relaxed/simple;
	bh=e/KSie4CpxZIOxZyBD8EYY+DeC+eeIVOTUM8iKaFIL8=;
	h=To:Subject:From:Message-Id:Date; b=S6GvbBmirbDorkXy3uiYrDXsMDxQmrJ0gZnFbWwCG/js4MiAzbuvF6yxGCGr59xdr90QKxNOR1ZxjI56D+ZkJKG7e/AaqbyrpCWJ/42l9e381lnlvcQaMungAw7mQteATFD7StneI3MQ7rVuz8G67Hf+HCUkTmetv9KDUNzuf2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loN70WMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loN70WMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00AEC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774178093;
	bh=e/KSie4CpxZIOxZyBD8EYY+DeC+eeIVOTUM8iKaFIL8=;
	h=To:Subject:From:Date:From;
	b=loN70WMoaVN5R6YAppBIImWXU7t8baVew3S3EgxnE58lqxC4JDWphi3w/YcTID3/i
	 UERO7k7DOOceuH/SsDaly/G+uHft/MBdHbjxpYMwAmfA3wC9pcCBxh99mRKmv38Az6
	 B0lhOceXaXZKj9GFpS9eixb3zzF1kCLCnNi1WiG1wQmBnRdCjfGWdzI0EIwhudcAB7
	 vVqLtlITlIMTYtzUvYIit1nNkvO8OL2IOO++kIOl0TWJC8e1e9MImft0RaUCvIVTWe
	 73jXyPECnTmR2+kdVc2jr1ZcBKyUtOhlSytWJq99QWq5DuK0ozOaQsQbBcbva5mV2b
	 8Yx9XB5u3tMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D06FC72C3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417809358.25999.12682445970135670014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5523a933be9101ac3e1ed0bc37e02269240346cc347a4fc0068e8e96c6342dd8
Date: Sun, 22 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774178093
