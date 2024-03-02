Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DC91B592
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709407696; cv=none; b=K1zmEdxAQ9RkVeGflaIlR9z7BdvG0bDg1YLurEOjMI3+CjLX7r66G0yldFfX1OYPJh1ki0JZhmnqXNm/VGJzA/rc73ard2SGRHwapEmNhi85XexTtHawu+6pQLpgNiwLD7c1xnnMPcBPd/EPhJm3+REJGsiM6cZlz9KIzjwuRM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709407696; c=relaxed/simple;
	bh=aIYt2EvA3j3J57TaloYi7ORSctZSkxH+LF29zWGjX9U=;
	h=To:Subject:From:Message-Id:Date; b=AlrVxLs9Vh4ghqm5q4MQ5l4sPRHUbaPo5xnAPjvM1PcqrZNxQVgiehHdqlrIcvhznbn/ThcFq1UTm292sXRS81z5r8QrV8Pk9ijyu5a2mpNqhsBXfzAQUl74I+5UzIDk3JMoTsmPEiBg52xxNBff/Prc7rLt61RnVxlEYlbe3u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+yYbvpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+yYbvpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4BAC433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709407696;
	bh=aIYt2EvA3j3J57TaloYi7ORSctZSkxH+LF29zWGjX9U=;
	h=To:Subject:From:Date:From;
	b=Y+yYbvpHtzqovAqHmZ8M2TIkpTf2l8xlKfw8YWuafL1C9fJDBiJrh65Ms1PcxgQaA
	 pKfYeYBqXzUE820S305TUH5KWz26XQKQ0yCfzb4DqWPp1191ojRMGowxU97pMG3Bey
	 FB6fPHvmOI39f156r6YS0bAmVKVd9jPu/qwEIMCfIlBo6f6AyoV6ExMCn6WfxnLi7f
	 7iLYB0P17/1RrtGnXfQKB3WUBTEo6ELe9n5Ft4TBzuSW7NK9ufXJve7yCYG0gWAeuA
	 4nS26u+7hLA+3lWSqqeaVY2ewqrMDDS+GgRAkDX2+9o5azP6Q7eu+7R3mawPaBsSd/
	 LNva6/PDDqYTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64680C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170940769637.14963.7322620756613164233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3036e69a47f74a2491d0d8744fef92f09187deb519166eec15f4db8e660dd1bf
Date: Sat, 02 Mar 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709407696
