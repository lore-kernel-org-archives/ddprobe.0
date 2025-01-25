Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4809725A623
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737797754; cv=none; b=ImnCh4zUpcPxu8WHdVMLIWiCgP51SwgZ/4bxAx6994wSj54Ihf/aIkWlINHr/ulZl96gS1z+6f488fdrBAKdlkOsBTSeUaIzvLit0KITDDdN8OeqXig1kiRrs2CSPyxrhA68uB8X+cdOmkjrsQMIczpjb9kR/np8krAbVdpXO2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737797754; c=relaxed/simple;
	bh=u3R8sx6TsHxgFsDEjixKO0z38LOfA6kbxxOHL/6iKh4=;
	h=To:Subject:From:Message-Id:Date; b=uDRFMky8osLNmebcR/fZdBnrG4Svz4/RDtWowYp4oqYv+HnhD+xAEYrKf4pjcoOnIJxW3rhHPznKbnWQenvI2x2QsMk4aPFUJYoJoV9XRU6Q8oBgyGJKatODblxHfEaqtCwuMIEH9hQvCHOESBSSLGCaxEHNDX3wpuc9ajtIlwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FI5jNlxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FI5jNlxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14C9C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737797753;
	bh=u3R8sx6TsHxgFsDEjixKO0z38LOfA6kbxxOHL/6iKh4=;
	h=To:Subject:From:Date:From;
	b=FI5jNlxMfdcK62KUCSIr8KfvFKGuXd6nPG2TCS6+/akS8UElf7xK0iHn6rxHZDdD8
	 LC433LQYrkbjjB5DzKtbxgoKy2lC5WWAas2fZxbXYC8ZlCSWCMaqPvjt3S//3UEsPR
	 ntHWcdNkny4ILLH2iNWC81sTOhQoBLL6w3FjtvPwBd8gXgroxu0tLBb8puvCkZbWER
	 HAA1p6x6lc0kLS7mnf+IGQykiLxCfOByuPfnnTK2/YVfTvtR+BkOFeEMXE1PvL9Lss
	 4SH0eP3TkdOkDvch7YPj1OFoorONHuZDw6Jj7udxC8vD9q1XpAskQHaSyll8tBAW2n
	 mfkUDxGXKC2Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A881C0218D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779775362.15199.5492503203059783519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9964d48ea9204521bc0403b6bb1fbb36fea568fa02a9bd549011dbc062a22f2d
Date: Sat, 25 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737797753
