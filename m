Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409415A104
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713303563; cv=none; b=t8m0vgBGRi7sL6L1tjlK+oi1vpTkv53oxXeVhVbCIb9g8hM2GIhIxcH2NGEGzMht5gOEn45IlTCgkDVzBHGXO/qXMo4GgqfFdRXShs3stCa/g34ZUC8HFC4n8i260IGOHWVa8Q6LyyFVsU8v/UaR53b7WYgtvb0Qcsea1jRx+go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713303563; c=relaxed/simple;
	bh=AQ1eTr2QVMQzjDQmxxqT4Ng40XxXW3ySn8Vas4ApXfw=;
	h=To:Subject:From:Message-Id:Date; b=ranWhzMaK+aHe9zSKzkmtOT1O2YqNYkZhCqCqfysAkU3mPlDD6Zv7RecNtVWF9MZlIKKT30LnC/eeImoaUlucD5p9FeXXeGFNtZLMfvBwbdrsDpwD4xomXhbKvcUuk1pRU4+dnue7+wMvDhAXlnCwbiZY3TdjecGsl5fjkRYPL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUQE6f6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUQE6f6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE4FC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713303562;
	bh=AQ1eTr2QVMQzjDQmxxqT4Ng40XxXW3ySn8Vas4ApXfw=;
	h=To:Subject:From:Date:From;
	b=uUQE6f6xOtPZ7TM8rWS9IB5g4lnppOMFeQkRMB81KXuoXBPardvriiWTeTn995mb4
	 5yayIuNxXwSutomZCNZAyf+PQilKtTgVlHxmMuL27XbSXdHUhhqnKvrYJwnaFrxHoV
	 RJG2eBcb50dK0AHoGjW3ybCeANFLZXwMX4ycq76uQwm+dPnOuwefkQfWnwomgOT88k
	 KkQhMG5IqpUV3P7qBctWqff6VTmviMPtBGkwZTOPlMivHI3sOCAkOhPseCGC48wZCj
	 Gwm4Avnpclf313LcCenCnJo4LGzUI3D1poLsekdWKyuHDxZBEgRrMCa541svl1sZMT
	 VVfhjHqo6BMZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA47AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330356275.5423.16575866567725152676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757f0720dd45a40457a05593891b1a0749294fde173330d3255fc72b1ec1c2f0
Date: Tue, 16 Apr 2024 21:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713303562
