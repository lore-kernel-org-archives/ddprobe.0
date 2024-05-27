Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C84D13A896
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716804263; cv=none; b=Q46F+j3RItTgofi4e6d8HqKpc6Z+j60Kr3wVU3SgZWECDqOcjzXQRUgtkMiyq9yDSYC7h1O/98X5PQOFIrtWZ6Y1AUzDAB75aWbRMxJBJBf4NdJc8J5MG21NtwnaDqHL4IkhxuA7+mZ8uXj4avtJ8mP33qfz2oZDidpSKkGCYgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716804263; c=relaxed/simple;
	bh=HR5tvRYvBhR2eNMYnXByx6hUoOe11EiUIgIyG66tOgA=;
	h=To:Subject:From:Message-Id:Date; b=K17plIsx/QIYRLkNNEMqSo7cgOq74j+zri8k+aAWlSHvmdCkZEGJOJDbM41wuRHIVzyvnITRELXuUqnGaEyGGQ6/tKU6rowuwoGxx7SXLKYVfm9hUZXnqr0E702f7BKyS1iHVkbutoQElBbkwGBAPngvMwBAY8i0mHMG/Fet8mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4nqNkJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4nqNkJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B27C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716804262;
	bh=HR5tvRYvBhR2eNMYnXByx6hUoOe11EiUIgIyG66tOgA=;
	h=To:Subject:From:Date:From;
	b=l4nqNkJvDSgAZzMmO7JYc4GuqUa8XZdFE1PYKi4t6b+McrAm7KytN+9RsE2a8VrDf
	 1zxxAGcIV0t0f4UBkAgsz4SK/OJ6xkvBpzYOezEBwShMCZZMUyRehcV8Tm1IURgLWy
	 8JVvOepDWQEokYniV0w0tyc2OuJsSWu9UuEuTqV33vCIy7JZgBUvtb5tpIXT71+DMi
	 lhI/gFskkkYCP++V9XL83ZXJf9xfI5Pr//0kU5x9Z51Q1yRWYqjFUrw6m3JJshBY/f
	 DX2z68Q1lkM2CFSHxorHGxNLglQj/98yw1/CZRQJTCl9rylC8bVpGc+j/dPUdcQdex
	 TiPIGhx7/S78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D6BC25B7C
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680426277.26638.9397062989246548829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60caf9564f3187ac8df6cd0205c131d79b52859b96fe33373c5532b6d01b3976
Date: Mon, 27 May 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716804262
