Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470341DF27D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737300354; cv=none; b=pCENZdKcUhsCeJUdB7+hU9Dlh5THjSwyV91xco8i4dDMBJ3azAhKEg+E3G1ekej+6q/r+KB89ROyB3NR9YxEWaJLGXp4WUS1mToblGLfBloZO85WaA+LL/1v6fxwSFuipZ4dNRVN/2oktpT2JuWelKgdgofp8hrMkcB/tS9NL8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737300354; c=relaxed/simple;
	bh=48hxrXXj7g8KXDG16rhtQDwYFGYRy/4rd+nT77oNnXg=;
	h=To:Subject:From:Message-Id:Date; b=HyLIqfopRreu7FCsbxZEjJrpogYeozl646uxF2/SePACZiVL75BNBXULULCj3wLrFEBS+LTBT1MK9xZ4eUji/d3OWiD14j1dQcvoqRw1ZGXPIn+55AAZ/Z1gUlBYmOTzB/L6QRoj/gz7sxe+mzRix9YhGhRJ6D3w5mmo6yke+WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zegs07/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zegs07/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA85C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737300353;
	bh=48hxrXXj7g8KXDG16rhtQDwYFGYRy/4rd+nT77oNnXg=;
	h=To:Subject:From:Date:From;
	b=Zegs07/b8Hqqzg4UgLOTiaruWUwOLNJzRrpxAGD1emyaYWUDPZnSf03uE4g+UKhIv
	 XDTE+91+3TOdDB9HXGHFGks6a1v3TT3hZHi3XisDNH7huVVER5uONv4LH7n6Oo8Dkq
	 aKw1cblc1FXaTzYLyNki2irzqkNzx89jEGVkFWrpXPXfXW48uk2QB3K17YrB4357Kw
	 ShVVB2q0T94TDCSR9O1M0sxMq5p1U7JDgkYa6ETm/TYlfS/cuJ8i7XqDxLLV/E3Omc
	 jEbeS2tDvfC8EZbwIYS/J2y8mmd5McFzrYwatEb4bih3/VATAfr32Mh1DND4BCjjQl
	 Ajm5maHkAcasQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982DEC02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730035358.27433.11731570683616666671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a7c0d0e58ce4a9b90df9a501805ec55bd9993a0c621cfbd8c4123d13d83463
Date: Sun, 19 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737300353
