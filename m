Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365FE1AC44D
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745835594; cv=none; b=ckOp2iVfvZWsFPr2ubh8X2fS8PLJQbRRlgqGIWWFJ2ntfGqyJn3ha6xpz9d68/wBKWCWsutKKJTUVJXTp0FN7+LPkaaoGQ9tDYrlzYg8fYqkvV7LbMQBS7giZGpr14AcK+ndMOfCbWjJPcndDwm9CHvH9XcfCXDENobi4ijY5DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745835594; c=relaxed/simple;
	bh=x+ap4aeGEjpnETIgwBXjqhlb9f7+RvIRASYcwVuLnew=;
	h=To:Subject:From:Message-Id:Date; b=JeKvRuBrxYsqYZqQKjvBHjELxCRy1lLG9st1RchIVcTnYGhUcbmLku1QUGHYiuNjLq+slFLQP6GCZzU1ZtYe7EDX8RnOh0dXB+aMBjWAy10gfOLmJpyFz8psmbomDIFNKQhPC8p+HfrtBplfO5mXuV+u85h76c6fzZZsSK4f64o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WthJgqEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WthJgqEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDE4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745835593;
	bh=x+ap4aeGEjpnETIgwBXjqhlb9f7+RvIRASYcwVuLnew=;
	h=To:Subject:From:Date:From;
	b=WthJgqEOgc5KmR4GCUn2nIdlxGtLGykVQkZ6hqUhtJXDc8j0+bBK2bQfOEh5Idm1x
	 GXUGWk0uXJp9o0pfzKADitPuGvtO1ph1cmoSTaWGuOWsG+yss/KdSH+gkGY6RI0/Ca
	 6EA2OZ3hSbfpFfrNORIiR6nQm4TdafT8bykiVJTkFJSCi6WfNFfddBlItxU3g26iWN
	 adDUL4FlOmC14DRx0TlXKW6vCy8EzKo+A4+xbBb6STu3bL8e05zvDaFFllV6BLz8iG
	 oU6kHMEf1kp4H9qLcqK8J3A/gOblBMQDOeAUa3yTd0wQTjQbe86KzeSVb77uzP0nNX
	 qG0BcYxaNpf6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90523C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583559358.24692.9874038578597017417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4bc83b4c67f428bd1fa5f0c292970b4bb44eea11f11d1d89edce17ac7f28fe
Date: Mon, 28 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745835593
