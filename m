Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2D926561D
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757714394; cv=none; b=pspNVySggzA4wMkcfOT8ejs6sQLVeD8esHPCZDx/6yM2vD/NrwJqzhqAljJknmGOcw6I+WfbPJsIO7R6z4HmEq6NcQyl6mBhPobk9vwRvwI3xIxIOOFSgqRCLCc+ORv+Bx2nsdccCfRTzHXCt1TQ6JS/phrE4mCACpaO5OBX05I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757714394; c=relaxed/simple;
	bh=Ve14B23YypvvDC01V6Hv0zUU8McxffY3AOX6DV2Et1s=;
	h=To:Subject:From:Message-Id:Date; b=UEBSRF3a/6IAhT28C8ihw+6Jy+goRoOmiHCYv8iKDw2/mzJCjvDX+Bf0a6esG2d5bG5+XqUa7wMwU69tMyT2eXhHhyXxO6DmcJVoywiOStniD6xuAeU0HGU46ztDKemDZ3CXIwF6akgK72e9QiPfkhJ7qtlIaTjeGeaxCnO2AWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLGZHVjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLGZHVjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C75C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757714393;
	bh=Ve14B23YypvvDC01V6Hv0zUU8McxffY3AOX6DV2Et1s=;
	h=To:Subject:From:Date:From;
	b=iLGZHVjHXjAT3iwQktma60hejbBMzd0R67KCxnGc27I0EVad0RjTJQZUz/5Xut0CK
	 zRU7YoeDMyVIMZ6AEiVH11sOvNjZ3rpeI+xNBZo0Q06TdpDOVDwKD4ePc16q1wTAze
	 aNsJSuFcHNYi3QTvZsdacpw3npWuGP2AMobH7C5T2UYZILYj5/XYC7tx55PNKqyLkz
	 WUsFNjTTC+RjJ3RqJykRhOU8V4xU/Ydl4Rpwah9H1V+54raeR7NmjZRcNrIY1C4sCX
	 7hNPgM9urcHn7zdA7LLrCm5xWrMC+/FTLC+v7eH5WBbLjeDlKEu5sPkhzqSBpxl+ED
	 1RtC312pDlA1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A3FCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771439359.17899.18069234362664848040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506c470f631ded9442ca97993edd9759830b96a8c8a0c665a2a2b14a1b5ece9e
Date: Fri, 12 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757714393
