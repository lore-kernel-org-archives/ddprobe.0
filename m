Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426641E990E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759664994; cv=none; b=EnfGbn/eqVft402CDpgRmN0jvtjARcVXbVyfwkR7MOE3wtN50lqLyIZgzO0+rEKKQZzJXwx0Czf0dmHYeD7aSxtRoUr98Sn/Ldjo8mqxQSBqddz40IypOVh226Aim1UxjRerUZ1GZ1BYIzp5aYeFMmNiwlH5XCC87GwGjx9u3xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759664994; c=relaxed/simple;
	bh=OrRIrtdSPBxDjNbIVe3lCB+mXNc6nXlysCdae+pGB70=;
	h=To:Subject:From:Message-Id:Date; b=ADqMpxMZt3g+rBQOP4BWGsh6+YiH6k0APbItS6RSVxmo8aA2z3qoGOvaYJCKfDov/dwdH9jrAhEOiSi05u9yCFEP59XK0kq3W9gBDLeut+zUIeGD5oUW+7ht8j5KWUVXo4Ncxi4a04sasOF7lZvqKRV8bea9eFA34ciRZWBmw48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoTEbMrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoTEbMrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A590BC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759664993;
	bh=OrRIrtdSPBxDjNbIVe3lCB+mXNc6nXlysCdae+pGB70=;
	h=To:Subject:From:Date:From;
	b=QoTEbMrbxnp9m+JLVidurdXA0xKdHWnnPml1Z7MeYgeog5+qVjrVLzIaLUKAiwy2D
	 SeBsVDY0YVcFWoq+VS3TtJoCwUjv7UkH6u+CWg3EZI5koHFulatS5QSG/NubEodZM6
	 tHqzsJq5r00KMfutAWLYjCL0+kAlzxlcTlHUpUFLOQE53THTxZ/ippCfG1u7Z0/hzg
	 3gRZy/Nfxr7AZaheb3/czDGDqfB1OWtqItJQSzjAxEN+krwDzd5y6hgyEznumzsp+e
	 6onD+JNYvzKTkum0aV4O0EWwdjltCtSh0MpUGibT/TvRzdreo/hDz8nOKm8TKVuvAy
	 BQi0U3jr6rURg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E95CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966499358.25764.1280804027736163245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf639883211d28eb3db3bd494985f289ac20b50a143f291fd8aa3184f9d7362
Date: Sun, 05 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759664993
