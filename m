Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE0E2192FA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775316334; cv=none; b=bGP0kZNpZuS/CYKGrAAkVqTs8LHT31FJI+e23UeweJQMt7l5p0Zg7ORgkg13EnyYA6A3cQYGyFiuaYeJVD4P3DnjAeI9LDJdd8CT6cTLIWdchCJzFIkmQEdXoq8qF6M7CRjxugQmEDXuzuRAneSc7UcNaxjBBIkEJbMeoGm0kfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775316334; c=relaxed/simple;
	bh=9Rt3n/5cyQpsZZHjpXmXKmbodPURqbeG7ajoTEA5FdM=;
	h=To:Subject:From:Message-Id:Date; b=dojj9BvGlr0yFu4rlfyL8HBDB+kM6b+gruoE8HNKoMe0URWBHEZQVSYbrrAU8xMxB1yOSsnnBX3rtGNN98kmG1dSOqSXzomhwxg73EP0VRuLp6uHdDvNbyGBxQjn7t1X2Q0ypX6qxdfPycdFyhD2EDrE3yZ1wjAnTRzykO8tcFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nnk5NirX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nnk5NirX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DC1C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775316333;
	bh=9Rt3n/5cyQpsZZHjpXmXKmbodPURqbeG7ajoTEA5FdM=;
	h=To:Subject:From:Date:From;
	b=Nnk5NirXL7YgQePC4FTgz5L5vEbwXkOBth8Sh0Z8Y9S/CMRj5iTflMLo4w5iIDhy8
	 P40PuSXQzFCpqqkaVDWtoClWKb8ZK6bS9AFqs3rfsLjSaoT8puCpT1EmvnfqFfOXrw
	 m3oL9IXdnKSDx3frdPNCUYHcs6RtZvM7nJEkCmkT9zLtU7Q4aAW+9e99iB0ysy6nzg
	 r5PBbm6ZtrN3e5y6uO2u+vYHf37af4nsVVVqUY4W74OdHQhVbNv/Qi89gyqlDI05cZ
	 ye/+FdTXSS7gkl8Gf4KfCGf8DfM93L2gcaT4GNTJn5Vz6Ol6LV9kNrZVtK1Rp+yaJc
	 1VPVowN1ud+xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03ACD73094
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531633371.29819.4365057748303062194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b182a1577196b44ef4807761d9350ddde514217fc07bfb414727101b01ce0dc9
Date: Sat, 04 Apr 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775316333
