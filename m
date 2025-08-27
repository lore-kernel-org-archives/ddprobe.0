Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E76285061
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756297194; cv=none; b=i1kbMfjHdRwjGNfRvpglObpz9QdT7CeZDXo/V2TYhZf+k0cODlyMGgHRX/0mT14NfE0EiIjX15AoGX+dlyGBiYLIVhWpQEKSXG/SWCRwNSVOe61dDkSJfpK9ANJeN/oec379Nramd4Oy8x+Ss/yH/sYOYZITN4d+oTgo12V2ql8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756297194; c=relaxed/simple;
	bh=6yt3/Tael+k77to6uKVVm9fG7H8lgHvMcD6lGIFN8Ko=;
	h=To:Subject:From:Message-Id:Date; b=WPODXfHwTOy91Pbv/ig+7QTLRQVGFq8gfGHYy5CYi7zpAW1eBA7r1qNB6rzcioT8Ozjz68chBg0rJ8N9UiyvIwg5spqWvJnI3nR/RbvH6XSL8JxIOk+6I60z1uTvTD7lOo/jy9uhUaQtAtDFx5gJ4V5QVJSfrVzmrDLT4HE02Bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BySWmIwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BySWmIwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5905C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756297193;
	bh=6yt3/Tael+k77to6uKVVm9fG7H8lgHvMcD6lGIFN8Ko=;
	h=To:Subject:From:Date:From;
	b=BySWmIwTWL1Kcvi1FZVB18L8EcJLr5MBBeVlZWQv9kRJLmZdPcrsGaHm/86vqEhnv
	 PmK3XJhOst6OfvhaC6jzjikN/BBSX8hFx509I2QGCXa3hOKHErOG9cjftdLUExENoO
	 T1vM5vmSeDstcJOElX+K4hh6OoxGC+MXlMpCFLiyi7sZMmMzmipv/FNaSqxsj5BfpF
	 zQZSRJu+e0WiXQNn+7AMagx6JpNEX6CZvJ7Y/ufvpCmNMBhZV8sq9k1JC3StNBXEsy
	 YIo1W6x7B6sRjt8OUuopv4rmhK66NBkVizoQnqlcC5HQ3Q6YFFhFcH0JOVzq9L3Dsm
	 JI4nP2rNn8Dow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E93CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629719359.7535.15412955126012119344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2796034cc05d8843b8e6a8b08bf6d9c4d5a1539f1028c4740b3e87c7f3e1af16
Date: Wed, 27 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756297193
