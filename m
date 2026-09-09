Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5D753FD22
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788952834; cv=none; b=rZuFW8qs/p8/POsDC/9MERrZoYoK8HKRveMeE+EwDzQDyWvIK81BRr2gJ6kOIipNy1Qrocxjg47V4BcbEwR0A2v/llb2vYA3R+iv1nOpNKtnHGDztVQkzTpoR8HDTNI4GYCpF8cvcY1OblV1J3e4tHwXJ4zxfn0tnrmPA/swXF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788952834; c=relaxed/simple;
	bh=hVE7gYvdrxl5FuhHBaczV8QynwHithEut09VyyJ9+Ns=;
	h=To:Subject:From:Message-Id:Date; b=RbK2oH3JpJ525De+qgcCGxrVcPYZChoQ65VJK8N6Qf1XlmyvonoqRkhlLwD9Rn0HNwFsU1SEpipJcjgehUKDuxDDV7gf8rigJM5uCs/psQYsHE/Ox3s/Khi+y/jshR9AzvwFsJ38y5JTsD0z1VSrIxzZ9QVdpr/7btBaDqdBwzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKd8YbI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKd8YbI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC33C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788952833;
	bh=hVE7gYvdrxl5FuhHBaczV8QynwHithEut09VyyJ9+Ns=;
	h=To:Subject:From:Date:From;
	b=UKd8YbI9obyE20u46woAmxFPD6xDqAAnCqE2y7bL/HYa3O0D/N6wA01SWmgGd++C3
	 ziO88E43cWR7mXx9BogJ7ItHXWOmsq8K+29PJPEKo8Id+sWfk1qQEXjZT2jiIWlYRG
	 Ki+WfIH/YmgzOhxiW8QrOlaPMeLkitSFHtvjGfDDznV/1XuOGUEKj2fc5+Y8nYMIt/
	 N8854kOnaqXsPE5Wb2B+9CxrmY4hv4gDRGY7PgZeWGvzBd+GhP0YJEI9SsOfqM/avp
	 0/drvY5WB/zacJCUUpbImf+ly3A+27tJb3HscYk03siBWfOeSPLA8jWO/3iGZo6qWN
	 6M1hEzRH1uf1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6E4C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895283368.25456.9537804378108706301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc11c73f7c6c52326ab5db342263f721cf99da0156abeaf060aa2d9d526a7d2
Date: Wed, 09 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788952833
