Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B152F5335
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750222194; cv=none; b=DpFRD3jNZenOdgcgSxXKfJ/CzmhESpQ475jrCN9dEGhDsJdmXlK8MrZ5SO5AqPPhe4gtuMoDzBu7RxgE7uULaUzKz7LbFFyG5U7tmENuGTP2NSPtacN6f/Ajb42Qp76qQOoXZJ6VBINTrynfe7IPX0JQeFQnWG7iwvmKmQLewf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750222194; c=relaxed/simple;
	bh=b95ZfIGnRJ/rnDq/IgcXQ1/hS7vkw158UV7InncGzgQ=;
	h=To:Subject:From:Message-Id:Date; b=iQ90uKhddergcXCyRYx/D1On7jOMQrnzdeDvew70tYrRt6RVd1KpQFaM9DTQ9pz/RgS8TPp3vtK180n1e7PqkTf/NrRx+Oz7128LNpyJkESAOgdPRhUg+DFDB/NQYE0mjr7HL/lg6q95tOS8U499zw5co7ShSCF0Vb2O88jewl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vh1g57AM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vh1g57AM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A357BC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750222193;
	bh=b95ZfIGnRJ/rnDq/IgcXQ1/hS7vkw158UV7InncGzgQ=;
	h=To:Subject:From:Date:From;
	b=Vh1g57AMN9Na2HwBTjJw5igC0244/0Lin51I+UeuK84vbT5WUwLlPHnx0IkUlwElq
	 NeWYmO80iz5ebJ+wLe2GFpCwehk007E0EjpUHTdKOO25fzLA59h/MyatCkTTK3qmzp
	 0l04sp8vufxjV4qywd7CZyul8wm/WU70tg6MWtFPYpgEOl/x3BKefl9CZe5YCGggdq
	 6MYc7NJTse2S/Vk2FedvaIE8VJR8LQjt2EC8FWWAAgSUvwzW0ujQvca2jejau6wyi5
	 RyzdJmOvIeFSWQAeEvi/uyrxAO7kAfoQgZZA9r8wLb4ujhO6kFdz3YZq8C1kbOEQ9J
	 kmaIzbf5aFQBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902FBC7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022219358.13860.3514247783389664127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0fa281d51b4cc5b26825f8da947f0326fef1742d628603cc0456c742b754f7
Date: Wed, 18 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750222193
