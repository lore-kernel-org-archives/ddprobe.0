Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390532139A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736399154; cv=none; b=NtZ3GYsUGdfw/g95WP0JEuwUWxOCXhfOxNMFJNH5adAJpGJymrOM6t/JLfS5HqHkE8UBC2LkkELPRN7iZx5jCnSd965/1/mV0LjxdDW1BVTjONsgDa62CSNl3oUpFsGcvCet013pB3Ylgl/3E2n6Ady2a/t6zIcX+g3fuCbZfyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736399154; c=relaxed/simple;
	bh=pNO7MsRmoEgWHMX0imsmzUKei1nBtjK5HDSPW9fdFGM=;
	h=To:Subject:From:Message-Id:Date; b=e5YdHTB3sQTs+c0VeEWGLH7aDdqmn2SCi9MrAIt/Xw0/5eWgTzzjUtPDfLxHZLMgv+sDXeZz5bYpR1DMHsjjP7bdVot3rkL1aU+VxuxKk5nEF4aubbGoA9WDJ0PGP+4iZez0T3J40ppXsVs64i/3r+qgJWekj29xV9786Rq8S8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJDz1MEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJDz1MEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33FBC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736399153;
	bh=pNO7MsRmoEgWHMX0imsmzUKei1nBtjK5HDSPW9fdFGM=;
	h=To:Subject:From:Date:From;
	b=AJDz1MEQ6OhGXZ5VqKhYI/DwdS5KptA+0grLHE4/dHT6MzS0sNi8zrWOUnM/yAlY1
	 Svh335fPjcSl1WPWn5vRyMbSRqgVY4CPLYrsnf4DYhJTxsEy9USgBRbZRQAwqgcq1+
	 KgxkMgL9grEEOInUNa6nMd8+us7Np5Y9qcjgc9KazL6TNFMkdhuRW/WFipZOfcWsj4
	 JIaivHkSRGFO/d4at3xKMh73xPeaTQIiAKvtnAoQaN0CwB3PKg+rRdW0kKFCeOD8ZW
	 tX6BBGboQZp7Oy7yQpKAPJDGpL312nPleBVZgcrMqoWKxWEC+L0r8w2B2FkQYS936G
	 lOP+T7/b8kbVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3F0E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639915362.25691.4263408037237826442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3e4ac87e54c4b310b5b3066f561c59c47cdc8d912c2607104e798cf8e3a0a5
Date: Thu, 09 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736399153
