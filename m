Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083905464E
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760153394; cv=none; b=mf/oeYt0rWXAjz6OBjAd7unZiLjBhTJeV7Mbt5+JmQYCZAcI/TpC+mfISGbEkQYtASsgzHLaJaf/yD/vVdPfEcPJB17/uyKaOMnRRXeqNNNlJbF8zouAEhSJD6LvNSJW8ndJPZ3xsT0dJmzcOeq8k0XwiOHl3zMk4Lzf0GGL7+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760153394; c=relaxed/simple;
	bh=3r1F9LdGyF1r8Shx1nApDUaMN9rkoi7Efc+p8xNb+cw=;
	h=To:Subject:From:Message-Id:Date; b=p6kEH4m9EbZ4LU6nYAPN5v9g0jc2z7rWsG0zpDmb0vZ2UY58qcGrOwJZnbdVuQOf4W/7PWYx1DXfPMOp8PqgdItVj4WaHPu1eAPbWRCqPIXBobEtrwvOV0I6oIgwvDXCIUOR+KaZzVfsgPEcbX0k8YrORfkeP1h7kAbwGUNMNV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfmSr/HT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfmSr/HT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCADC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760153393;
	bh=3r1F9LdGyF1r8Shx1nApDUaMN9rkoi7Efc+p8xNb+cw=;
	h=To:Subject:From:Date:From;
	b=QfmSr/HTKLy/9b/Ptqfo3iWuptx4TxTNeLtLJskA/dNDDilROS+jGs0SF7BOr6ZjS
	 gxBprn3CmHy19W3c5nGRYuDEvGs/XmRwDTQkLs7PKjnIP5A1Wqly8TWXvslaMIHAdU
	 bVsPNpV4vBR0nYYUFpMirC/PZKzXvhlG/gc7kjfbOnTxsDtyVFAXw1KkNCyHi0ihf3
	 V4jxuctW+ZUG0nRO337nDr0pqbgmmRQQdPaBU2UCztFVjIyjia5pFWukxgm3L9p5zc
	 1sLcMXEc5KaAqeEmnDKIoB/AukFD/ayfaBGr/3ZNJWeODRKVvfj2dvCBEys8g3XMKv
	 nWiuHIXDmasfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C2CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176015339357.3770.9642404927855230678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628ce7b20cfbc04bb3b0350e9ceaefb56cd67bed1845efa7818d398451b88e70
Date: Sat, 11 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760153393
