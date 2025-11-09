Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210E44C81
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762720194; cv=none; b=MoPod/1bT3Mtueko7FuSFVWwaPtJJAQRv/3Kw6hUD1oQPNG5n0qvzwQSBWzPpD/pIWSRBd8FOdFYtFPQ2HFMb/BA/KlTYfccnojjUC83AGkidC4WP1+RprADk1ISup0FEu2et9ZOjfy8Ni+QJvOmu8DEKGbNkU6DFNDjASPhErg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762720194; c=relaxed/simple;
	bh=zfmAzke9Fg97rKqMWGQccUdsmWIV6PHDoARrEcHNRlA=;
	h=To:Subject:From:Message-Id:Date; b=BKgsPB803a6XT0R/QVoMValbUu4bjzihiOIEiAmkFPQe3AG7f/ul0ov/TB1NOtH5EY+vN/9oMd/9kJ2FII9Qp1mqWc9uRtE8SVCYmrsItCPlK5TOiqBj0HNivOYdV0jmm01zopuwrokUcjKZVTpSdEN86ZD7bG2JgJ04TK+G/wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdOyjWY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdOyjWY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5C7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762720193;
	bh=zfmAzke9Fg97rKqMWGQccUdsmWIV6PHDoARrEcHNRlA=;
	h=To:Subject:From:Date:From;
	b=JdOyjWY8d27LmWtPYd7fz3JfTIwKBVe4W9zAEycbewiMJBJMJXbWvZJ9jWZYDzTDN
	 iOPz+OKGJIBAHNoGL6kFAfjzrZiQZi5/ZLn6uweMm2zVwAOJ2WCO2fSzcvsDzy9yhI
	 PrPog4XlWlHf4n1pIzr1/yDNofhpZvdSI8fgPAnhrPbBRJfwithop0FQ7rSy1vVety
	 1EzheN8h8oNAwY5NPNUi44hEZ/X4Nb9w6zw0hF27cimK6lYeSl3tOqkxEA9Dj0Q2UU
	 sZRAnjzGx8GsqW5wgT6/eA1RZFm1dm58dbbHTRI9A6EzatG0mW7E2qi707C73tHh9V
	 lt/KBBLosr5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082FCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272019357.8295.1309236113193373075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5917a3e8c9adc0c6295265673e87f7c6795f4b8c6c50a67b051023e0d43ed290
Date: Sun, 09 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762720193
