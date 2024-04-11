Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E102C145FEE
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712837297; cv=none; b=G6fA0/7QYgYTspIsdVERpXyRpE14otYEAknnreINHyfLZ6LJ2/aItZz4KClPAVAc3eN7RzMEI+D2XPeXqLhxNey+xgWhvjXy/9UKee4tVczMsBllEnkSURvnlIpyIXqd2oytCegcvzz5sAt7uCPIc0F1skf7WUod03gfzqA/oHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712837297; c=relaxed/simple;
	bh=7mgt5flzpk3W9cL1pJMtXpi+jY8O5x2skpjvAVArz4k=;
	h=To:Subject:From:Message-Id:Date; b=WiZ7GxOqIgPV2eOg6nCqAYRt3hgzMlXu4eFfGuT9RMhy2a8iu6T4hFWgxsNwq6BPA5eWwJXqceQt5c7oYWSjZdhWUa9o4Vct6+yzQQxKdioizvjGtfAvC8adWEXGN3p9l/ZmPaDqc5BeFCIWIsHHVXBVxGCtaBZO3hCqNWfnkyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeKiB3v4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeKiB3v4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3F6C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712837296;
	bh=7mgt5flzpk3W9cL1pJMtXpi+jY8O5x2skpjvAVArz4k=;
	h=To:Subject:From:Date:From;
	b=LeKiB3v4Fy9uSxrC0guGQ8BC+gW5rCLcn53HmxuzPpvpzh6EkNCHGi/2PIxBQonY4
	 tnG2irvuxmYmZas6l2t7YA1BSHhay7h6dPwGkVjwBcCjO5ZpxGWneSpHlTJ0OkAGJl
	 Z3WXvmHlLb+etGgDVCB5VAxmgKPlkZPr70csbRXWPpfySHzQnnE9mWR00A6Dpi5D05
	 KhEJ700cqh8fx6uyYu9mJa10qIOdubr/nqkePzYSGLvXfHSTru8ActibpwJs06NXqi
	 yq87EE1MXwvOEJ6kDgBZHrPGEPRtq6YxHfRulvoS/or3R6aNkcwlCGFzzpNBKpOD6g
	 PQKpYaJDP2yLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C02FCD128A
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171283729637.9839.12242083630099535193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5b5bb6c012c6ce5a71de8f893c63451989b9fee036e430686fea0ce44c42c6
Date: Thu, 11 Apr 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712837296
