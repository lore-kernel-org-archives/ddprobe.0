Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175C021767D
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771077894; cv=none; b=O3j9ITWt5iElGtjGFLZJcqrg1sqizDP0nuBjXuaJxABn9u0DF8Zf5EK75C1DGnoCFQKpH6efrHXcaK2hSraaimTipSWBb/nSIMycZoiRIqRmJjhVBt+JF1XttnE8Mn+yV0d6Rc46E59Btf+CW9ELP4jwm6k5KVA4RneTgG7+hzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771077894; c=relaxed/simple;
	bh=EpjHYV4YftYRnJjWv9Czy5FQul0Oap6x49w40FaHtno=;
	h=To:Subject:From:Message-Id:Date; b=Onykgcc4VSKNC0dt1QSTHrKYyWuS8xur69xQ3gVrcbF8an+pv6oVel1zjJaWINnUSOWXEmH/ZXyop9imM6J5kSAjRxDmmCJFqVUdhax0o5syb4oSwdwciRNjcEKBtyeW/nAFOBL1BczrUkuJYcDd5omE2Q347tLACG9/KUWJiPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz2Mq/WQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz2Mq/WQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00A5C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771077893;
	bh=EpjHYV4YftYRnJjWv9Czy5FQul0Oap6x49w40FaHtno=;
	h=To:Subject:From:Date:From;
	b=pz2Mq/WQkkN8llxORn1oG7mDUy/NfhATDXQZRQQpdvnfzAztzgoNTaxr0zQB599nC
	 IhkX98MdPgl48AEK8nrXncf5tqDTYGyQ1CCwT2mCxurqqdyaXCV6nVxYVO+xzZt+Qm
	 +908awi6iR+vSMWtR5sDbDFjT/7HLFTBWjPNoN7YlzH8AoOXkqQ+3kn44sMgibl565
	 YI0yiDYFMudSe1eCd0HIUv7XJtzcHXTBg3rDr2PPpXgW1NWrFRYbWdDCRgU51e7rUO
	 6FZaqB/KE/aRV8LcOJTAmQMjwqgrr4ysyNOKa7k0BszZpAJVQhVgSKN74tS3TFs6p4
	 mbVadbEemsXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AE2EDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107789359.3689.4351933093655756428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8c4423159c23c5dbf74047c9903d296df5d66374c1be8465d1c3ec8439068d
Date: Sat, 14 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771077893
