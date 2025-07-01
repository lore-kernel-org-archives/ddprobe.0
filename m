Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCB0246348
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751404794; cv=none; b=K58W04fFlSZ4U6TrI0VsqgWxZ5wJ6G6W9s7roWTk74PgPfv4GriRBWPhyzRQwn2VGx5sU+0CAQuuUo+eGmq6/hzp6blyNn8aID+pHChpG0Cgco+F5P9ryeXXZT+fXeLDWFsbBRvh4RaNPQ6MpBxHpUU8CnOUqm+U9blHOxRA0v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751404794; c=relaxed/simple;
	bh=Za4N06NQlPY/PVyaPpp8ocRDghDeCNxIS8OLMrflN5Q=;
	h=To:Subject:From:Message-Id:Date; b=MgJ2uiCsiBtNidTU2WeqKYQzJxyrTirT+YLHQQYujb4IRmb7ols6Y8x19br6+49QaMi9OdCcJXBFEmcIiumFUEYV/61OEZmd3Jyd3QS/6dz+S5aIb5COmE9qs9O4CHzUhZl5NB39rzuzEXDb9tyUVd+ZNYIbddK6g1wp1cWSCKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/4jNClj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/4jNClj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A217BC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751404793;
	bh=Za4N06NQlPY/PVyaPpp8ocRDghDeCNxIS8OLMrflN5Q=;
	h=To:Subject:From:Date:From;
	b=i/4jNClj5RnYVyMMs1ZJc7/3FfL4AmOl3o8gfg42U4GITrKuNierUXlFQx4Ac9auD
	 fxM/e5EC7WWgg5aPh7584LaOBfyN1aC9vu6zqoK9qrPa8DM13wnpMydf26vK7h4rhV
	 sKMq+WH6KNyXghIKdPhFzxmIvGjF6qrQiZ/OmgzXmKD4p84IJ9ss+fF5jtihVv3/Jc
	 PzZcEmiKyh40jIwBfBdGtNQyldcglQqYApQ6cqPkQRrz0/9gKV5Mq77Lk/j8OGcIhp
	 szg/B5sxbdnVt6Gk1nQfk8Z0Vt+Ioevc5ghd9TZmOX0jRrxh9HJvr5iyzHUwusDkPY
	 63ZKWqVQzuWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9ADC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140479357.16288.15285566070445161249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db898f7eec9a40ab093f943619e09c9a525f8373f647875ebca8db6c82ff48d
Date: Tue, 01 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751404793
