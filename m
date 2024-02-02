Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A595144629
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706887697; cv=none; b=cNMWIOZAtYrVteOiPzLWPwAXJSWXcgxEDsufJOin9yHbyK7fGwlK1WwKcI91EBVJ+iUwOd4XHDME8QnYEInfkk6Tz57mn6z8nsBr10VabIW2G+i2bpkVsrJ9/dJRDKJFS7MxdP9KzBwwr2Dl4SKUotPvUJDfYV1icFUb54IiX0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706887697; c=relaxed/simple;
	bh=/LRo2sMBXRt0IhIT/UW3RN7RpFBcGJlmKbIi6HydaOM=;
	h=To:Subject:From:Message-Id:Date; b=gVLsv8Wyo4PChJ3uTMAupXrtreMDgjOuVTs4AgpVTrxTejUbv6zFjBUnFbNUYVqZX1OSiylOrHm3J+oCPSjwfQIsDsuEu69q3a9Kj1YopwYcq288HpOkNbuj4S2yR4jFZ/e51/eHexQaLhYkmH+X0+UpOgcyj6JkdDvNi7RfPPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVa93acU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVa93acU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC58C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706887696;
	bh=/LRo2sMBXRt0IhIT/UW3RN7RpFBcGJlmKbIi6HydaOM=;
	h=To:Subject:From:Date:From;
	b=GVa93acUYi7On0T+sWaGulvi32keqyXVss4mZH8V1cVB/akk57OIummCnXn8sFKBe
	 oiIctE1DNiUu0WJ1olASUaMmQKHiKzrMxEzUmvVlsO8uf51XGX8DiYFLTF1m0XSgoK
	 viAw47CWWsm+NFe3J3UAFYfzt1fz8s8EgxBdvi6Agmj005BI0UZLy+UqV8yuoyxxRt
	 f4KyYqFp7Gna61Dy07zUUcscycxzf0STdfkHHJb0And8ptV4hk6WAp8eshOrQ2XMtI
	 GopTobOZVY5v4rr5FFZ2IwXppYVnAeL0LZPYz+8CyZZYi/MQrZD17piwiSzel03pe0
	 GJ7gpiB5viRTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1E1C48291
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170688769637.8184.2662761636706004243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1eb048b5e459b768b0bffa94944b3522d03ed890f29bf65a90ed798765fadf
Date: Fri, 02 Feb 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706887696
