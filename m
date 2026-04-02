Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350A03612E2
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775103934; cv=none; b=Z6ramnTik/JEBk+rCAJqUjakkMV7I2zxYmoCrdnaCtOAz85rq5KUeHnHApCPTl0as8WynbzlPmjIcIOLpnjEN6auJm6yd6SCaCjEPX1SlBY4hcKMf9+cyuMPsIO7cU+5jQWeJOrwAhAL1kX69Kr3s9t0zrdAJ4TXv/hcBCabkT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775103934; c=relaxed/simple;
	bh=Z3vFYHGiLOpM2WRr2qcx4o3e2hKy/lUAor0hB4EEAlY=;
	h=To:Subject:From:Message-Id:Date; b=RdruBLArYMIXz3mrZJyDYp0ot2w3S4c5o+lYZIIygZBUXD9g9lFgM9aeQ62T+cCiixCxVnQbJv+BmyIPU0QjNiWgcmYk1p+Q5Dc7i75+yqcktXAMFIwEGguo2XlJEhM/9DsAvcbfBvN7FOBFWU8Ynjb3p/w9Dw3jCtAa1ubD2m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3s0Z8EK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3s0Z8EK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C866BC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775103933;
	bh=Z3vFYHGiLOpM2WRr2qcx4o3e2hKy/lUAor0hB4EEAlY=;
	h=To:Subject:From:Date:From;
	b=F3s0Z8EKxhruthO4abcX2G6p1W3P9/gfx3f4uSF40sDMzAJK39UiEbivitTRtpJDD
	 RkQf3BPLg23Pj38bEdimPvtPoTAjPzAh+J4ploUIYpmVN+ta7NsohO+04ZQPvkVsMw
	 ntf0Sybf+OMhlz77rwc/KoOaFGDodS7Qpb33HJmJL5Ghz2s03ekcFQxqYeyoq8+bde
	 RdkhGTTBiLDDpzaIeqt4z9qCrfGvDk6UadArnige0rLkS6Mlk4+0cfTqXOHshj2Hav
	 jMw8DTmwnUOJMo8RsGTCblUM4RfkT0RTP8EE5JzvEX6rOmiQmkyeilXdimGSV0M1fn
	 grqpzixe3myGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A33CC6B01
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510393370.18247.15256102596934528254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c291572375707202985a9481f133681eb1bf772d67629b1c30e51d12f237650
Date: Thu, 02 Apr 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775103933
