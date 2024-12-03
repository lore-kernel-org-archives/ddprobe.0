Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34172A59
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733195154; cv=none; b=BeJ9rq2mp3Egun+6XA1n+sTX/Nl0Dm7kXhy0QN1Y3cu/XsBTz6ZTUV2qT19Lj0gTkw4rhXerADQVxB+3NzdqTOZs8YdDxeAvlmfgg5pS0eOZAdFDVtgE5cdosg6EAXTHjgvzaTx73B6iGqN62eupML1CAh3nt+AqnqeWHk0NT4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733195154; c=relaxed/simple;
	bh=Tgw+vCqs1iTtzK3uGfr9SIjOSwX0f0JwghSeTZZC2AU=;
	h=To:Subject:From:Message-Id:Date; b=H92ef4ga2U6lsmO57P9OpfIoiITHXKRw01mZId2CuG/ZYz2ECEUhsnMMsR89I/Jl2JbQHbRHKiDgymgpKM+644gBN8RdDO0cMmsWVXcCKr3vPYNM6yiMBULNlgfe68A3b6Bh7GCUQMYpLpkpn32B422dYODAzE9G+MLXstxkHPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxjiCPw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxjiCPw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF351C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733195153;
	bh=Tgw+vCqs1iTtzK3uGfr9SIjOSwX0f0JwghSeTZZC2AU=;
	h=To:Subject:From:Date:From;
	b=pxjiCPw1wL5ZV8w8t/5h3RYbsbT4BpeufQGnKFOh4I8F4tUKXnZeTwtH37Es94FBX
	 lPANXU8nLuYlkHUBbiPxWUdbBUT2eW62VNoX6j6N7xP+9movlps0Z/kNk+wqAVTpP+
	 m/aGYQOHIm0Wx84nMuoZWsPWACnWsh14diDECGVK5QJ080XjIYnKVxSHGtD2Hjeeec
	 qn70iQ2vFKejfKRmF4v5WoNNvQUDj+23RuOrWTMhApkleq88EhLQwmV9sPFgcvrLco
	 oDU/dkibUhClQNPQGugzd69pu3SaI0uOJTu27iYX1zr1n/+u0x5QFLnb0Duz8mH69o
	 fFrs/gg/UdGOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A070BE6C5EE
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173319515364.21370.4069769080113460549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e17b827b61745f896ec777f78c71180e8c962a0406890286d863c2b78cb3fd9
Date: Tue, 03 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733195153
