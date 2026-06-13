Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C82EDD40
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781328994; cv=none; b=jvd+fHyDAFtEUQz//1c0DF8pdEbvhSjn5hzEDdW+ruI8saq6Z4p/WWPfyYHOEKEQneQeJvwCCwvvI1wlsJcaNUPTImZ59N1jQn6fCPcxI/7QS6cN1ErWQ6Ted+L/xS+tgolKjHE+jBCe3lF0egsoPYxr3FzkcFNrtqfJHNVPlkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781328994; c=relaxed/simple;
	bh=cbApsn2IumyCQUc1fF9CnRdUhm2VVVUGufc31AyvFGg=;
	h=To:Subject:From:Message-Id:Date; b=Ghu9vMsWwzKO5DzTavuqXi73qGVJiGx9IoBFPujMEAzTu790B8xRpok6O/pzDRHvDID61nrfpzCFhU3Im9KjO6MHghdI6qrxxM51uhYIcwr4DWtZqNj8yKdy3TPPZywCzXM8TaOdDAjHwLLlhE5EI7F3rSgamw921HX74PCxr8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJlahXcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJlahXcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBCAC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781328993;
	bh=cbApsn2IumyCQUc1fF9CnRdUhm2VVVUGufc31AyvFGg=;
	h=To:Subject:From:Date:From;
	b=QJlahXcK5TJ5W90afeWU892DGONbeNML6dgryimTWjGi6cHz6mFZVh2qGt9icnMB1
	 4+OrwTTpoic0VcrFim0lATVzM4bz43gFf7j2T10uWds3Q3y13VltduvcaJ67gJQIrz
	 rUOco4TGLgKEAUB+ZljY3hf1K5IqWuXxvdS0678WCbfcI2fC3gQfm7bH3m5cvHDP8y
	 i145IPx3XSbdQGxejCqiQR0tCERktG9hc1jLEnwXtOzvy4znVUuhnMQRtjVGW/lP1I
	 sA+PFtepEY+iraw9K1/c+rIhA75v/Ny0BAC3UBG1z2tvcSNOot0e3xeVNB+Puqugw6
	 59mPHRNCWQ2dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A832ACD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132899368.8298.14749446382441129812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909d2645f751ec24098095e81057cf431379a87a14aad898f2181c2131aa3afe
Date: Sat, 13 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781328993
