Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B0E288C96
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771208694; cv=none; b=o6o8g70X7cfxnmm5qzkgrDAlBZo96QFB8d+zmZKNTS1I6fW1N+dmN4VUbdTGjJ17Jg8XxxnslHsPCgzktM90FeARTpxzi3fHJW9tbyXzdb2P6xJQwuBIVK4PMH/1H41s3GKX6RpRpCDOpFrdmdI0yFDoZgvkQtbyrhq9nzNhbE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771208694; c=relaxed/simple;
	bh=Ct7ILaMRdThcyOSIo8FgpFkqAZKN4/qcXBwSHP7xfXc=;
	h=To:Subject:From:Message-Id:Date; b=b3GH2m/gh+NAJi7Ow2kGioNH81WLwpkJyqdeiM9yOrWE6asHG7ZmH+AN3MjXriuYGEZQf8rGxbQeL5cQWvBD69PfNcbOEW533fVpU5H9pj6NToZE+rEuQytZEquNS8pGmybtrLRomT/46sUuI5GGzoEJ9c0kRtLicK53d7UcwM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPzRqEE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPzRqEE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C64C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771208693;
	bh=Ct7ILaMRdThcyOSIo8FgpFkqAZKN4/qcXBwSHP7xfXc=;
	h=To:Subject:From:Date:From;
	b=lPzRqEE0UU9kZKU6XoPdYFRH6XNBBRdoVwh0K0QV0ZlfLNYIMKTiAY6od9rou/AEd
	 F5wabR+8ANpvc/xNFOONWTYD1eabWqu+vo9Ti4rgpg1Zsnd4EuN17OQVU1Z73xXXvL
	 g4+B8uYLrZSw2H2dADnS3EOIBv4KL9odVjTG6BM1yhIW8MXv8sHB10Mzg4X9HN+tOV
	 7oisTRKC5dpap/bhGMZGEHOFcegvtsJYNhZsdwgwf649Jikd7ddaGSb5whLOsHoUog
	 /KR27yee4MdnIoobc16A8my3Asb7lAO95/Xt2jEbR0+jh3fCRvEZMFASoJ60ox6FDq
	 gyqLD5Dd0K27Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BED6E63F21
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120869359.15595.2998977139645449083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac2483c8c9496e0f54816d45a4c5adf5ab4622c09195f3f0f8741d520ec5c32
Date: Mon, 16 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771208693
