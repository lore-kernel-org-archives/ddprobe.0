Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED235661
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743293994; cv=none; b=JHtwbVzc1WVC3wcfJSoXTCz7/bfR8+fElDy1MRr7XIdiUQhJ9ouD7ArOI6LMHFI9YE5o+bavyHAkhBOvp1+C6Pw8iIlJ0k65ntlZvgYgXkCiZMAV3Gewox74DxKl0du7Mdx/QjuV/d5U1BDu3HkWgM1RemB9+VbYJruZvInUpRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743293994; c=relaxed/simple;
	bh=wZtjYEhlpsjvhxP8KMiLB8nf7P8P+zAx8Arp9Y9zcsY=;
	h=To:Subject:From:Message-Id:Date; b=u3z1XtV5CW3Q1xWYaIsnkVH3+dBw4qBjg+LYL9TUDIiRpQFZ8lQolqjfyE50DB8j7NgW5IP5eX5e5sBiUbKvJ03NqqDkJ2518olzpgRz1QUK8ft1Hi0l7H0fQJTvTeJzVSjEJJkqen4KdaQbR8CbGEV4O8dnhqPIAEUFSJ73IkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcMcsYJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcMcsYJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58BCC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743293993;
	bh=wZtjYEhlpsjvhxP8KMiLB8nf7P8P+zAx8Arp9Y9zcsY=;
	h=To:Subject:From:Date:From;
	b=fcMcsYJjPuMvCQtVneOtr7uRidOmNKU9b0djdz7V+j1nU1jFKx57+Nn0NYrkDmYP4
	 9hQ2tKxe30FKwgwsZhBPr3jdjdO0OkHIOuT0UQ6r2wfyBHu4mbOSLz+abetbNhVy/c
	 bnhS7LY5jEVUdFI493TbYGW1assXN8hr+BmGW8m9h36ni8pgBuMcjYtXCuaViNbSZu
	 LkGIy0st2W2xpA7QqbmzW1QVX6ZrEmGvtEXGTbooFxKjVAmhLjCpszaZDbxp+LKGfK
	 zVNc6k8Y4rWgmgJOQz0Mj88rpkaYrGAY0eSXsCnmdM3+eZgjFBU5XQtyLV8vLZ+LtC
	 tcGB3b5wWQ+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B80C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329399359.11102.9502376769808690807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2c5fde1882c1f8ce7197262d73a143b4c0458efff217ebe187d278c2000c70
Date: Sun, 30 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743293993
