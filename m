Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59C513B5AE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769243633; cv=none; b=F9BJuGlbul4mJOFppD4VaIOJozTPTU/rCdec43rYPI2ZFHiue40mgri97P39s5lZm+G1rlvpQIgguTXlb732N13CVU2wERexKM2M672kvJ6LADz27ZRjWNqWpRZ+MsKPX14yKLEGVW/hqm1xgrStrySKjdF6RDtiIFjKevqv048=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769243633; c=relaxed/simple;
	bh=y3wNLqekg79N4n4iMIRtp6wa54RUGg/cJBBCt/513OQ=;
	h=To:Subject:From:Message-Id:Date; b=nvP3ccMq16vdIDCuGymkky5SL0f2gORy8DBi9LYeMc30Pysuc20sTo2mRBhzW2ADjDZTiriVwz2apLIVKxgYs26pJKf5+jSYCHYgYcmYA3aqyb2PoHsRBw1HKwefHgc84ucsAfVvKcdw6OSSSBDSjBNoeX0AXjqPBVVIIM0c1tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWu0hF6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWu0hF6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A709BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769243633;
	bh=y3wNLqekg79N4n4iMIRtp6wa54RUGg/cJBBCt/513OQ=;
	h=To:Subject:From:Date:From;
	b=TWu0hF6YjnVoADXHuPUI0aixiVSMValZIkFBynyjSu5PM7RoQS+DsjdcONZ18N94A
	 /6eTCtAzMwraDOZlCiFcpqOeBRQbgGqIBYuiyW+VhsxaUEcY9ItBwJZuEE1nGEh2GU
	 GByBvnfJKD5ln0F5VR8V/YPmttPsthLhB9uWZOOzvdEcR0/OFdhoMXDvk9qTkDju77
	 foCfIoOTCyPf8CTcooon3+bw4H03LBQ6Tdp26Iy1DgFZ5aIImPe1jjSQ2Bn/fie6dV
	 JSP/7a6S2JWl9eBhb9VZnXQAKAcQQvV/clSTd7dtYPJaFn5dubDUH1AxCMC1HFaDip
	 1R8sWhoJwxlLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9562AD715C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924363357.1577.8201354167823406227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c364578983a6fd1c53b1b41ee2e783ef45d9e6d69704f0427e9aa2dfb0e555f1
Date: Sat, 24 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769243633
