Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E1627A907
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785250834; cv=none; b=RMPBymWEbMsR9J4HKDstDxtwYupFkK95hX3WNMrGyPsvFAtOjRoD2rxwscUrhDrjuaFOqZiZLNS4jvcDqbPTuluEGBcrI1DOR8SSEWaipEVmJsDMszbZLz81XnO+U4eslVl9W3AK6yAWnwWZXfqgKtU5r/dW+n0aLbmVSlJcXZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785250834; c=relaxed/simple;
	bh=H5w9dSUVtWPSYsO/Q6boqFebO2Q46djOSo+eGzv+CnI=;
	h=To:Subject:From:Message-Id:Date; b=UUdewe5NPWSzdOrbkYtHuvJ3pOyUn9SQAvLvUKNCVRW2q1z1vcisjRvF8DWRewVaVkOqT96/JG95/90goMkIaYnWAwZcpjGDLDP5NY5oW1c4ZBYnM4h2HmiGZ2yR9eBdxkfOsRUh5lUhk+aaXMOtANe/usdul2kPC3EmsLlpnYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqFsHzJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqFsHzJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEC4C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785250833;
	bh=H5w9dSUVtWPSYsO/Q6boqFebO2Q46djOSo+eGzv+CnI=;
	h=To:Subject:From:Date:From;
	b=FqFsHzJ+N/DUgtenlr1Eh4rVfbY2AafeM9JO+gqwPKIYT5/0+cFTaHNrsBjpvr6q2
	 sc4mZ0q2ztpRwqHZiH/pSSCW3ZG0ODq8ZJtFRUMcOP11HwIhYqFszRhfruAHD8eCM/
	 X0rz38Nh7y2wQFPT8UURWnYKYkcR57d0KEBpYL/tN17LmhNrgto4oondM2M48NibGX
	 doMefFfLjxs3hQ5bgiYCIybouLSitivMDlQFy4imeKHIvjbp+EajrCSb+UbrFNO1gy
	 THKx1UjLYKaPFdFzvICBG1DQipoNy8RhXWoLGRCZpaeJVYlEOZtTiK7WOsNnJcYqwv
	 LkGQGSVwpVmGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9073C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525083368.20959.10185508475555108582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f24060f2435e12889a2400de6c61fe3b3d585b90daac9f7c518b972c9870a5
Date: Tue, 28 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785250833
