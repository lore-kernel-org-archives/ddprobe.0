Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271E81E4BE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749925794; cv=none; b=dM7Bpb/MQ9cva1CNDnxbIgZMM9zIU5+eI+LBIsJUPOrCQ+Ieo5kFWbNiZOfG2eVUr1wgdmUcycE0D6k1maeqs58BOwLCzJ/0949n9dyUXZnLRqu9mhuAsVEx5MvS9enIoJabZ9ZoBHQ2J+B2EDJepihp6L6sAX4YHTg0aJdMHQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749925794; c=relaxed/simple;
	bh=wz6ocd//e0O8lDk9OjZfiTboNsgcPdJdKdJlyV5cws8=;
	h=To:Subject:From:Message-Id:Date; b=WSv8pDidDM1y5pJpcfnaA0BWHSJUzFF4AwIQ8ozDfHpGbc3XMN7AywKUgZ1rUKY/onTvN+h0b/4dEBVDEeVSOGgYfgI2gywflqNS2AYDNzBevwheZQCZVaJLQoCu+QFyjRZkXmJ9qYiBlyeB8DqptAh/qEXGExuRRltEmlJfO9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G31v3DhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G31v3DhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BB0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749925793;
	bh=wz6ocd//e0O8lDk9OjZfiTboNsgcPdJdKdJlyV5cws8=;
	h=To:Subject:From:Date:From;
	b=G31v3DhMJHq+Ti3vAAu0vX9DUHUQq5JeULdxqpNPcgh/Cuvbqcno2Y/FfaV/e0SP+
	 REe0Mev36nVwof7THd+kgCMxe3PJxKNzU/F9tch9MeyPQcKcYGVlqBPz3dpDQ/YZwZ
	 HhwVgvY/vZLxOwszzhi0S5kjbWFjeho9zds3ITbNs+0YsdUzq/yZWvTuBPTgiorOrU
	 AfK9r0/AZ5+Re1Omozi/OPizk/hTZ3hXeM4flChw2cMUZVfddguBA/ab9YYd1i98vc
	 CNp6YbHZtquTmJl1HB9eM6FGMZ4lXzFsInNKJ6SnLyNZWwM+oPRE4NoiQlPKJQn19N
	 TQ7lNV5qthUrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC3C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992579358.22976.2693689674403202818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac7273e290acb525094ab0a797c3b51bd275cc6d73d3b0194edde134d112844
Date: Sat, 14 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749925793
