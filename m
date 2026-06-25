Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9505E30DEA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782398854; cv=none; b=aOvV4FLj9PEQinrnN9zjESfS4pB93C5peUhDzBeMH2owgYaxo6lKl4lI3O62MEyP2W8ydWG9clP4kHI6feUHBCifi6AHSAFTu8wLSz77msF6zDNrH6L4yXhPC82K2OYwnVdZ1lLgg16cUoiDovFE3hziW+Mb8973Rrv+LQzeDYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782398854; c=relaxed/simple;
	bh=ajvzylIOB7CanGX0EaYpyX+ZQGB5NyLvHTjkrCOfMXM=;
	h=To:Subject:From:Message-Id:Date; b=f/UHMWWrdcsKHgUTYy1q9sXQDLxULfHbNJZhlZ7yscyQJx7Y/jXgY7Zv8ah+zL1GFVtFsL4rxERR8PFnJ9cNhZ6cnC9XO2tBZEfDC40TRom15RmT6JCn19RDwqbRwhTD/mIu1/RUykg7dNPyrOT0708lBTN03wCAWHY3RXbi0Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFon750b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFon750b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 366ADC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782398854;
	bh=ajvzylIOB7CanGX0EaYpyX+ZQGB5NyLvHTjkrCOfMXM=;
	h=To:Subject:From:Date:From;
	b=eFon750b5fqKtK5ghnwJPdWUyKmLWkXJQdyJr/c/SiGvJCzbj/shzlmEoqLrKy6xO
	 4Uc3UO49yDw5QO/nNXN9Kr4n1MpmfTjKTa0Be3hlhfrCaXzdmUJEvv3/z7mxWCxcjx
	 q+HY5IkarTUB13dMBh2peaitoGA4bXteWbWDQ2SsaX5dArHnZdHJ7svQGM3QAzZFH4
	 TzVOAtL5EXRtnUXcZJ7ckAyY99ks/a0oVnEjAGm6qRR6jcF/K9+ek8wM20vJUMcDz1
	 VhIFlVw6Acxk91tZEA04kuig6Kk1Vh8SOH1hThoxOyVRLjx07QxVYePzHmNC7dnq7K
	 +dkZ4FxXYAEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBAB4CDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239885388.28910.1388284860969663051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d887eb5a398996dea92f1193e22077953f766fcc816f11a69aeceb855ef08abd
Date: Thu, 25 Jun 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782398853
