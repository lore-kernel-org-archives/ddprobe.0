Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E181ABEDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722631554; cv=none; b=ORssXV1869KwAJ1oDESyO+RcG2y6PHoJcvhwejpCJya59amUWC+jEJ7eBd+KQqxdAkQskaooolCStx9tHBMLozI1ufD5GW3FVdPff4/O2HcyJbpZIiNcI9GxPYIQfFqcj1qMXU/IaCrkglvFCRgntsPYU4JHccqRB7k58bN46BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722631554; c=relaxed/simple;
	bh=PGumrwbAoxa/99LAsOA8SIKgeBkqwwVtpxmwhSX7Sj0=;
	h=To:Subject:From:Message-Id:Date; b=oqj3+NTwgzbudyqG63sdVLOeeC9F+yEpcNdfNI67sPwvpN3e3eLs+0QAUrZhHQbIAW5sl2r5HEfzJSfa81lvffOA6o4+D+WcKjjc11smHMUM8BykMiKGxfk2/spT3jQmzywpNwuNz51XSe+X72PVs7Cd/XPSS2DfDNqC2/h5JXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1DURqPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1DURqPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B640FC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722631553;
	bh=PGumrwbAoxa/99LAsOA8SIKgeBkqwwVtpxmwhSX7Sj0=;
	h=To:Subject:From:Date:From;
	b=n1DURqPGFfKAhLfzJ9Sfz4rLqa8gNk1Wyosr9n5mV45KX+W1jYX6Qfhtr+MpK8qGd
	 0oNF8eKFltAsmPzMvkjTOb0KzOGk//fvVUdYcW7VwLReH3xyuRncPIHJdhsiNPcEPz
	 9ZKqh3SPLlV668+j3ZGfYSyzWp8Rndjh/ZwBqujgmXQGTb8mpIS333lEhUeaY4avP/
	 jrWb0wcxDlt8tzDwH8tImNi5GapBbAH2FG426VGmm2HfzO1jfNT0LxB8EO1IKmeo84
	 FeO3Wtk0nb6ubEr04JOwz8uNVR1wDGRGZ98JiK0OZhSmz9C50X2h9lS5mRliF9fxck
	 Q0A8hya6QRMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C5EC3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263155364.22904.14184203475134219185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c4ea7de13c29319b7b1f90356369461e8b3167e854422d5f67d1469b0f458e
Date: Fri, 02 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722631553
