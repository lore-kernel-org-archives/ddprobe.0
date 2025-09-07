Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2268D4A33
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757205594; cv=none; b=QpTD40GFkFfVnJ/j9LS09j3/spnQalcmmPBelwAE9LxXeWs3Xc8ossiZykSvGKO/+bSKtR8OBjEgf65rNr//rMW+q1EdfmfeIiDplVITfNNW1eb+7sGPEoOONyP5T34EG1cZUAchO3vcxnt3WLEa4UsHp4PUXLkZ6+kdMmYnjQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757205594; c=relaxed/simple;
	bh=ucbW25s+5WOnN8GvLRB9Dq5pP4HNiqOqhQPC7LoOVe0=;
	h=To:Subject:From:Message-Id:Date; b=oIEmz18TjYYQBu6Yj5oSywQUS/0b3Ultpeq9+QgefYkuxxGHeHODBgGr3US60gKXUzXOZPVMJ11nXIoQsyIfIu1/jQNtbtVUfySf6eI3MCxOH4B6Q8cRi9QeAOhpWgF788SA6ub45USaahphjOJEoG/UNsxod0nESg+XhLnp0zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1lA9UO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1lA9UO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B23C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757205593;
	bh=ucbW25s+5WOnN8GvLRB9Dq5pP4HNiqOqhQPC7LoOVe0=;
	h=To:Subject:From:Date:From;
	b=r1lA9UO7brOtTbJ/eAiCHU5CWOs6Y3IbZAYXiRJHjAGIEWoUVnm7hmVbsz7lQOCQq
	 DHG0/ujgy/h07HN19BFttqsJf7dCsn6pbIeHsqW0oEmrXVgv3u5LMcFZ6qzwW5kW9S
	 PwPAExCE0hZC1qwtIJlps5yaGA/ft7LadNbsC/6NhxmhqwOrPeiAico6rgV7KLBvnq
	 JrXvULDqVn9II7NsnpBejUmbl7dakwyzGRhsmElHVknpBH2NKu0j1lz8dtfws3XU1f
	 b7x8U22nmtsfuQNDB4w5O0zildvBCZJHivklF1vJ/6NdImhZlCTJXpeIMR3PqmknHT
	 EqB3NaG8cOlaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DACCA1002
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720559357.21182.13371562033867626303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5ff1b8a3915a8a19c521f809d559c097d23afb8f5c87acf37f7616d7c9c2a3
Date: Sun, 07 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757205593
