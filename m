Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5725F32F76D
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786786834; cv=none; b=Z4ZI2xregDTNHlamA9oYisdXoxaJ89h3neHazHpmTmBUvfj8EoVoIU2p8/YJ9EhmsOc5wzPXtkF6QX94IqjYG3VSoDi3syXbyKrY9WuvpDbmQLYm2CkOMuLljfvyl84cobzpNc6DAAtPYAT8+bMgUaPmXeKnOoL+no77iqB3FIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786786834; c=relaxed/simple;
	bh=CRznIDaJ4mJo1Fr7gWypl1NJjxcJWaNgRJGTplxKwTw=;
	h=To:Subject:From:Message-Id:Date; b=RtbbUdYYzNU0h0cOaS4isCTImHCc30RENx+6Q581DWbocXO9ap4zpjnUTJY8Sq2lRKPl+dvcLy0PQ/0hTf6Dj6T/qxAnOIkIACipsBGVqdJfUnE1LXW57DKPkFmEMsKeFuFacaoPOu5U4NG5Gkv0DIutWT65RMPRjX/FYwi+NTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJm1juSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJm1juSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35AFC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786786833;
	bh=CRznIDaJ4mJo1Fr7gWypl1NJjxcJWaNgRJGTplxKwTw=;
	h=To:Subject:From:Date:From;
	b=VJm1juSxkZtT0nibkMm0kyUInhfXnrrKuGXXWsWqkTU4PRDe8CWXF3PT8qnaH+8Ey
	 f7BypAsA27CHti+FX54PmYpatkwv332g6wRDaL+Mf9bopm81W3xv9QkMZ7I7BsyaZa
	 gCd+rfztBBb9uxaineal+x6ihVW/LyFAyWalTpbSRPboRCFMJWu8tFtFwTz+cK+G08
	 MKMVbEaH3yHbK48aoQoZelvywup5eZuzgQQQUEZVYRqq96r7RGbvF6F9iEeFK+gbPL
	 4+euxvXt6tSMFdo60kAgftBo9MJf2+7zxBho5oOmkWYntQqP0JP9bQFPRqOsw2BgrE
	 OkFse0eWPCAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDD2C5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678683368.5164.6472528387407417841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753ea21e92e214d856903daeb1cc5724072d28b9f90511fb3dffc2ddeaca36f8
Date: Sat, 15 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786786833
