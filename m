Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8451A683B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783557514; cv=none; b=blEe7G6AwArOO/DSg3wB4kULJzQxF9n9HZguUo2uI4Qk2k5nXI5Pp1ZJI9uEhqtgFbF3dsuuDtNP/eGn7Pm5adxEhqm9yDqBkPf1oUUyfhMojcJ1KDy/5VjImiASFyzbqH/fSHPp4pgaBs8QK/tL9oEEhkVpBud3DeL4ik4iI84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783557514; c=relaxed/simple;
	bh=2ZTLBNQtKAQiZnXLjCV6FBL9o2uacXAzejMSdAhTa2I=;
	h=To:Subject:From:Message-Id:Date; b=KYZmt0j7DI0TJ8nhoA1ESNYE7Jo7o/b1DjitRRzGRbzZW2V7T89u+ysx7mXetkMGW+iGMQLflxfISFG2WWqcDx6v8nY0xflbKmbWQ/NsM+mHGLh6W1ZpxOsQbFihQwnIh61fqCcjFX8xOGxMheDQfP2/HBT/FehFkFSBXcr924I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRq7aFkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRq7aFkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97A6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783557513;
	bh=2ZTLBNQtKAQiZnXLjCV6FBL9o2uacXAzejMSdAhTa2I=;
	h=To:Subject:From:Date:From;
	b=ZRq7aFkVbfGtIENR4LpnN9XvsxskmmuQ6qeMwMVuAQWK5wAzmTzOb1tEocslL72+E
	 MoWuD3X4QxzqnmlpvnngnMXFdL40Doe9r+Qw/RYbEGIBG+zC+wZ4UyhagcV6R231jL
	 1cJ7hmqw0B4Dz2zmO8HBvj/XcqurM0kkg898K6Vz5xRh/5HvBtJJ0l2MDKbbc0ynaH
	 BDZVcefg67TRzDzSBreoeU3g3RlZHxffzOmni17WsteAO4Gl1VsvCnj0zWT0T1aZEg
	 +CPJrgWnFnzVPpsQtVajcfjeY7/iqNCdCqGT5KgtW5kBZZWlh7n+GGkSLUr7V/jaS0
	 MANyGP5cSjfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D6EC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355751368.4368.9721949931462969626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b194cb940bc2937a9302e5f897d0c991b1aa8a0076c3f6bd4fd5d5c531203076
Date: Thu, 09 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783557513
