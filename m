Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D3D42A99
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760492395; cv=none; b=qUqyN2r6wTdJIm/wVTm/P4XH/s4tMGuyva7b27/oGJxR9K1VJtDAgzu/2ckuA4DnV66hmFkvMGAGwKKeyfolep7yMt3tmxV6rd4kUBdi/J/ZQDtM0Z8zlDajKu0nV6xmqmmBsIi3+BYaQwpXjsqxO6CmLlBOHbIm/ecHB2750tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760492395; c=relaxed/simple;
	bh=d5MYPjOjKHHkcDtufpeHSfd1oRZkGYagmuhLbhlyNEo=;
	h=To:Subject:From:Message-Id:Date; b=BOgWxkXKOMbPFqGMBa1QORwm0mA6f5STWQIOj5R98RUAwmq1OGHmUCYe3AaCdzmHxSczTaA1c0pEibtUD+TrLvaOhu7G4dde407CiOxvr0fy85/LpXaN5lm8M04w1LEz24H/f55p3hip12YT4uRfpYxjusNOAF4IC4WNsznVSrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiHDDIVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiHDDIVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F477C113D0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760492394;
	bh=d5MYPjOjKHHkcDtufpeHSfd1oRZkGYagmuhLbhlyNEo=;
	h=To:Subject:From:Date:From;
	b=kiHDDIVFNXlQU3e1aeGPNSVS9squKL2MdYb46j7Jvsb7FQRKHnj9Vha7NgfhJKG4r
	 80j6T1uWpn2lEwtNveIIuFjj1d0DOP9fZ/INUe2cdCpKSf6SOw/wrj3eF4BWbzdOEp
	 kpBE6MaRL4PI+5tyFOH6ROc8w8odZ0WmS369QCyEYfXS7/yZeaSMyCFc+MD7YcLhrG
	 4SJGWeXGbwoSLhAxslyKuQgE3bzkRT9tg+NaGbwYlQVq94RplZwaDEMpF8NFOPD6JK
	 1JXzK548dvTm1EkwLJhUzHfFa5ohbPUte7C+837HFuZQIPYcCZps1+Ezqyv8mLIng3
	 kcPYjWW7qyDvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DDCCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049239357.25546.10836159776821549599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1489ab052fc632a3f019bc8f21ea3c3f41c69317b8c53e3b918fd312368d9b5
Date: Wed, 15 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760492393
