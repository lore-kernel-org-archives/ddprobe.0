Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E38B25B1EA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753486794; cv=none; b=RYcXJ6dNvlU3pgp/Sd/3Pkay/BtqKhuYczZjrxg0EUFxezU7Ou9tmj0E4TIWtJ6zda9451bQu9vxSah5mYoFLWRjXMhN46+2p9ueyMhBE9qQ/KUAdbkdW+uKUVD0rxDPrW8LQQ5vWEu6KlDXacjBBfrV/jiVtaAN1aZpwUxcqnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753486794; c=relaxed/simple;
	bh=8cqcbpkWsU3j/EeMJa9XtoitANBLZlWRiFPIMb3NQ+g=;
	h=To:Subject:From:Message-Id:Date; b=R8UQR3kp4jcyz4Gsyr1G+uCihyO9UeYyIQ04/sIQUvquVCsbdZvitQ6zTKE0FISV/vDkIK0I4o2U1T8zpAWdGcJ8oJTFtFTYZTLNbvRMPfM/d2edysn52dRfxIvX1TZQizduY1jbbyUsmZ4i87h7xZ4VP4zMh5uR0xQHdt8aS7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqQH6pnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqQH6pnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D32DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753486793;
	bh=8cqcbpkWsU3j/EeMJa9XtoitANBLZlWRiFPIMb3NQ+g=;
	h=To:Subject:From:Date:From;
	b=VqQH6pnbkE61/EMMBSnCABQHbMcNL+WV4yKcwECIzkwX3eYSFoGCd7X4SR12aRGdg
	 /1jbX1NkF3Hy+i/UbMgXh5AwTu8Fafj1AqJIOZY12Fbv2qnzsTQTpW4WxsY4n1Qpv9
	 8BlBoG/GQ7vGM736jUEFQR+NOPnAYrnj0z4L6uSH3sCv6KFNlXV3BRLqlyMt0WHB1f
	 zVzw2OaD+4EymW/ypKpBOqYYUu4PyJ5NyEF6Y8dyTAEg3dwIA5tNnXy0t6RA8O1ClQ
	 gDBlzMpWv5fpes4al+Zm5lZcP37cdSSkg0GutIndzAxU6i2+TH+nMGY5Va5X9kEN7y
	 dXxBmrE0aLfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8BFC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348679357.13345.15952253501192147556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1fc343edddfd4d067592241c12ddec3c774893599a7f0b3724371693df5603
Date: Fri, 25 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753486793
