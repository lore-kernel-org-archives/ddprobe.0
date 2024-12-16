Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A62010EB
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734341754; cv=none; b=XLyB3Z2xyrzCXwndNERLznF1poGpFGp9LqjH6PQB6NW0eWIEkvPkix0uzILJYk7V44Ln9ka8CamNlqZ+Nb7ui3BnpBH02NomsbGMCV3chHlvQk1RxL1duXPhSYbM0ye5Tw3CBxFMgmpqVFrqbB6d5pHgW5rvvpzqPVURwkzQRtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734341754; c=relaxed/simple;
	bh=KivpSp7PuzmKSyKUsgbJ8KbzFIJVhFXyd1pAArYu0qg=;
	h=To:Subject:From:Message-Id:Date; b=pzSPq5+7wcHYIKMTzekm8c9SwJjEb7SjIQz5/xRyhyP6vGE5GqzZewTS4RqpIRCWRMtDhLbTtRQqLTc/KqFfOBVDThNE1dWx3PKXcbdQQxtXNUrodzP/3z2IWRLqMgkTBrrK8e/4duth+de2UTJuiSb1EFbX7Nd7ww5pimLtzPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQcEENME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQcEENME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AAEC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734341753;
	bh=KivpSp7PuzmKSyKUsgbJ8KbzFIJVhFXyd1pAArYu0qg=;
	h=To:Subject:From:Date:From;
	b=lQcEENMEZdeuBGBkjjJLlWhLXckWuDgr+C7UmoGNQglQ2DkQmnEZnKjgIQkc12CaX
	 7UC85nrvji2Keehvg3bD9xiEzjMnbaeKHYW7i+olvNHeLU1U138mghHeDN132DxKyb
	 wwBfwV2VbrTsfbJ2VMt3sikIC1GQwBYKbgX5ibMthco7R42a8owRXdvMaM6WdfNGa+
	 gslKDTuLtXt+HLOF0OnU2/A6ap2oeeFpToUKDGSGMwprvm9ikTP5vQL+KusRjmuVOE
	 MnN7a0DgRm8yVnBrc52atrCHKrz9JPV8Jzl6yoklw2qvPpQtEO+/CEyhigCMhH5Jtj
	 mYVLVUaf+71cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B5E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173434175358.27995.6603740371589681477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2d1043e55ef886d43728efd81f001fe11e47afa3f3ba4b686ec9b14e1b8079
Date: Mon, 16 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734341753
