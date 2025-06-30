Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2634D235346
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751317794; cv=none; b=JxZQ9tqSZQwm64+wse9qekzQHWl2nYrXoKt7nALV8LwwPiuL6+rDz1d08/xhthTHdHYLlv+lVovZymy7yXFwtzlxjIbCynYHa5jim6bRrzAz+N/7U8HDYLaOBYm1tr4CjF8FDEUNtgduNxVkKdU0Q4c5fKQFGFjrRh0uJPfMPCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751317794; c=relaxed/simple;
	bh=bvZtiivADSZe0NkvWlydcElTkCYbMlvjrKjqRvsLUqM=;
	h=To:Subject:From:Message-Id:Date; b=a7xyoR7MvvsfmPUjS3HPPTn0s+JfoJcGXT1Z1r/Z8Kns5KWPeVa4WAArFvfYX9Jmkw5SUZ0YMg6dACo2VZSs+8Uyj7Vc43lg4+fXz3xIyNu9GHyA6nAdShXI9AcUL0vBFtarJnCZu70wDsYgve8tfzTavv/ho0XtTyUuff9/97U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1vBJOyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1vBJOyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751317793;
	bh=bvZtiivADSZe0NkvWlydcElTkCYbMlvjrKjqRvsLUqM=;
	h=To:Subject:From:Date:From;
	b=o1vBJOyUJMcngw3s3jZ5JveqS9gTJc4eB4VIVSZv+UW+J161iNRzqg4q9ubWrT7vr
	 eGvenPKesqbtmB+a4cDazjuYVFHjO1D1MRSFQt73uy05Hj9pzWa4+YZOXn9iA4LcXu
	 D5W6zSlOY9e9WqDdplxCWvlGagnOIwYKwAO90RGLzEma6T8fVLCGoRWhhktU30FMSg
	 t3fWzEgQz554gr/Kah31uNMpjpzlco6SeNIkKQSZD73GpHAMFhJA6+x3Hxf9KXfTv2
	 8h5j6IgppJEsXzNTNW8yuv3Z9MAe6LXtgkC0AMSXmqZZYakl9nEIac7X8STmvJBLWL
	 Q8AaRoDKXHjog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32CC83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131779357.4363.14989143896913911124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4c2e9feb068293ec2491175413fdaa52d98f20d4bb80edb00133c47447b4b6
Date: Mon, 30 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751317793
