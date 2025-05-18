Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36360D2FB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747553994; cv=none; b=TRjiy3iFJa8s+I7145g1q4LzRx91PpDMQMTuwpCG3vaQsWgJ0VO2MgWpO1Jrt9L75kXwFPD8/kTeNF5yHNttx5i26oEL9UdfTL+uj1ChHdHKIsofL2H8Ii5bWnbvFaHQ8pTa2Mx28LhDUnXvPnjjGyJYymWWt0s228Zd//PU/1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747553994; c=relaxed/simple;
	bh=sRnev+VzZJXZ9D2QEx54MA4Zp3rPM9DJUbLBYli+vXU=;
	h=To:Subject:From:Message-Id:Date; b=mtkxEM1ZH3AGJ1FUsJjvhsER2gno/DJThdZg+m0rBOl5JMnCkpz5yLCXAGVFe4Ysz5H2P4TnSz3uJ0NuVS7+TGVnE6jrV01NOMhtcSXDjtpqGebe6qXyacafTMuJEoBW+k9s5glvHN8N0i26kbKI4O8mPzUdyCT38Bs9wE7AFfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzNJVa06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzNJVa06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C41C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747553993;
	bh=sRnev+VzZJXZ9D2QEx54MA4Zp3rPM9DJUbLBYli+vXU=;
	h=To:Subject:From:Date:From;
	b=dzNJVa06aa0T2WJGr81Be2/Opf72DGuK5IGixRWzUoAM88JScgMYdgcyJOmEFWll6
	 XB8jU+9uaxWWKIfbA9OiWdsR0+I06elqGKilILK2mMiCIEe4BQTbkZUBTG3U9+74OF
	 LmjPrMuej3PBszaCywPO+Puk8fH21ZDoZZy0pEtIJ3iu6Tyfs9vUhqzedT9Cq330+P
	 +RK/eMIGphpDXvP4QvbRaiRUZfllD0Lr9TjW2Zm4bs/tZZZThusL/ExsSDYFwkqk6/
	 fIQWC2uNKI+Fa6kd/2WSpcuetG8pJZa/53s4wsIQyp5s7QTMTwaKpwG0JAp3xD05uv
	 cbK8N0DypHecg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F88CC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755399358.11233.17726119333371411384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab7d363dec644e1eead275c212dc01091e76029769c420525178f39b3cae897
Date: Sun, 18 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747553993
