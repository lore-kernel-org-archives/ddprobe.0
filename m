Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450764654D
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718835563; cv=none; b=eIF2hZ+Hw1nMokRdhOXcIuT7FFptaYrnj1bUWLNxFylXmRDNu81YoSCv6Qtmwt1Ss0ohnYEkyOPyqAYncj089NZg+luxDBSmMs6wB0pFfBp1qr8vcmOSdVLjCofINQ9VMkQRpOI2GOrnQTBIRYbu99ZIG3LTO46uw3nqz3FvLy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718835563; c=relaxed/simple;
	bh=2c0Ktua+aYz/h8tur4tXUBGLF2ecaLUP9570oiwG1iA=;
	h=To:Subject:From:Message-Id:Date; b=knIGY8xhtNmvmxqdvgTJ+dC4fHZqqxsVOblQ6faP66WBh0eWpyKOzPNeptJHADCHncDkCcepSGktNB4owt18YFbVcoCsPSfHNYo1kPHzNqmT0lfuhnlR47FAafSGlccCpqsgnLjemjqKTRWQaJ+ELfZDj98r0lToZIeJMwyIv+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWm+3IsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWm+3IsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40F8C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718835562;
	bh=2c0Ktua+aYz/h8tur4tXUBGLF2ecaLUP9570oiwG1iA=;
	h=To:Subject:From:Date:From;
	b=HWm+3IsAGve09Hda6vdQ13V41j4B0Y0lBnHKZ3BaE5wy/hO1mb+m5jfnyW2fcdIrn
	 k50KsxQ/qYj1s8kO5jXgYWh84bIU5piyymDCLfOEN047e7fyQReunBPNZQFuUUgC4t
	 znrjxRwwaA39kzG4o8fLQT5yZrz6PNqaQSeNzsgYoB2Vn1TY8n0BMXQqtxT2qeDxEM
	 L6tkN6gezHN/uj2vRByT1BhmWYWb8IJ6U9hIWLxwT7moCdJf/ZU8xqfPoMxdPGXyh6
	 oUwo3omJHFWchgL9O9lcNd2EEDurefHQAbu9A/aQeluCoQ5ASRylYg66/1eFCMxDNj
	 yq9tTcyb5FImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC16C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 22:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883556276.22607.14629622126504006464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0303eae724560aa1f2fc8f020100f72886513ceaf13a28acacb20242ed0bab
Date: Wed, 19 Jun 2024 22:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718835562
