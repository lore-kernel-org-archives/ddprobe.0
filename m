Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF176AC0
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721106323; cv=none; b=owDFA3TOXBvSe/ltWygHn6tiem+C0cROOPtuTbyIT7zGYMmxOyev0gtTkOjZJ3Qs6/8Yvo5KBMppWBwekTTM5NhuCj6ruyBFbjkpmFCtmHeaYw/RhHZweLR8lFJtnSYQY9jEdSvH4Fc2oMSkwwN0EKOXGRA+HOwE+2tkc8W4FVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721106323; c=relaxed/simple;
	bh=7TpEFEfyV4lT3yY6q/f0y24JqRncSFhHANYVCUa73ug=;
	h=To:Subject:From:Message-Id:Date; b=squkWGIAKtBvLQx7qMDytVSniABJ98QS+mzUGvpSUGKmGuet8EZ5U+LgxLInrTZ9xivLVR5EsqfPfkawxBuwgnsw12j24ou9GkplilRwbaMiNYciP3e3x9JgyB+bhBK0WQ9T42OHkiQp2nwbC8Z4HDzNy2oPETR0RiUEs164z+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQp2QQMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQp2QQMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8694C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721106322;
	bh=7TpEFEfyV4lT3yY6q/f0y24JqRncSFhHANYVCUa73ug=;
	h=To:Subject:From:Date:From;
	b=mQp2QQMSkSa5RfsfajzQoClghP3JwjEHYEmMk2KUv4weCBcPvXI36oPhRJKDOpylj
	 JeDwzemTPN0y/hyXWtc0BBmeBsDx8OY6qjoRbzlAm8+03Ct59o2ao4I5GwAv9hWMKT
	 /9RpFmNA27U9tjvzE9hSA1l5fdVsIGq+iFhlR6teJyFXOMomJFvOBhU4TR5rmYmUwi
	 0Ln7xPGt7gFpYpU/Kdsj/abS1vRbX1fS/NUQYzvNy94UzkVpGClGTq4ItXRLrMjNxg
	 TygOsfjXz9HLuSldqKW1jwfKWHhkGKlk0VH3g7fbgWkM6dOxnlzXzCMpcHqaxI35Qb
	 Ey4CX97kc5QeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D209AC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 05:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110632280.21139.4008575040941157105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5733c62b815b9d6079b34e787aa6bb4b877b59575dbdfe37acf0fafefa5881
Date: Tue, 16 Jul 2024 05:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721106322
