Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116F3191F92
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722326154; cv=none; b=UAtHx1V6qf4pZdYxxNvLbgjQpu66q/FXn9mILDMvfRD9WbUlF+SWmcVoIF2dnDc0nhN98WEAxe+qNjy4vLN61ReLY3jgFG1ZuH+Nl0IXuesKEvYeoGNHf2MHIjZz037IiPiQa3FF8N8XFq1P5DCARLKGLQ/MJ3Tvg4CpA0uDhlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722326154; c=relaxed/simple;
	bh=ostVyabWBqc9t2lSb9UKL2EPhfiadmzWSKbWxFO+beA=;
	h=To:Subject:From:Message-Id:Date; b=tQSjt1s9Tm5OzqgKGMvHnrPITy2CrYPQtQfNXni7zrl9CB3vJbb6Vq0CD0EbKQelM3EGnG1O7Rh2HasyQKijoWDTSA6ZQ25ZFcvgXUyKowNbaJroij6yJogquqVaHDucjIN/GnoT9iyjQX1smQ0AqZw9Y5EBUKAGBoDCPguIkgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bw73FQtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bw73FQtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A201FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722326153;
	bh=ostVyabWBqc9t2lSb9UKL2EPhfiadmzWSKbWxFO+beA=;
	h=To:Subject:From:Date:From;
	b=bw73FQtPUItcPYNzB8gEm5OwN9Juh6yj7j+cbLkRVQlK3PkI6W3QLenVtVjDgwF+t
	 IaTG1hr8E9MkmHhejlronvQVqiF/5q1xKnqViZX8jIsl4rWqFlO6BklBMdw3UXZs4j
	 3WOTwm3twaWNainRdIbTmrfYFaymlQ/u0ff8+RWHHTVI/gqRKOMN/nFgQH2XnmNGir
	 Klec+9AnGdVzP+PbYIGXPawLUInHNN9we/cUP0DLNQlPTT3pcU4jAczPiiWYa05/kS
	 3ixT7rRP/Qy/oKWw+LzJDaqhhO+zgQyQDYFtPHN6rIPFHfUKi8qAHogKz1iwB5ZuxC
	 x/YKm5yUARjcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228EC3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172232615359.13689.16907080384687820345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffae5b14840f9894aeec38be3088785009ca030af86e5440e85b770715990eb
Date: Tue, 30 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722326153
