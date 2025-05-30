Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C684C92
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748647794; cv=none; b=YCOXPe+1yVRW/YiFKtzm0SNhjtnKa0fWzfJHOJ+Uh+CqcdZ5gR0y2Xl1nLw0JrAPFXHhY7oC/et/ZwjM/VSaBEOM+GRJHEuqd99mgZ30phO+UQtdTIv82PUPEXbHOiN7wFW1qpsGoYEODhdhcHE/5fx2UNW2PMhSby8I7leNRzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748647794; c=relaxed/simple;
	bh=dMOT4fWZlPukq8fb4m4/iWlX17HdrJ6aIUZr5cn9WkI=;
	h=To:Subject:From:Message-Id:Date; b=YEm2vPfgLSHAL6+WcEo9VTFvvCuVX7bROSAARFyHF3UV+5MI9LjrBKyQaF5bX1sKYOmLhKUcAoUdzzLlExeAaVb+4JmeYw/9G3gaRet+hye3FQnep/pgbO0wIFekqnOYUbBsydQHWHbZ0NmUoBW4baqvkNOuowm/NQ4eV/v0ljc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQra22iJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQra22iJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB855C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748647793;
	bh=dMOT4fWZlPukq8fb4m4/iWlX17HdrJ6aIUZr5cn9WkI=;
	h=To:Subject:From:Date:From;
	b=eQra22iJca+TZKqfelPfDFQ//KsGwwQVinqdfWtc71j0BpWVRmdx3UXBMASM9bSsX
	 G063jXBANEBl4lIMH2Oo++3Mu005icWUgh8NfiSBpUOAE0cyKIfWSOzG23TZ1e09py
	 SFxO7rdytUxryW39ClBWo1n8xy1L4boNwidNmV5LcbvvJJS9nxrB30K8YO/gCgfZnv
	 otOaVc4sRtbQEg+BuNWm0r8Bo+z+ZXW2HIjdz2L7kxTKhdJqfZwQHC0/5mKtaRy26E
	 SjbDeuTX9dsp51gLARZ+sLSQeEZQARFpsLaoWeGENOhXcicSsks8O7sh6gzKqiUX24
	 7b/dcJkeazKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620DC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864779360.10350.13089794368798534407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e667e74fc4006e19d0ba8abf9cc1bbe073d1ae921615bc3e1cde8bfbb7688c68
Date: Fri, 30 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748647793
