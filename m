Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271D43D45DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786363834; cv=none; b=aCX0BPVWVZ16Jk1+yhDX8WmJcz+4Vpp1mjIfzcYCsOF6pU2zcQcL82UHuflIwLXvJQ09HVUK92zHpTUBsqjzl6n1yJr0zOIA9QaQh1eBa8EAVrTOBOWVUNUKaRCPPM3WnxT4vr9R0If56D2rZHkeV0E/upQ8fe0DPsonEueK69o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786363834; c=relaxed/simple;
	bh=lcAn+mNZeuQzD5QKaNdZVJgxaSgcB6hRRSueYWzAtL4=;
	h=To:Subject:From:Message-Id:Date; b=SDLNUk0d+92hKhsJgsrdXcPPBdebx39Wa+xDwjH9IlWtEoc/cpBBVqWpseEwqMD8l/GgGnBtiQ93OA7+0+5l2rWJa2djxXD7fUiNS3//nIdU8ObLRDQt2vUCr2a6ZhRq8R0UWCKZsNFFpAN1aLz50xyQik9eWNtAMRUE1PlD1tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGevb0J+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGevb0J+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCADC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786363833;
	bh=lcAn+mNZeuQzD5QKaNdZVJgxaSgcB6hRRSueYWzAtL4=;
	h=To:Subject:From:Date:From;
	b=KGevb0J+kE3YTPgxS5pIrHmOv60yLzKr4Biom6nQFbI998/iOaXjqgTfCz/Tp1NO4
	 ZpaTxagcy9mEbYA6svJk23jax4S1M/GT7bB3lWsgTrUuBfkkGFDTgqJPDhiTQYVdKe
	 /i0qZ1oPAbqFPeAx5+D2WHAQA2ol5E/6qmYkaGk/MrLsHMEm3DxPp8OFvC9YWQRpxE
	 MaK2T2x4PSaAaVttV2OJmGyy+I/m3fVXzIxIw7dvn/QR1tcaYIEnvZOa8T7UD0PLfT
	 FO/LJTOjgbmwvn6uilpzVIieRwRM8ZawEEC7FMZtfWs5MfWDaoE6vlihdl6J3NFpGM
	 7KCcoQ0pVo/6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB72DC5AE5D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636383369.18528.17552499900872777297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103aa6d3b962693c84d19fc7195d60cf5ae7b08a8ac4fa85c7655cb5b2c244f1
Date: Mon, 10 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786363833
