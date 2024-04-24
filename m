Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A02125C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713922823; cv=none; b=E37oHH2G+9dF4eSeXsBVvvQygVf8wsTGxlAEHgDYKxTUtemaq4qyuvZTGi6GiWVaEH08BTNqj5uOWdiMECmA/Fv+s4WDsFRELyGQiH50JsWK9PzElhktMGDif2qLbf6GAKyjntLiK3MifhtUX3TYhOGA3DWoko+L3GzEGV6xcow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713922823; c=relaxed/simple;
	bh=fQBWURUhrW5JN9rJ1oYBZzARzKjWZqZGPCLf9urIVCU=;
	h=To:Subject:From:Message-Id:Date; b=ew4dC0Ol3pWLza9MTkIGKh8muSrwogWohWXiHNc3lm6Zb7qjQWYV7f+SujxwHc8pHFDE2pLZ18zoZELhZx+2SM4v1JkLq/OgLXw54iimzNKcqySqDeiqs3Gkj/tSWkx3k4AUbkVSEBeLhXpXYWr22AgTqRYfFTuOgYmWNt0ZQlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuOkNwHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuOkNwHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA82FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713922822;
	bh=fQBWURUhrW5JN9rJ1oYBZzARzKjWZqZGPCLf9urIVCU=;
	h=To:Subject:From:Date:From;
	b=QuOkNwHQYHk9AKaI/vB1sjsDKF2SZj0GzFYs3PylkU1DN7F8l7kmL4ip5/RwBjMrn
	 JgowYJoBbkpq5xtJfg6JcHt7zZEJVZt4oX+HrJ39Cx0jjY0uLReaffevhEViiVlDcN
	 AoCxnnIqbAOQ3qovHoU3bqyWO0fz7KJc4+cY8ioFpGJUl2u6DSCR0TxWP4aUXMEUos
	 Aog1cppdxb41ZRRZuhBZb8QmJk14PTq+MJkNVLBYrnbyWGQSPcTTjul4ovO9uoTgeP
	 9Mkib28jbAO2qIP3/GRRl/2rdgVjROXa6JdzuvgdFC/NaccKBC2no22zg7JFIrDjvK
	 n7D4l5uk+TAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15F0C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 01:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171392282277.3015.12455484992327484525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d839dee11b1ec847eb2b77823c7514b6d1ac6510641487baa9b6f337c7a7ac3
Date: Wed, 24 Apr 2024 01:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713922822
