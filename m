Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB9126A1B4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747654794; cv=none; b=A+gCPHfVvINLJCRvaNDvn2n+f1Q8BqJwwd0u4u9sohKs+JE8ufjKfx+nhEQaVhc47HBLws1kjyzXPQniwSgOF2rTwHBGOaxzUggumnXgnJ+Jeo1MN47NMy8e7I/aENxeTQFxY0A9eqKmyImrwYkYZ/Aby++DqBVBuLAHbgzKVng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747654794; c=relaxed/simple;
	bh=Gg0ohpLAJFe2N+rfS1Yr8Ke41cGs+MRMV+RFuLTkoBA=;
	h=To:Subject:From:Message-Id:Date; b=nvsndAkKB5QIprKNMvGrrFVPtpYwtxjqexwQZi4oZ0D7mY9Ygn7MBlm+B8QKfIgcNe5T8NjqGxhswAgOkIO3GIn1EqmKpNneCUNU1VPqRY9fZWM01J6fU+MwURKT2dJkdVbw7QbYQkSjX/Z1ftX07MZKwscGO6TB6JuNesjCcCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaG6BU82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaG6BU82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2D8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747654793;
	bh=Gg0ohpLAJFe2N+rfS1Yr8Ke41cGs+MRMV+RFuLTkoBA=;
	h=To:Subject:From:Date:From;
	b=MaG6BU82L/szvCnaar6qUIZzVIS705ve2qzQmqNWrhbnBcbhryenYt8lRB+kE9Yeu
	 0bysx+mTonWdhT3jMW9eGSPdiRiD1p87XfReyf/t2vO+xP3RoE7DEFg5ukdoYhCORW
	 fXmmcQKv4grsjBXRI7y7Tv1tyPEKzf4LcwD1dc8v9JYw7hGXeXv7aD7wR1R1TWW1BE
	 P91A6/5oPYcbd9F6VbuX0UBUuIX5Sw9PtOKqarg+h281gb7oOod26JtZMxzTc6xYVJ
	 8NAGttcXXkVfHeSo34SRunlNHj9Xn9wAVvDR/rIZtayvwAlJmjRu5EkcAE5kHrAam6
	 +02VoKNXIdogQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD7C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765479357.10328.2532068899999162040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d25d2693fac5cded76274886f8e1b3ad5c7ea0b928f65df65ecc1d0aa7a6c1
Date: Mon, 19 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747654793
