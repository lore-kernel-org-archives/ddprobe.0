Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9D940099B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784143714; cv=none; b=I0LSds3452cmV0U/hXEJtW6PT0+i4n6sLGAychtjTtc4UaCYyQDj2P+aEjMlCjVHnY0UFdmJQ8MRqkjepi2T7+JDiWn8zzzpzHuXNga8qalfBivEi7hOnt2U/hssEn5D4sCjXFRhSfjMkNwzQuWV7VFQJxD5simx9zg3xzyfpMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784143714; c=relaxed/simple;
	bh=5AVCAPNJHY6d+u1hcyv/HuA+5SSIe6QCI+dYpoT/PRg=;
	h=To:Subject:From:Message-Id:Date; b=dCaFXpNMavHxrODPZbqU2CPm4iB3/eVSazOAUZ+HY1bx9jgDfocoW1U3ZLDAWA/JLms673DbJTe1hboPvYmm37e/KlEDB9ZtQi1YFp8UwSZzNQyT8VvI2tMP3MTaAP6JNGzrudsuoVuaczV+Vq/daZVsPBU9Z0m/Uvs4h9MOODM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtxWGGwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtxWGGwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B40C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784143713;
	bh=5AVCAPNJHY6d+u1hcyv/HuA+5SSIe6QCI+dYpoT/PRg=;
	h=To:Subject:From:Date:From;
	b=LtxWGGwgD3VrWd1BNAWTKB/aawwZ/ftRB16ezg9YlsAeUwktcKQJsFF0luf6r52NB
	 7t59hp0Wsd6MpNYx9BVhyvKpkixXIK/xYrFa/PI/w3sXiviQZEj3nVyIK6MQW7uaGl
	 dk1Q7I9BfG7Gv5etzqSSVRxjmLhcOUAvrLE/wdQvW9jbBOAprQKyYxv0/1flu0ATI+
	 kEWf3fivvemgWh/N7Hqy0lY6ymb01xAhyAU1SduUMe1jKUoh2yKx12+H9ZlSCNt9dy
	 85jwA10UhOsNTsythu8LXq7mE4B/oklv9WZA+EVLjqHJ1dx48bxsmYgd9luczie9uQ
	 CwqjuffsTtnnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE15C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414371371.20766.11009190423461975909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706d99d8f0abfdd04e0b2d364f8adaa912960e6fc476dfb64bc1d0d393c1e5bf
Date: Wed, 15 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784143713
