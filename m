Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D89B23909C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771279494; cv=none; b=dOJvvUlfOYX6Vx9+iuvkQUzHNY/efXO/gmINyniYolU37KQvEO8gXd1DUqwpLGo5zb8oM3nku5y3DzmeSUcqvhwiJ2qzXxe7osAW+RyvlNXqBfYMiMLy9FdQS3F16Ol2iaOYPTglcMcoPKsn+0UIqpD9LHoHYtOx7IjCMZ454RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771279494; c=relaxed/simple;
	bh=e0asLGC+h1ntyniDLtTIAGn3FMV9xzFccs9Kv6DSK0A=;
	h=To:Subject:From:Message-Id:Date; b=iglHnOs5oHpN2nwO6DTKjiUe3zV+wYG9WE6MjP0EaIK+YTd+COPq79FW/mU4dNJCL0zynGjsgHNAL4UhkkKsk8FCKr2lQ1CS7LLzSQ29yjUB+cUwjkGjMibW2cX8utyNatx2DcroKpZpECzATfE05iPoVy9KOGXJZRepi36eMvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbX0ju9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbX0ju9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB14C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771279493;
	bh=e0asLGC+h1ntyniDLtTIAGn3FMV9xzFccs9Kv6DSK0A=;
	h=To:Subject:From:Date:From;
	b=SbX0ju9ll5HMp6v0RI6I3eWduKj4159br0G3Kfuqp/bWP4w0/6C3Okpf4jgMRixQJ
	 s0slKkhZAAFIBkC10IDOEBt2Ssd7vfbgInXFI6d6VI6lewSKVla4a8v6Feh55+ktSL
	 2D/kLZ6G8zn2FhvAD+87S3Px1jFfkUq5swfFfOZFkalYDvBZnUY0nvsXtxkX56JVlK
	 4/lYx9lOJe0ckstNS1Tb+Y/dSKnTm7NxGD14UfVUYvLnW+4g9aGNJuX5Cy/JdA3LNM
	 kbnVJ3CW6ysV3gYcWFZtfvfpfVu/bsOyt09XgxumeYNmxRfv1jyTdkhsYnuCRXV5iO
	 4EyTAo8hf63Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978B0E8383C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127949360.27406.12411177842042300927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c832490cc9c4554f664a13040aede5c3e1c582bc92fdd2616076f3ab843af3
Date: Mon, 16 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771279493
