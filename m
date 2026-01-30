Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE6837F738
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769799234; cv=none; b=hoWjQXDNb9d8iUBT/PgcARe8jtlEefmvDDca6gRfo4A5r+QjfrELL/NwHw4UPj5ciTJl5Br4AT+MtAciNqTpEWZXmzIgCL2Eo30Ng590yno3j+EPu8yKkpCboFEkAala4+ukhsCibVe/wLxMsEsdhWCuPGefyooMU9VrtM8S8cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769799234; c=relaxed/simple;
	bh=tIJmTyL7+4o4uF8/2Nsi8nujDBW1trRKQ4c7jeo5vhg=;
	h=To:Subject:From:Message-Id:Date; b=JxuR9kVkshWPkQ3RV/O9joljcsK90OklHaiIGpA6xb9baNhmsDj1qKUfs/j3qMpW3nUrIG7jUleCPQlCyAM4NVx8X2TUphSxDU4Ppq5/UYetm2cdUSnR3W8IwyV+Iva0L+db4KI0gxULFOVNQGFgbeTGuRSwGfl9JlvFATgLWYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2hSVkVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2hSVkVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769799233;
	bh=tIJmTyL7+4o4uF8/2Nsi8nujDBW1trRKQ4c7jeo5vhg=;
	h=To:Subject:From:Date:From;
	b=i2hSVkVNKSiIXmm1G48eSR4nZvn5rdzIR8upyWJLntFdbyunE+wd5veYl7YUpOXJU
	 Uf+xT9FqdMsggJmCuE3EjSQBHOQMveJWq8NQwVsWsxGQl9LFIFjgs4vlm4Zn3mIy7N
	 j6t3MKEVrVP+R7MZNv3Wi3wrPgvWDYurMeSJyfVASUGbjY+mNU339flR2LXxcUKrtH
	 Ho6nYVQ5C+0UuQCmRgqVhrdCqOTCHo+nKBeehd/Zb3gDJJuDaxXOyOw+W9XKk/OqKV
	 LzV99TV7ljNg9oIVKN4ZXEPU13EtyKNz7e8LwrDhNmf3NyHrDRz7wrHxvd8+qfrJSS
	 TtGXks1nyrjUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97032E6BF30
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979923358.31903.9153981834516953630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472ea27c263b19a85676ec2be6a79ffc7d23ab9231d85ab64014fd168360f5d5
Date: Fri, 30 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769799233
