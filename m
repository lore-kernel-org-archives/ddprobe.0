Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3B2433D0
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727640954; cv=none; b=iAazW4OdlM5/qokmQ7TvUtn+cEbreBgm/ar/Fpn4TzYo/pF9JJMmc5A+LPN5NpeZowkG2ideYMdLpf5BnaJJ3pM67EzyQMxmIutaQ3QuVeA2G1TLDZgbOIRbrRLDBC9hqa2XApATjI+uv8I5HGpdap/orrXs+qhbhOHgpAK1BZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727640954; c=relaxed/simple;
	bh=hqsA9PcXvOdciQBhv0QRhdZc044wIpLtX7HPh1l1ACY=;
	h=To:Subject:From:Message-Id:Date; b=gSUECufljuvNIiFMaO9NYSOcBTTzP0iUXbzr3VhkVYJFw5BV4izXSRRpIF+gk/WPoRrfgEphuvLiNQEcAXcnDx0s8jUTOoUVif3qOMUv44wGRz0A3MuBhdqHYct5qMNHcJIebgTvQRbBQrJ0doYYt7FFWjWNedo1G9aywjG15Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LC29dd2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LC29dd2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9259C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727640953;
	bh=hqsA9PcXvOdciQBhv0QRhdZc044wIpLtX7HPh1l1ACY=;
	h=To:Subject:From:Date:From;
	b=LC29dd2h0bWNjT07QjN2zEsDvcHIdjNg+d1JLUG/LgQfFT9Aqf/0M1DzuVzogkoEB
	 FzX9305k3EKxG2tAmKV+Y7HAL9+xr7Dqtr3UjPXyv4wTnF1kHGO5JD9AqX9BbeHWmd
	 6Rrh3OuX+5HV/yTTkRNw6MuFIy7KfMut2C0XyAKepfbzjwl72G3859G5WlOUWahw2C
	 QfSMNVwHIO9ruud4rFF8aGk0FitbTQfeMsniOhPCd7hvKA56FgNcraK7Y2CLt3jLbq
	 2+dyji2XvyPHWDslUlACMWR4wtRUTlO3h1SW1kNf0vh6ed7Nw4tQskN4sQYTEBwSxw
	 qdQYVkGPNDXzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96901CF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764095360.22623.2435954352871127275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b0c57ac3c78fab1243a43acfda8d5e5d637e8f336036f80ecb7b4618cf1a91
Date: Sun, 29 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727640953
