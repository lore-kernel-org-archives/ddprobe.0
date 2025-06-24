Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1868D28ECE0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750773594; cv=none; b=IxdGh4i4Vz9TUraM+laRzZdb0ByOfHnbfoqr86kxZBMYCXdu1osQBQpxUHjEGZyZH3AGvvCnHeZ+WJ/l28xyecIOPMVkelZRNP3g3uJB4AvXGcewpz+SSmJV/1qchCs1zj2qsr5Jabg/QJLQCgFpp+CgcaiYcgQl8UIE8p/KZwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750773594; c=relaxed/simple;
	bh=/t2Ro+ssUt16HB7ZlwJteJwYUMBA1r/n8eopcnxEd4g=;
	h=To:Subject:From:Message-Id:Date; b=abxyqLdHD4W5lIfIiD1rI8lv8S9bZnOPXt/NtumqL0u2uElePF+jevfn+D8maf2dRxdxTsi6lmLYhyZWmGEuWn2K548qEvv9kFDRPMlBmXsLq37xsIg0BnCScvKJVJD3FpWfn5P40WWAkhxHYPpjorvpMbm7GMIk1O2aA4j3Wjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D53KEIKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D53KEIKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F32EC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750773593;
	bh=/t2Ro+ssUt16HB7ZlwJteJwYUMBA1r/n8eopcnxEd4g=;
	h=To:Subject:From:Date:From;
	b=D53KEIKUoUK3n3I+1dwts6BEL7O0GLdUY1iBSUBuUxaxVg2udxXCDWoyeH0eNR32l
	 me7u1zPTPQBbVBtGHyaGkovRDeyKTpZ2OPnr/vLgH9QTq/rbIv4YPIwgE88NcDzV1X
	 /EuLMAa/E/qOQmzLUGR4n6hV9+dpnA4k9UAlewqUIzfoNXLtpDIkiYu8omS6OkBzk5
	 bU2xymlJqWQeIXg7Rne690PmoZT6PlQlzSbyLyB+Ft9Pcgo2ENgvCsrp1r7ynLV6ii
	 YXmgmj7XRncCUU686xYDsJ5ZYa65i2s9IJYYxFbsDkmt0rVIjWCoRO6RWLeLYyUrI1
	 21u6PxQ5yXSCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F530C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077359357.14399.9256862221302479596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94313c011f08c1494fc60efa9ef10eb1a1fcc5c986d76a862be794db8475dd4e
Date: Tue, 24 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750773593
