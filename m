Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD55142E7C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737023153; cv=none; b=K8cV684P2pAfKYOHwZqLS+uXAI7LSbqeu4tERwXtoqe0L1xA2S+AXJXA2fjviwQ707AGLF549lXg5xgf2uqgcdQLjnD5WXcAwBwfneAKgdOTIPMer7Oxk8MbVDdhn6XRjFWOKVvUZPY2k6ym4vtPlxjg3GEPEIF8eg7SrxVAyZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737023153; c=relaxed/simple;
	bh=kbhnBsl5BIkThqW+3vLr8NYYnqaAJQb60QV6/uhaiws=;
	h=To:Subject:From:Message-Id:Date; b=QjU4L+LFU4h8nqvjXi+qDsWY5KJKm1xbK/UjPUUz3w2nULmlW+/rJIaQMy2bGk4mUB9NONlRUCB4PARru8E0XgDgT7zv3X0I8X4eBOq/IGmFl0Owxigi+FORqn+o4xOfNa81KsOlHJQAFYUXtnB8NftyId0CG+eVfdKPcuyMfjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if5u7EtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if5u7EtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FDC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737023153;
	bh=kbhnBsl5BIkThqW+3vLr8NYYnqaAJQb60QV6/uhaiws=;
	h=To:Subject:From:Date:From;
	b=if5u7EtOIgidW/HjVZ/0r1GQfQcRtioIMGYeJ1/NTWIMwCLThlqKVWRe9dFZ1Om3N
	 luR/bHyH9UAIaYEyKspcKHhfSNuIK4pmoAUDBloOMOLVpaUzL3h+9QcvVMfcgIUgeu
	 1ge8h8qGWW29fYPfI1tVGGwlwOtWgWPn5eyAehAQ0esvCz7/mS+IvAxKvzIQ62MSBi
	 M2bPfhOKCK3zB9ooXPI/fRPexWLNLyyfCAjow05UK1pXVbyc/xkPDs8r9aD/8zaJ8E
	 al7bS7EOldQ6jTFLd7aECExOHHIFmOnWIa9ewRT4r4dSo1xlwhbDfyb8ryUDAUFoHn
	 ms+ZTTL0ah2Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92720C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702315359.9632.15188187470240478550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4cc798799959bdff97893ceb8ff2264ee443a523c4b8d28d26fd1ddc3621c1
Date: Thu, 16 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737023153
