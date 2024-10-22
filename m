Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E1A811F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729580154; cv=none; b=qa4c/MLfIOKoCK6TjB8gUpKa5qLNTB837UJieJxvTHmcZolqbONJEc6mjdFi7JWZZvl3pLnKg6NOe2Snd2S7mev78R4KNNqbB+zEXSYSVk8HJSrOD5xg4TgkoszkvP3X/NBfCSMzAbs5RyqBerA6rDewVDOW57W6pNh9qcWatpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729580154; c=relaxed/simple;
	bh=28NKKUjq6nxwRFBo7vfYRyQqZoiPK8v6jWUb97K6fEA=;
	h=To:Subject:From:Message-Id:Date; b=IoEJ4n9lQqK4hq2KGl8qUmS/dGBZMZbkuXn44OW3fMMXNgXqwQiNoxSC5H+AtQ6ar4WVLV+lFHLTgig+Llh+pbaSXOZAS6Oq+8lGh7SRA7uIlGZgjTb3Sai2WFOlWIQVGmkMGn19VTHdlRQbWqxfmCAbPR22ArQU3psh9V/KbaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8057AAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8057AAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F67C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729580153;
	bh=28NKKUjq6nxwRFBo7vfYRyQqZoiPK8v6jWUb97K6fEA=;
	h=To:Subject:From:Date:From;
	b=o8057AAC1bI5Ddn7IsaKkLk47TReKQtP4Q/DPlIhniPq4h4mVaQdCVn5cmE/YJbfs
	 ZQs7DDrMaQXbk8h63mJxNLwHifd4C3G1lNADVaHN5prJmoiuAEkEt4oExdXXrf8xcA
	 5tyf3Zz/1OEbh+gne7V7ta/Te6peZPxSpoH1qoc8AakurPrFGTmi0bobYq90cPz884
	 7C8mUHoS6A3z7TslZ70XAmZ9DTXlfSLKh/KFjZNr8NKYhC5PwHf9hcbSHOvxuc2AwK
	 hxxpuNko7qWAyOhVaxk0A5lIceHJp85DSuyNiPHE24LvFTJTaP3hk2sb8uiL+h+la1
	 Hpvy7Eiq5aAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EBDD1CDA1
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172958015361.31007.418955544087842983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20536802d77e8cf7af06994da506082d68b56b2d593662844a4aab8faeb8077
Date: Tue, 22 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729580153
