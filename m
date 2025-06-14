Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7821F91F6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749942594; cv=none; b=DN6Gues2eTpAeJNvmZWGVd88WYGl2ejgvXvqehdeIfezAN9saI+RV1jqzUJfyO2Sop7lur/IMqfeyAjpVCkTGThEniojLfD43iYS6GsOgiE2TVfOWDFYprfIdacJx1Mi7rAJSmvIl7RASAnHScEt1tT4faoofhhAMYcBoMKcafs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749942594; c=relaxed/simple;
	bh=dJvW9wHBv6X4khJf3aYFw7Yul9rukEZgGYHWKGuBSWI=;
	h=To:Subject:From:Message-Id:Date; b=NGjZBinSn15Yd5Z61CXtfz7dVB5I8w13O3/DDU7/WgM5DKFE9Gnaj5hHoU7t80G3b8/H20hghPjuX0SP8FatnAZiESzpAqqLgUt08l/E87Rurj1oB+++OLbSGS/7GHl7A4onVUknQmzTux1Z3vvy2VkA2xrR9Na/OoObDE3fTBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xf6u04XE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xf6u04XE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C61C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749942593;
	bh=dJvW9wHBv6X4khJf3aYFw7Yul9rukEZgGYHWKGuBSWI=;
	h=To:Subject:From:Date:From;
	b=Xf6u04XEea7uhmOVpPcmi0w3ddZCA9T9upQednZBCP0UsD3jaX9Cj+P5G+WbnZf0v
	 SK1AMif4+f6ACYUFcLnvIBfbwBdvemhYNEcQyGTjCYIUSMoI6j8XkLmQRKbhNrSLDc
	 9or5yH3PxLXemz8iwdWoccCOGsYDj6dfH0hx6J7qJ/rKE2netPJM6jKe5yele5YKHu
	 uOiNpjE79N2sYbpkSPt/f8iv+k1iXXYPehTStSN3nGFI3ohrjoA18YyX8/N66JhJY0
	 uGlJa0wafBx/8jmazGnk40pvloNQJV6gkDYVYIQPkwNgsOPixbxFyuDoZW5J2icFfJ
	 RxDJJ2nVDLm5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479BC7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994259358.26815.15142702884924787475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def29ebbf4f3f115e63a8ace5961506d295c67210947634fb5f5918dee78b552
Date: Sat, 14 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749942593
