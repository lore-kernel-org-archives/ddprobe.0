Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F06C29E10B
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762558794; cv=none; b=co1pyCp5FwvEOC9xWfdfKI9z7jZkpKWeE/G3+qQiOihU/28vJoqwN9uJf0xkmrWf0uTNSDV6fBMaKM5Kn0d3dTDO8hNPkbKDNM2w98bpC+V+Dz1t0OLeKfZpTjz6qEJTd4u8FXcJYAiwEl2UE5+oYAaQRB1z8Q/JElLirQpZ57I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762558794; c=relaxed/simple;
	bh=r6Mu41e2Djz1/PP6N/zn8Hiwn/JGJhLqhyG40qukWLc=;
	h=To:Subject:From:Message-Id:Date; b=PqH74MxVi0wTvf2NqnxqLXI7vNRDFgPnmZ4hDVvzBzzoZOrwJ3tODBvbzZeapGF12WNOpQVByfen0M+FQRnK22bi9s4XPCSdVBCDeWpUEDZRe9jl6tMVUOcHVzfVbvEK2SoXihBjQxeyoBQgE/PPouZx1Kl7yNlCafHeFua0jGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJCatvg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJCatvg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B76C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762558793;
	bh=r6Mu41e2Djz1/PP6N/zn8Hiwn/JGJhLqhyG40qukWLc=;
	h=To:Subject:From:Date:From;
	b=nJCatvg21tjWj9zIOHo+BnxvWgTmXog7nf9hIuDDHgA0kdyxJtmsXl3LhJYQ9XzF6
	 +tId9D8mATrQnXV1rWDWa9FqpazlhNz62DpX61JRMV7mY7mfduhl99RXJMuUsSdjoy
	 68RZ9Vbghz10k9lt100jCJJAc1TFOoKA+cV4F+aJ8fVOJdlYmGhPXlgHBUpiQM0O2T
	 BYjNnZbEqWafpe45RG0oPCI+ZdZVivF/625COGx4lzmCHxS6mCf+UmSp2Ly8CKQdip
	 crnga++re5Hvjr+PDy19Tu+VI8F1fWBdFmUsDBa2eDow/lUsiB9kIBUiw2zRj0PzRZ
	 pGB8zd6SG550A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9437DCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255879359.21812.13636401572437479047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0064bae9f6d35ca103b90fbaea5021229bc0f29e1e02b446f870d0cd8f5fd7ee
Date: Fri, 07 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762558793
