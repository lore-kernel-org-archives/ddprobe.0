Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D481C9DE9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728568554; cv=none; b=UmoN5cTGnBeW7Bazx2bYjW2CSiQNfqxgHpeVRelfJDIGY0hJn8UD4vVZl1ehG0dTjkKGG2PmPOIx0CUTOWoNkSVXQMgJmF91Y9KKmAQ7NBi0JEX/PdOId7mRt3KKfT4ThHndi8E7cO4e91u1EjcXTlV0oouHFd6l47TOBZRf5uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728568554; c=relaxed/simple;
	bh=0N7yZx1dIXdobvHVjjoy8Ik/iMJxcX0W1EndV/YJJEo=;
	h=To:Subject:From:Message-Id:Date; b=ttlLoQxmz4GAbLrB8rRtCa2JNtXUbGZU28CO+34vy5T1JInIbmI6C7nsTdi+VWAbZEgdd6R/Lg/ImnknZi72DGXgHvnHSXYyR/e0O0k3sQE6sbUUpTgxNTr6YudrDlL14/RxNWpLms84+KlMAGKgolpnVfMhmcmlD2NJlXwJoNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXUTC4sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXUTC4sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3784C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728568553;
	bh=0N7yZx1dIXdobvHVjjoy8Ik/iMJxcX0W1EndV/YJJEo=;
	h=To:Subject:From:Date:From;
	b=kXUTC4sgwNiiO+7zaQXcntcfWSChTE2x3NBIr8E9tehApWkB1FcDYVSOYhOBT3g4r
	 G+K5lmpNw6dBGgF2uRkboLuTTyctkmvb/baUkf8yLNT0eLCgnBi4ckLPyWbq5TDnEt
	 hYWROQQzixXbL4EGMS27Dv3i+/whlub4UXYt6ufnHdyd9caYzph0NpBawPLseg5ZSa
	 9bhGN7pjytdbdDioUpv5G3L0hxXz6LozMtNfmSkUd0aSTOdStr8LC/yXf1E40Sh+2I
	 kK1bzLVJvarwYKzxTdXfmkd+lk+iiTrBB9oP53d54nCd8j52gs44R2Uj6sqBDWouw8
	 TexDCcRPPaucA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF8CF11F8
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856855359.12601.497489264173000958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fdc33a84db28bc54653e574de4944fce30a0b26e25d30197e023cbbcb753d3
Date: Thu, 10 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728568553
