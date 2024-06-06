Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0526EB4D
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717712843; cv=none; b=jwFQpIkvaBm9j8yNZJZLSavjXz5ZvH/uQghB1AlUXGbEOsPObgsI1lN1gj0ZwyJceIDt1s9jRuh6TCkYTNn5vu0BP3CmAdhbVrhf1HlJuPYrktoSkrAvMqFy4S4CHbMgUtc1HdUgp9ugIby1HiirgOKSFLyD19vrEMi8FQLbqtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717712843; c=relaxed/simple;
	bh=Nop5BBx3AfAGctTqowi8wefwFJ/p82tOECDl4H5aQ+k=;
	h=To:Subject:From:Message-Id:Date; b=ROpNRvvr3NZWhrkO6Ky/O4/nbVoKyObohEejYhXikF1/Cs3WPzECmRBn6iTnhOsbzzXVWszAHkD3e7c0gm02i0kbKj/GwACk8NPchNoWLh8P2ITUXAfyZty0z9kb++/cMKa1AURWlVPovCLMdC4ZL/jYpQgDG3whWukGmGGcWEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDxPlC56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDxPlC56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0611C3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717712843;
	bh=Nop5BBx3AfAGctTqowi8wefwFJ/p82tOECDl4H5aQ+k=;
	h=To:Subject:From:Date:From;
	b=rDxPlC56CcjZdMnl373m9+BHCXW9WZQvg9AS4KAIX8GVHnAkk60e7J0rawpzN9EW+
	 9xho+XwcDndWhtvxGZgT9QDr3iXJzArqJOrdPAMV6X3nwCHr4CCeJcPUYzIjFe/Mjp
	 hyMrQ3SV6mOkwC88QOCBM6C9xxoVkStEsmgsQ5zMYsGDUjkJZDtWCnB3p3wnU7B0q+
	 c1GN9lLJibH7zVV628WxrnUVCT6o7PgntvFXfepqmESPWLqOQch1gjEoIazpL326Gk
	 JQzRrMXHlRd6TLjyFO836buwZx+AIZzkRJela0vyeUs6fcMuo3aYHi4ORfog0Y5qy/
	 0AHiSwOxsnd7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D30C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771284283.25311.11035843882862289212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a268439f931166867186f81c23cd7dff9738858554058bb6bf8b984aadbb108
Date: Thu, 06 Jun 2024 22:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717712842
