Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308BC303A23
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761656994; cv=none; b=a9OvIgSzemh3YEqk3SM5xnfym7q5aCPA24EkW3dC3oK5BsIyi91HXLBKKzKqnz0zXqPHEfcNogdqCkn9zo2Bcp/TMEvmvIIFT1Kxt4xdB06dQZnSMaAKNWJs8e04pEcljS07qOtcKscAOfSYc7vTo+zJFNl+j1MFjS3qVBMm8fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761656994; c=relaxed/simple;
	bh=ZUKT38TSJ8G0gpNEQoD8R9sgHYEs6DLyaifPGDZV9XQ=;
	h=To:Subject:From:Message-Id:Date; b=BMdrcaaNdiajY39Rj1qoMRqLSQmX9jvpBWegy+ZYPSTLFtPEtcJAtMv9A+ELkjMt1oiSKioTBt6nAzkg0sfNSMkkR5Q8uEIYyfiOGu6uw1GE6z6iLwoBVv8GrZ3Ul/GjP6PXpOZeQv8nuikN0SKuvqeJsdds+zSGlJdRCIgAEog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7AMULgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7AMULgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA09BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761656993;
	bh=ZUKT38TSJ8G0gpNEQoD8R9sgHYEs6DLyaifPGDZV9XQ=;
	h=To:Subject:From:Date:From;
	b=G7AMULgdX764K3Xz5K3/dMRCRY88oY47Zou8tEdhKo1mR7AnZVKdjytvxK5NXVvAn
	 npMuNUYv4efL87kq/Xn/a85znkASGu60TWRXkhR01I1lcFQn7t42coIhT4BJBu1uwW
	 PYpSfki7c4inmg00JzLeEk9yFUGnvMJlcAMT0dktNcnUmORkLwaZUnXTvlUmWAcpPM
	 QAT4GI7Hb2ogvaR2KH0hDJyPFZg7KR8HRGjnWExj92oU5+gtqHLEW5WV1nhfAifp/g
	 M6Tl6KA+E5soZrHg4AXfzjJf1645vJ3e5CR3wM6NDmpUHc//KKEtJ9KDJtZuo5xzOn
	 dC/hjGU3i4XRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997D6CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165699361.20954.8646248393384725362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e04a92af225fe85d96d8e095ce0e3457d7a616e771928384e683153369ded6
Date: Tue, 28 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761656993
