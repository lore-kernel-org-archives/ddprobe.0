Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8BCD51E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717925243; cv=none; b=YjkkS3HG33lw7ouGC0boJWOG5zuflzLtVPkt+4wEFlfNw/Zx0f8JFFdRsnZVv2S/35a1437cI9shrQOKZTgb2Y0kU1fJHU98JM0ltG6hfkR+fUN/8VAQYR7cjlXBpZACQP0s9s6AK2thtdShyQ1N5GjxsBeXfmltU7k1v8NkAsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717925243; c=relaxed/simple;
	bh=UZ/HijwJ4k3d091zOC+Mn2nNSqQrRJXxXsmYy64uuVY=;
	h=To:Subject:From:Message-Id:Date; b=YlUMdLeNlc26jlUns2dr3Y5Z0kxGbk/3K1fN7KJ+Im3KJBpNOZNefLvdPGd+i20a1NBmMvXqETPqLswlsvbJRn+PeJzNIHxQjbp6cJvQolbrnfpyK6dYgLdIaZVBfXPYtnTQ9M10ayBDXpDaN+AUanFdFSaH9nFas/UC3IxGnhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9tv0yab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9tv0yab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE732C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717925242;
	bh=UZ/HijwJ4k3d091zOC+Mn2nNSqQrRJXxXsmYy64uuVY=;
	h=To:Subject:From:Date:From;
	b=Y9tv0yabGK5LQh3QF1KKbTsslC3xEsQ/CvkMs5ua/qsz8WMHkydkr08Mfylujs/NO
	 8MxEKhLe4F8Rz3ocxZvRdVcvajU9xUpHsTUwF7kpVcFmLiXXlYGXL5wJPrnP17FvEa
	 YS+qE8yFoOm8YNo8K2ej332o5Qygy11B/tU2FGE1oQmnmPY0mzUrteP9bQ5wa86ZHk
	 PYiX6cDByrdk86stRwIw2nFSgc9FoM/xJUKz8Co/tDzY94NTd2zORyrGN+dO/4Qvxr
	 kHMvftfl4ZzFseD0KwU0NgqjW+XMvKRHfGuME9VqzlCl/YwyWx/nUpTndmEkn6tI8N
	 2TP4hriGO0tcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9558C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792524277.16118.16769880741031144945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e350b21caa0874846df0299e29b4c7e770cca44f8753d8c0149498f5378ca9df
Date: Sun, 09 Jun 2024 09:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717925242
