Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FC612B73
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728102954; cv=none; b=Q/oO3VFk4ggzhJSvbz3wONC9kvLVu/2thA3B1vTP91eEZUKBVTJQBFVYwOtA5f5b9doI04GfNAodt0coeghI1DSIhH43i0eAUiwu6EzArj0MRbXsYHREG1m3kClN0l/1RYp8LpE6cYhaaAt0ElSpC4YGe7Tz9KZcEt0meDjxVxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728102954; c=relaxed/simple;
	bh=9C6TqQQnXG+oMZQpwYvIkdfSZW69tLODvxIDju40ZhI=;
	h=To:Subject:From:Message-Id:Date; b=tITIISLjqMyGq35lpq4ERa9S7hGIf6uA7IkZ5VfEsgRzSzu2gUvbdPnyfZq+faWoMUxfp54oy7PLVgJl2AvSX7FzF+l3gNsXp5PEjPEbwSqDCcZs51MZ8eTlFn3XmqcH41/XyPGh2HnnqubGTsd9gBc4wy4OoNZObc0+ZDoFjcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndKUm5ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndKUm5ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C285EC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728102953;
	bh=9C6TqQQnXG+oMZQpwYvIkdfSZW69tLODvxIDju40ZhI=;
	h=To:Subject:From:Date:From;
	b=ndKUm5ikx07/VPRolUVnM8WBlfyN5L7UicKAY91fFnDGbnN9Jnu/xAEWERDrh6HAE
	 FFTMjEheNfV0P6POxT105hVZh6/dMyFER6ajsjARaNZOEJGSgCB41pZ89qAnVAitJX
	 VKyLl7/oClzEDFF3zcm7WObTBWa8/1fh9Bc8SmXHvflM/ry1vIiQYe63kO9Zd+BmNk
	 Qvish8bVCxdUKlKJ/1sQJlau5cxgaK978NafhV6v2gP2W4aWrsRQRjZ7nIdMUZPK7I
	 YzWy3XFjltXbzlbUvZ9ZeCqTalpHKI8v2meMU74S3JkZHtXGMXNlCrYnJ5C7TCqBdG
	 Tlglmpl4PZZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F8CCF8851
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810295363.23706.12591447682242547497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c25c674ccbf7b1f237b84d61569a1be9a32eb9f18d914531c024a2c234d183b
Date: Sat, 05 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728102953
