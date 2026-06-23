Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332673D6470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782226594; cv=none; b=f/WY/u4RWTbNRC95VvnvHVXCZpmRP07IaVMbnvvgqdpB8J9+2YVFa5+3EgdWcIe6PBvjR2+25JRaVBJHWx2/MscbTkL4rpPkuiIJR0QEC4CHf98eow7n88uclLaIzloCCYX2cM37mD/dINVSwYLQLuinDb4QnD1l9OzzZvJ8JF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782226594; c=relaxed/simple;
	bh=VFVrOV5hdulKSwlEbprdzaUYA1s8UL7MoSSqxxvaleo=;
	h=To:Subject:From:Message-Id:Date; b=R6NNrpgXHeSKW+fpUhqYKrt9eZiaYUJKjobDgyCVD2abEGLKDHIqhawaWyL+fbF9zaBWL9bT5kMkBkv3AO7kfxLEzk+i03P+saycd5eNip/420HZCJgkdglRmFEG9z1G5brR9WezFITF9+4YeiiDMddVZbExbZ40MX3lk0XTjFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uITEYOoL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uITEYOoL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4B2C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782226593;
	bh=VFVrOV5hdulKSwlEbprdzaUYA1s8UL7MoSSqxxvaleo=;
	h=To:Subject:From:Date:From;
	b=uITEYOoLJEol4+PzBguvzjpkytl8XKerfy5NMlln1Ul48PlqzxGhEOy5ajQO727Ma
	 +J9XdYQN7C0lLj6JliD+pEYsjiWOer0M+3UGSnOCe1V3mzLUMULu8YhbJZKpgxutqI
	 PCJJk4/TtLjNnerNfCGPsmCbkoicv9SuDeJJiM4i6JD0zmrm3ZNHgnC4bGJsNh0diV
	 jPJS0gSgRuaUoVed0WxDmPBPjipBkTDPNIn0/kzRebWBbkeu8GV88M6x8TDKtF5qkO
	 CWQG6ISXugAhmCZmTriFSLYBj+FmuwdUfkpsl1x4TdVq16nAidZTTZqKoanb2rBVuQ
	 bJrOI9NoykuHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFD9CDB479
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222659370.28958.15398448877383140727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aca54e7cad9c0c3a965871167f0e753b15c2623577f54f7bc1e09c84929ef61
Date: Tue, 23 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782226593
