Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DABE305057
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768635234; cv=none; b=p5eNl2MSznaDk8BNQhNFsku+EuadrFYHy9cruS5laME0E9ME53okeXdzQIJqd4TSZg8uHr3myAX57hkAv7Ovj7hVSOV9+l8c/9GRp1fJPhICZUwybR+7ht4n0Tb80c7BLIRA95SuszasnPfiK1vOCa9K4JRO1YsmjbVS25M6hHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768635234; c=relaxed/simple;
	bh=F0W3Gvk9wSdn5TAzuKrpfbnEB21gPDeLSwSkXVUZwmg=;
	h=To:Subject:From:Message-Id:Date; b=fBi1FFchbeGBnW1Q/dvYKrqxK8S8qyKiwrSjOX29H9fOcc+PhxFJ8oBTmBRcsYtsI84ZfFsC0WFRVSDHdg8DcpqvnVVr4xPYUSTWwuCAuWp6RT/932/0YlNLP/vR8wEvTHEnZ3gjajmPkAKzlUkmIMMqPd/p6Pdqs/0sLErkbBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJlOLCTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJlOLCTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AAEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768635233;
	bh=F0W3Gvk9wSdn5TAzuKrpfbnEB21gPDeLSwSkXVUZwmg=;
	h=To:Subject:From:Date:From;
	b=sJlOLCTVliB+tGSMPL41wx6DLnkxR7TK/k27r2/SXJV1DaqYDfA0sW+7PiYpQYliw
	 uTp8WZTofZbcaJnsPv3rP05GS8X1kiVtIOK5jpClEjSaNdlQlV1DSoVnkt/X06UDkh
	 0ZlbuLbx3XfjJ62ysLI+in8Cm3u9P03gJF2BDBkwQKZrP26EIRyZLZ1GXW9hpvMI+O
	 1LN3p6W3FxAE4uGjzOmBWskEpsBuex5HmBVuC6FCZ+WPGMUReVOPGP2iddefdq3mSr
	 TNWbMCmzX4JJH5yeKInSX7QsUwjj0uJrbkiC9XVIdNetkw6B+8zSa4sMf7wi59b0of
	 mppjHoL0iZuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96610C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863523358.24412.16618603745211163051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdff0ba9832b5f31844d15803481f161a3dea346212791985de6b8143250c89d
Date: Sat, 17 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768635233
