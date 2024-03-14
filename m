Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9004A08
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710376697; cv=none; b=MdIHio9bSRzTRWauUELdMKkFGwdGd8xAWexCAys/Zjg+ivaIvCKXNc4BYU+9Xij11TwxNr/JEI37hDO8BO7/jIpQ+w7YuW+Mw6H8TfTzX9GvJlUzuG0S4cJcAISkTChi2gCF5kn0fl/1P5EY8R0iY5s78w9PwETIDSmCEgdEy4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710376697; c=relaxed/simple;
	bh=GqKRK3EncaycB29bXN8l6Dua1Jt/6GdQN1iZnHhOaK0=;
	h=To:Subject:From:Message-Id:Date; b=IotY2kdzW/8Ja2i386XXqH6AAVJWcA1kwPvGuonEzMwiYF2+ogATt28I+W6Q1CUoQ5fUxVLLHvg/kLLWdLpXkCIiDv8G2S6C9X+tf8icOvZEmNqz1ODJsdBtgE5t1p087AarpiIS4HYPc+kqEt78BCWc9m97EqcCck0IYyPRmNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwS8PiG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwS8PiG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC50C433F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710376696;
	bh=GqKRK3EncaycB29bXN8l6Dua1Jt/6GdQN1iZnHhOaK0=;
	h=To:Subject:From:Date:From;
	b=cwS8PiG6D18px3zKFvz5YAHL98x/DC8cwPmvT5BQXQrH/0Ob6bIYkeffl04QP0kU4
	 +1FrXoso+o7IQDDFuCfB64mCY3AlkEQDgPn24u75orvpVbSuqn9GskicFiwzkdDsXt
	 /Exa50bi6PI/3y7inDwMC/dYJvQ6UbOKnKYW/AnePxWzaX+KJ8c9qkWA5DPUi/w5wW
	 +5wl4Qclak5CkWFV/AEvFKPjfIepZR8EFLbfcRlA9nHZa84EG2sRvoLUCO8ffkeamr
	 F9jmiwBJ6hoZYuPeh7kyfJ4vAvXNhkUyv1QJCojGLp0i66wphBE2hNvOHh7vSCw3TT
	 U9mdE39RmIRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60755C54E58
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171037669638.618.8381038461472275365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0e43b7ad5d2f2af200dce1f30e8b2c4d1a1712fcf8bb87c7796cae1b61c81f
Date: Thu, 14 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710376696
