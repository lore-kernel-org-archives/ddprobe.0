Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C61B1AC44D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765347774; cv=none; b=gSbc0zMrWnN2/Z7NR9PT/qmRz3RZCHgBDHbADZc+3Kn6E1rdI7DXAI5/xLZExmO3gPG9lLs9iu63qcD0WkPQUQOuVCiklDTAv3v2XxY792Zdf33T6n2IlMKNrF+BuC4bsEqoCcR9H2O7NZcDFw1C9eeYAAyc6yIwjyGndTT6SD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765347774; c=relaxed/simple;
	bh=VP8pD+UYil04KJOc57UJfsP5OUhN8UZ+UqbObzNoOW0=;
	h=To:Subject:From:Message-Id:Date; b=pQ/aHfF27R4fb5xeIEQtC2ns3bo1EHWMp+pub+TQ1qKaUjOjv/BcGIWSZDZA199rnMydN4O+ytwFUgWF2Gg/Ainu9PrmXDS7Nm07EtdfQmI1cKCZCbpMmPsAkLz5R76BJ7Ye7ZNYiCeJGAm6oyEtsVUUAlnEsPO+jhLiDlUXBZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toVRAcsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toVRAcsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A832BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765347773;
	bh=VP8pD+UYil04KJOc57UJfsP5OUhN8UZ+UqbObzNoOW0=;
	h=To:Subject:From:Date:From;
	b=toVRAcsNyqIju8GDlC2121NzTZ2/va0RdEMduaje8xeMCE75PM537U+nRyFJfaTsp
	 kgDUGDWUGzBXEgM/vhVenQES60JtJnfoXuLO4Vrf7SeNq5GuGUwY8Hf7qOtjhdcSMm
	 Zwz2qAfgCVIt3B1PQBqxXDU9ao2D1vu/t6P2mLCU5BREiw1PdMNC1vwz3C+m/fXEz7
	 /EE1i3Nbnv99rVMBkHn1gUVb7PJZi/xwK1YuChuepgfCXE1ebkgbOsxTxDVgg+D2cg
	 RnqaZqnRK4qZjrBysmbuXvg1zErmK1Kyf6wpN2bModpbw+oHnzoqjR/Arv/WNDF5+3
	 JoABO0/zO94Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300CD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534777359.29924.5685507992071331872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d555b65ca468d6ff7c93c4a5dbaf6be3fb8dfbf60984087fc34173826a1b72df
Date: Wed, 10 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765347773
