Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497F22941A
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786173034; cv=none; b=quQAYCgfJt/UCin1tgIB6vZ1c7epYAMLL7seDs0TNCPROj/tLP1WWtqrf/AszdrWCj3Jc9g5WyO1SL2naYi6U2LqY35KnD7sm8snXm3qDlmFThxti11O6+APDFUM+EFEpG6nzHFkd94HAxJsXgNkoym/yKuwA+iqvL+aiq/zpvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786173034; c=relaxed/simple;
	bh=ZwS0S6HeQpmaNjPIdCPDlbGLVCo5xgIyFGvdFnDj6EM=;
	h=To:Subject:From:Message-Id:Date; b=IxgCxYGZpCwFVTItlcT1a8c6dGo9sFu9zmt+wDhRTWr8lbnu1nOfPor7vns36DTJ9y0zZDvR1uI5lrQKZwMfJ17nhKxlpgtXqDn40cWUZHf6Rt3x42jP1Iu0wAcmqaeDwsE5rbchBljFJtoikQCwCFcuNYHG6jtoyI9af6yzANA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz/3MNrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz/3MNrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23B0C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786173033;
	bh=ZwS0S6HeQpmaNjPIdCPDlbGLVCo5xgIyFGvdFnDj6EM=;
	h=To:Subject:From:Date:From;
	b=Uz/3MNrktI6t/A5I7tGGbvncJG3p7bLxv4576+uZjaPqJQY48XX4OMrKP/UTcg3+o
	 rr8LP3xAwoNtl8dSJePkI39Ni4XiA41c2SZ4UR6A0UM5PM8EyHW/LNBEFCRCXnz8RS
	 6xtUPihXzWEP0UtLaHsoCVRiYc/s/eyZaSYhF+TD+k7lFF1TywE5pgYRvkqxKQGqtw
	 I7yJ2ZWuSyG97W6pTwFThPdXpN4qEZIJSh+8AeM9pWm1KollBukVoBK0t2b5Asc9E/
	 SdBVykmraPjTWji/OlXUeJivd05tYx+d+EeJrLTm13fff0dFCjV2UP+/IsglgrerTJ
	 hjr56e/sus95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECF3C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617303370.22601.166481069901442093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2c6bdd73360b5d98df563d559e115c42a828782410f3b8651bc786f6e265af
Date: Sat, 08 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786173033
