Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E13747F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763251854; cv=none; b=LrEpG3RQzHTqnO4f6LekzTi+VPCUdzcLOd8fHV77YGEtIvof/z7yR8grQDE27FeT4C5aKdUx7apM8lpxz8OWonYsjmhB7eGFJS8LPdBEsXXAfPnVrCixYOjoe6OD40nHopcYlXwkQwrMtoVWlNkbuH4NXtLV6QYjkQHMrsFblrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763251854; c=relaxed/simple;
	bh=dWPN7URpbtDQHaBYpnoVYFby5Os5mJPx/+221+hOrhA=;
	h=To:Subject:From:Message-Id:Date; b=X5AspkVlUAGx9paPUt4AKGZZMdSdF4329sMkLiGuCMvxvr7KSwJCRhW9NRYRP44HFDqr/VkrVtxHlPPyoDlQFRbNiMPTGUlTHk0Le22+59IIRK64+4mPdNJbupGNvUIcMJjoo4+NX+vE89Na+trg+Rj1nmPz+nlmyu5QggxbNCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt+63isD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt+63isD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA28C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763251853;
	bh=dWPN7URpbtDQHaBYpnoVYFby5Os5mJPx/+221+hOrhA=;
	h=To:Subject:From:Date:From;
	b=Gt+63isD8X9E9vNzA71S7sT70xS9K4oJYnQSkJj4UfAyGVdglGYAGOY/ewBBRp/Tc
	 D7vDiTOzQh1nytItJ+FuX0Aqjht4A2iUmZjVpWLYJdV7yKhpqqaTIWF1GyAyp88l59
	 LSYQpMPksFUt3g0VkXSzPgZGVS0M+ZixF76jEz8xq+XOw5p7l3zR/Kx0hDXscXe3Ps
	 BsTouwQjmvr4jbco1y/fWiUhgmd/jlzD9rscwq0r0lN18wpdi4a62UU4GhSiju/X5E
	 rHaVGHz4XjOOSYQHFEKL3egWt80/GTH07tlUUxtWgSyn/qalXwV/kmsuYJCUkekCll
	 PBD3jAF0WGpoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912A3CEBF86
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325185358.32523.3019658355328867170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd31af7c4216862abc322c96beddb5b8e8c9ed922bba66f697be8d6fd3c315a0
Date: Sun, 16 Nov 2025 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763251853
