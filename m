Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F271849
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712461697; cv=none; b=PmSjJcn0XIAfEMea8mKZVfXWatNhfwNWytuwWYsiVkDYc7AmIlFH+HGkQfGCM3aDGDJJHOHbCupz+JCZSMhGc4p2488hf1dOR49e2kIm0f2y+kzNcyiTJ8DAiQD9kihWxEMDk3SGlkE9LkMv6bZBU5tSnhO/UcYmqCdULHGcxTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712461697; c=relaxed/simple;
	bh=uOGB64jOEgdhkzXKAEI9SQaMXIoOSKwnWhRA3GrCNjM=;
	h=To:Subject:From:Message-Id:Date; b=RfHZxx12in5NhpVjNSaShyFpNV4+FV1TESv7zEdOEym0SzX426JvGCvTZqFoKf0mnJ8ipef4vMgri9LKEbTxOfuyLIYtbTdmNdyGPaJcH/OxB8aLmcpbTE0I0+mehDNdXa+bi+6G8eLeqBJ7rN73NuDvGx8RP14JDSBheqXgBBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBTa7Q3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBTa7Q3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA5AC433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712461696;
	bh=uOGB64jOEgdhkzXKAEI9SQaMXIoOSKwnWhRA3GrCNjM=;
	h=To:Subject:From:Date:From;
	b=uBTa7Q3dxjzrnI6egZBd15anXg5WBcnfmptfl+HwsrQmlnu7Gk451JZGGEzSlc1us
	 8xC9GiANb/z9f5Vezyj7tsHKAFAGLSI2gkKVPDbby0IZU8XkMVBfFcj0FwCUneD4wy
	 I6HwPojeUdbuXJWWwT8N7EEOCay/yNMzSEkjsp+8UjGPJYl5W1tv1dzhGyhl0COLum
	 Kc2ajYCb+LSi2ej0KDx/tGvkwxCqoUu1Zezv2at+pqXzMdZr7NBrWRZiftq9bioDFG
	 jkeaiMql0w0N/uBG8TovtrSGUzw6U6xDI2jAh5fZjAYeYBBFs4t9hftMMGxAYjokPy
	 RAgXASeqZFoDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C074C3A59D
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171246169636.7132.16279474724949640999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5fdabec2976f59c2008de82729c49ad286ff945777dd604944d6f546d9c6cf
Date: Sun, 07 Apr 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712461696
