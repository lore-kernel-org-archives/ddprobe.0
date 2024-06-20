Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495CC482ED
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718926223; cv=none; b=NDa50MHgoj3iygH7TYCHYkaiDpfW4+w69ZURpKPl3JSBNbNZgdvuwqtGM7LEKfsbYfJezfoCOHNB2yU0Z+JPOJJj2Q+PM32PuOdW05wRwsqAHrx422BeRHAWcJnTlBRVs+TztXcPs46c0oQ3ypm4qOcasj+4r0xXbNTuqq+DOe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718926223; c=relaxed/simple;
	bh=fckttVHI8JkUULcwDQfi9j7UT0KMt0RiC4vpT7fREMQ=;
	h=To:Subject:From:Message-Id:Date; b=nuQqwZ6DPytjQzX+e/LACRsPZjWzSHrvrMGgZyfuNi8IbzUG2lit3MeiM3CZeBxdzXKlIYWceyK5Jq4LF75FWq9lYGHNvDKOUADvleUPSUpZ21/3Vu20YE8pR8EBWFq8TTNO4rrVV60T/BTZLzqdnOpuXeDMv7zevrkgLE3Qlf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3BluX8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3BluX8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F89C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718926222;
	bh=fckttVHI8JkUULcwDQfi9j7UT0KMt0RiC4vpT7fREMQ=;
	h=To:Subject:From:Date:From;
	b=O3BluX8y7n9H2pdpqJ+yl1Ex6tLSqcfPocaGUUeYvYSFf5sjFW3xlm6g5FWdhHBYj
	 zdkJlmjKeu8lnM5rHerBatUlV2XjjwVU/TUjlFEfl3c87Cn+CC93cUfY6tH4HoS69J
	 PyO4KW1RUzVMyX4Fu6pGTwhPZ0XdKuUJcfp4Ap7PCD6tVHb1GYOXYAU50IBaPyLDin
	 12ORU3u0lyy5cJx7gALXjzrTSN58Eb96mD916Aax/uhpEylgaI9MaD0iFq2YAwU/TI
	 xD3WGyold7K6YgOxEvMZM4JV3E9ZE3dStSGjttSzthHwEycyZ+eDdY5jJK6ZI11RY4
	 Vr0ISUPzilTbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AB4C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 23:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892622280.1066.2725613640526609344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655dddc948a3f4bd8d721ea00b307b7daec879a351c60b7cfc7d866c76f81eb4
Date: Thu, 20 Jun 2024 23:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718926222
