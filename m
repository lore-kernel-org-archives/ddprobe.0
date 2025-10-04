Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A2420E030
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759580394; cv=none; b=UalQj/lZWSV7faRrLi3Rp+uEtKKX72N1RW3YqU+7akoPRGMG13ZQPMz+MGZ4wNdOADKLTXD48kVBuYz3lGv9t4qGoRG3n9Ly0/3IhBzfUk7VRImJTWBX9Iupe6W3y2LBEXoqh5ykQ1JG7kFALXJ99ic3OBN/8unIwT83KknYdCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759580394; c=relaxed/simple;
	bh=BDi1SDSCQaDkZrjOM6S2GqrdO20hFm28URNpWEkIECA=;
	h=To:Subject:From:Message-Id:Date; b=BEfN4o5JWbWJQCfdrFdcB5LJ9k/ABy15umH/v9OwI8cm6bszeGdfb7soatXZ4dOyGDKayYTSMlzsKxIVmQilVcdMdqoN9vYJ7Ue2zgSuf8ACFendR+r9AH/Co4iDQ7gnxJY0SQLqfK5ocMfy8YMdNRywonvkDRmSrZBeSyoWXj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7UILXm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7UILXm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D0DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759580393;
	bh=BDi1SDSCQaDkZrjOM6S2GqrdO20hFm28URNpWEkIECA=;
	h=To:Subject:From:Date:From;
	b=B7UILXm4DU4743IGAYxAGRgiOsqzuweYYwA+MlYYg8rfMr9UO0/6fkEAveOHbKS/w
	 54Rx7sTvwYGbe627y3TrNSFiItGqrAn3xO2IMQoXL4JNaV9M7lcNoS2cqU1MFPuGFz
	 EmnQjznbUqnYbFrg29+rsFMA/BhbrJ898fNbM6ta+KqW1XcD9ZidwwJEEsyXReoY00
	 NK7Mnesjn8blnFo7DcEXgCCQaoMqDO8qk9eGDaBAVPQmybi3sdNi2j0+4JF50w47B4
	 8zhQzhESd+JEdLj9YN39DQ+bHK3BzwlCsoOsdqU07VBgh1w6kFdARPXtdzKOaG1jQh
	 nTdoocfXP9Dog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A8CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958039357.1114.3586937985917140915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb8daa6c4dc448a7f9bf109bc19af2f28b9c589dee3bfbd0664002ba821d1d2
Date: Sat, 04 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759580393
