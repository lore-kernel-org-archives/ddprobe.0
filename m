Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1146B19E819
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777232254; cv=none; b=cCC0GXe0uYZ0xnqa980rrHxk4lnF9lJstLZTFXkb2c+g/FMuGUHwSaNQRVyuPkBGxX5uQ3j0gl5khKBj0GfrA7CogydG5ZTTCuSO5UiztyQ1dP+MFbYRW9En4Ix9fYS3X2r+NJRobei46Qt4GgB2ZAK5xvkQV+zEnXKSJMfl1lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777232254; c=relaxed/simple;
	bh=Z+dsdV2GrEyDXoS2mU/L9Vz12HWTmLnLtKfPPEJmBn8=;
	h=To:Subject:From:Message-Id:Date; b=qLY85HqfVw1V411njoBe1ey4LEtFRx6Or9Z3kDqj4HO3JYcpeRy6FP1YGIyrIyPwof8LZedc2Xqmp0tpvmnKxSuH/9v/FyzHx0TDf7fkDMg3BTRR7NWpNbyIfZXUvO3OnZ14+o5tSGn5ebhZX9yG2W0d3+sivTUgiWcdialAs7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQLQLR95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQLQLR95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA929C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777232253;
	bh=Z+dsdV2GrEyDXoS2mU/L9Vz12HWTmLnLtKfPPEJmBn8=;
	h=To:Subject:From:Date:From;
	b=cQLQLR951HS1YtQOitrj2+K5TUVOUn20/adm5ZZxkFoyDBAbeD4C4bdDZ0NBvE5sQ
	 Hw0EqwCqQHXlm8pyb1YeQJrkU8+MKWWud79O8LJjxyanvehaTWbkSaQNwnj8je3Ze8
	 S/Ja2lCMC6n2QKar8gLJuP7yLD80FOBtqqIJxG00AXCMZnhC/MxyxU4IJYTr+Wagmm
	 DYa3sh99zh5/Wjbsz2MamtcF7OL5c7yOET2w94ZBu1cQVAuvs3UEPMWan28JXP2ZRd
	 5dEyNFouJhQGbCbZIBppT5MI85mx+lyQlAMrPM4HbBWwhljL0uG1o0V3s6Qe51xNvl
	 UsJwYg7wmo+FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9B5FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723225368.10502.14292094709476951780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6047ff5d98e250c7d7a46b6b86dc6abf65ff30b84a89a88f05d5f81ad4a8aafd
Date: Sun, 26 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777232253
