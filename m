Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091283CC9F8
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774457094; cv=none; b=Z2M9v0lec1GptW68zzsxVoSYzVAZWR61jd4FM8JkzKDtC4td8fLDzVIdTPtcOXRJW1w0k12dkciWK/C/vh9ISItjFBb5zK0qhU6FJpmClAptipUXortaqeSRNRQFYKHe/c/nn3/95jSPoouY+BJgExuvPUAmkIFIUnRlLhYrAWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774457094; c=relaxed/simple;
	bh=tynh5nPZFw8Y3jrlZVNLU0aRqAq7dx0J9xgPz9Wlu/Q=;
	h=To:Subject:From:Message-Id:Date; b=nCL4HofrrqmI/4HvBKBv837iTQYCR3DJWvISqZ/Ah1glbkPI0TaxjCKwvI9dL1fiW6hm/GKw7Ctj5GcvjBNWozr+AX7G59NGMMhiSuT84VJbHkSaQIgn4FldRmhi41Xmktt60yt8gbmpPkHfY3Ww8BLbVkkouu9fCqVgLUWEQ80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsgnxnMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsgnxnMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDF0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774457093;
	bh=tynh5nPZFw8Y3jrlZVNLU0aRqAq7dx0J9xgPz9Wlu/Q=;
	h=To:Subject:From:Date:From;
	b=gsgnxnMl12S4LRlz5t97QwvAeCd16aIOzxWpEILlQ4QnrjCY4s7xnsFtPYsmjW9jk
	 HqC0NtT/PcAphlpoioljxOUgDzqMYUmV2Kv2UzJkWq1tEWf6YLq85wXqnkkxhQux6Y
	 CudQSN6vTWv0r4DyOR0Xqx77/DDQigsH8hzpAKObnScVNji+OJD7rY+HlNtwtV+MJq
	 YtqEpvzBL5eU2+RDTa5Tkt7MPI66DqD4O7IhqpWz54mKHuJaPFG9Ixli1Q8uK3LJmP
	 dEpVIO4NGSD9YBda6SoVGAW1qz7G+Tw6+6cnT4yyUnxJFxSjKhIbmfznmaIjEFVMlF
	 IcG0stP6DzZZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E05109C041
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445709367.3722.16048546076117030500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39918ad2a7ef964ae2b4a8cc958520a0014284cb0bd1c1d93305e5e7c9988961
Date: Wed, 25 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774457093
