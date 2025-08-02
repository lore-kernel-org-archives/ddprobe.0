Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B77D17A2EC
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754155794; cv=none; b=t8jZwwSTgDQ8vrnkzkTDJSCW4iGemJF4k1Bgd1PuOIoJ6gsgtJv/cnUUIfTMTks0SoZXqBRq++9oQYIM2dpypk6Vw0P/wdhbuZiKX2bdI7/b+/vaoz0r4gDe6vCoCBxwyWaH+D4So8PX/440tGr2q3zyIBUTzZGbpdJzGF3nSF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754155794; c=relaxed/simple;
	bh=j7YGXJKFV6boHuprO+1zZ4ed8tZ0ylnj5BoyetbpFtY=;
	h=To:Subject:From:Message-Id:Date; b=bx7gby4SxGGtfd8W/Ei/4unWF+434PBivc16gQbpj/uUpi5+Wls44K8z1+rt++/NLBwxcmWUAim/gdM4JJWIS/TRZVG68iEf9qXYtkE/agHgA8cv5kKTqpcwulovLTBGskaHQhfCQ00ziLkNRp/XRluFQ2H49qcx6TNHuaReff4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdlCJOr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdlCJOr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7207C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754155793;
	bh=j7YGXJKFV6boHuprO+1zZ4ed8tZ0ylnj5BoyetbpFtY=;
	h=To:Subject:From:Date:From;
	b=pdlCJOr75+FSy7V8Pg423XJAE6+EgWyO/2m7lCgP0d/xudKuknaIVZD4Kp22VHw4d
	 IJzduz9vv6wiAbFK3k3XJ+TKTNOjXny5j3Gr+Wxw4fkCdgo/UCbznsfhyea7k253t4
	 4c+ZPN0OUzJWU4og/YG/16vBx1VCaSfLGwhO64Uj0EURxfxZtfASNHJjyF/DEAPSZ/
	 9bPaJ3cXB4JlovalVQfG+K01RUXgF5AUGjSWcVulCXUmB+U36dFkins1+3qzun6sfz
	 KlTvmzp94dm0pXGVTtzR8RnCVUM0PO/s7KZbNiu9R1Dq7CHAfPJre/y7Sdr5BR6xf2
	 pVtkxph1b0f0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA7C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415579358.9825.5104431331552181865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974a4918c2a3766ce76cbbb3a92f3e2bc5b79db2809e02824791adabca9609b9
Date: Sat, 02 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754155793
