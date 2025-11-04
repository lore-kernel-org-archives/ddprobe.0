Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C759872605
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762300193; cv=none; b=TQtKe+yU7fy3nNm3s10aLjPv7WyXhnCAcpEj6j353Ii7OrgJ4ZITkQxLRI1t41bVbmecH2AFLwpMxh6I1Mopd6RUtZ1KCS20WlE1I4/dO8BI+6hMDwPVXUNnQQpS+Kqg8AQKBaUnmQpe7lq1HrqfRCmAowdp2QbF0q0QxlHJn1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762300193; c=relaxed/simple;
	bh=QxXbpJXTF5hUJfwvweA3CghqEvT/L3RWGJx7PebzKAI=;
	h=To:Subject:From:Message-Id:Date; b=ZtvAIn/GyvcNYpwcGfE8jVBVsjcnlSslX7VFg4Grmtyj3OU3KALWo6gCNY0MInYZxgsgW8Ofv4Z5xecWTCMd14RLjxOffjoymzZwjuBYbtbhdCh/wQY4paSseDYp3PqUAS6+jhCSfahwLtfbX5gvmtS+02gumYnl2YFcOb9SC8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH2KIS68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH2KIS68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F2C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762300193;
	bh=QxXbpJXTF5hUJfwvweA3CghqEvT/L3RWGJx7PebzKAI=;
	h=To:Subject:From:Date:From;
	b=SH2KIS68hJahL/mO3r9tLdqQAfbyrx7Drt/bvVBcyGz1vMEcmK1Ok2i2LCaS/rZAH
	 JUghA5xw3gjVJthpmaJgexSLkTTN22t+fnvqCn/UrzSjjHCOEeiyLVx/nsVYI42ORp
	 OJCbHt/fLQ8ZuVNwbwmFE0kW30bL4Tt2+80ZGgG69S81pq7RxhNZfpgq7ywmSppVQY
	 43K3S5lNdRd6PfNmN0YGAaLQ3WjNIKm6B3RinbrfodZpr1JS3qTJqoGb95toKsJXe+
	 yuo4ahFWLDCTgKf8ufd6UPPN2vCopqcbNUszgqnF6T4+F6M69kI61tPHnkldj5r3BN
	 V+UI0fJRW+0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3ACCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230019359.10670.14756343846894652880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8f6a03800512dbb7e9c7f41c9d1ee2cd6a9b965247f8b2dd3216eb51dc94bb
Date: Tue, 04 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762300193
