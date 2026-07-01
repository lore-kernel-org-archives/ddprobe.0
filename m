Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38590348C6E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782940714; cv=none; b=HPVYCKTbcmmegRuCHNI1EcqBPP5sG5tpGGKRk54JT94x2arJZF3OTYgEJOXbSagoIaQ6umGqr4SxE+xZzH+UWG1zBm1CK87rn42k8krOvHPzweCf451wUJEjqDGWXUVtOTNMGmWoiBA1/QfLT50D1QgoXr+KQncSmvwydfAtIxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782940714; c=relaxed/simple;
	bh=4cWUBIjLQe58S2e1JyWE04aZ3NDntWvEKlJHhitCO0I=;
	h=To:Subject:From:Message-Id:Date; b=QeI4JFlfGkBAFos9Njo0bXHOGYYuJn5SMUfsP6pf/y3DlgwFTtnemN+gVmleTlniffdvf0Hebsd0RqrPDzVQEpSBxh+QQcJnH+vja2Hh261KEGcg5CNfGIWxz1n7ged22fHZpKwQ6gYo7faceqyFx0sIMFUSNH8Kkq0ZvwaeNK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbshgCF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbshgCF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2682C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782940713;
	bh=4cWUBIjLQe58S2e1JyWE04aZ3NDntWvEKlJHhitCO0I=;
	h=To:Subject:From:Date:From;
	b=UbshgCF1TspSBI2cpSDlXJ4jxZsC7o9rHfyT+S9OnMQP0k4NtH7As3LAqfrFpw+CF
	 coPtLgt+ZVhT9nAvf1QEzl2P0xwjbixWKzOharmkAbgLw6xgXEGFqh0CFtcsLRT0I/
	 UC/63bNmA4shhzxLR795wnxSETyU7f+8O5smUgcAnzh7aqar5DwBPp2WkdKZe3qJ16
	 21qzDWpRkzspEc6D5eWcXsFf/YbUpcUII8yw8s5M/WMlU58tjrSHk3oDAd4lVrfo+d
	 KIjLpCXyp8LFUjitanN/NIcMRC447N2Ot3q5ZdHlQJivMQoVsyMvQ6SsSKia3TSH1G
	 Xx6fl+yoVtOiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9335C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294071368.12792.13732761552159730261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f98efe8073f06d0e0495ff6afa6881d39c0007ae1eb4a8b5623d7af3b390969
Date: Wed, 01 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782940713
