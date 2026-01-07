Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7182F6925
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767828233; cv=none; b=OfyYdAYlFRjejtQ049tT8kG8dd4fTL2NyzyZ4qoof5a2YUryTrCqZMhEWd5eD7AOrLZoPknegBw1RfDbBPaJ9tPZrdSZkN62J1F8f9XzvZtbwM0AApBucDXWUhzxXHQTEI4aIkV+UxwOSrdN/j0G0Lnv5rTL66UlVMA2AehkI7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767828233; c=relaxed/simple;
	bh=Er6qR16pDEJPqloyPNsl8ZUDLMIPNZ5rwcgFxiRzh8E=;
	h=To:Subject:From:Message-Id:Date; b=CBGpPSqEkMNVhlmS+SMiBIwf8Nrgm15lqjb6AiasBoRVNlu6XNxTWBOkUJeazLB5B8vXi2bb+bn+omLeCjs1mTWdXSjiyt9nDqnrDPDHoFK2tVetwiIqN+LOhXulEzM44iB8CQ9s4wkmaNf8U6fJJCePR5Uh+yJZIL96XOBg/PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZ+eFnwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZ+eFnwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767828233;
	bh=Er6qR16pDEJPqloyPNsl8ZUDLMIPNZ5rwcgFxiRzh8E=;
	h=To:Subject:From:Date:From;
	b=NZ+eFnweYeqP4kX0zgz7aym9AA3tjfmEbb/ccyNAbLsSaEulhIJTektaXVRGicRhA
	 MsWNOwOjsM4m+WdCO023fNqy5hwqNlIRe75OHkNrfMeX9QhneVlNuFbCbpjQd1wFZi
	 +PR+/iwbinagPEWvLU/HwQ+I1XQbHlNbpRRXhdg2++yYAi49CVhEHrwIWJZdhbIa8A
	 gS+9BoxU51EjOE6jftQoy14HOga1mQcEOSTO4QeAp5BS/1EEhdSNzned78OTZIn3zb
	 Fgcw3J6xDK7BO8KRyzTvLuxupGYGkvxmmAC+S811N68XEokh9gn1w/5qgohdBPp29y
	 rN7Uci3UDYYKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94570D0D17E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782823357.20642.11959371758626851022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6336b8cfb7bfbc5071fa762226ebf9e02432ea2ae527696c19835e26298a891
Date: Wed, 07 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767828233
