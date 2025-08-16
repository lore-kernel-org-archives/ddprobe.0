Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEF52A1BF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755355194; cv=none; b=Ab2tEOLk8EtdskFwyQ3y/V5gq6lcbuWuHH14F1Rq8PnPdXk0YkBoLh0sFEYo4vJL28QJhvrKiRKlNBH4Ipi1lfEasxE5/2N+QNolEE4z7BUXPSxLsQkyZgnMyZ9F6LTyrZ0zebNEzDvSlKW5vuc1JIaMKHnMW7GA1ueZjmS7PMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755355194; c=relaxed/simple;
	bh=r9jvAw4M/cKD35OKd1tI5soyjMt9SJ9PtqXF79TZEcY=;
	h=To:Subject:From:Message-Id:Date; b=dQLSl494D0OkxDd2iZYM3oxbkj6fex/2ifkbNrVL5kb/G29+Y7c0NlP96wEEFN6PkpyoD74DkrGLgDJ/R0v+7idM235BP59ank3ajhLr25nvCilxOk8uzXPDcjH/PlATHm5qFN+123IeHxGJynNQ8hVRb51fqmFAP/XoOLmvGio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWQIEfVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWQIEfVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53E3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755355193;
	bh=r9jvAw4M/cKD35OKd1tI5soyjMt9SJ9PtqXF79TZEcY=;
	h=To:Subject:From:Date:From;
	b=NWQIEfVAdnirNgDVz1zBWWKl0Z99gTnSTfMNtSojoA/t7A4TCiw1UHxc5ADr21EZl
	 SHgPDbTPVKosOD0NOQDPrh8PiFyjw7ZGlV/Ua9w8cCHfOZjCpiR29bAlTbNjkO+Yee
	 XaXZrO2dvfQ7eYFxJOm14G6yHGcwARKlegxZtd5SfyCWJNimzRdWlCldNbAUKPjVrE
	 Mmh0rXtsRlSAI1++5MVe7NBC1kzEZL2GpSYD5hAYqvz6IGIjna5aaUWrsbdrA1oSDn
	 SsQEwgEqvrXoV7HadH+mGTJjOArj/UkJw3UuS4dfXzHcHyepOtoHfTyIO5bygPvg7x
	 m/qlwahLiVjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DACA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535519357.15541.3571617990557163195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6db05778633f490937a70cdb4682ae0e08d9a92c07134c7572b1e5312363935
Date: Sat, 16 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755355193
