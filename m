Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9063F86E9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783336114; cv=none; b=WHqZDNdcpIdY40SVUqQvtv6YpDTKk+jz8OgfrcTLSuZ9imoLTa7HqRf4li7+sOSB/dxunQ2G7jEbwFpDjJyOkwA0cvKoKYXhSI6YT9c3om3sYIYC5r0F/Ax/c6Mfx4ZvbL5xtHDSC/4LpBQOQHSeAa058lELFNlofOt0LUy1KFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783336114; c=relaxed/simple;
	bh=vJLYNE+iBfU7VxbScuqfW9IlIAGGCUP/2h/upIZ7f+s=;
	h=To:Subject:From:Message-Id:Date; b=c6NfWvU1+OP8OYkCaiCXGZN5eTEOj2iMwM6wA0mHB5HYMwvHDz/DIZeXrgMdJ/rGgVdFGDChhwBTcvi0kkpRk9QahjcSdWY+d/5LgZfMuWbR8KlUMBCJGCnlZvxyoUwd6+ucLiMJgzy+nT2/P5iN/vvDjtBeHJEnn8UZnz/O3mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpsL8dxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpsL8dxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B32C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783336113;
	bh=vJLYNE+iBfU7VxbScuqfW9IlIAGGCUP/2h/upIZ7f+s=;
	h=To:Subject:From:Date:From;
	b=LpsL8dxZOIVOCWlca9rYJL+qd8y9SSZBOr92qdBkBp1weo55FjLgyy/CeTiA7rbC3
	 qCQ3odTbZCpBBqxn0nIe8FUnBM8BbDzsEApHfWLE1hQqVjWw+8YzhAqV9+VsO0obsV
	 opG5+SczhuGutuZW2PNABKhN3ynPUuaEBPDbLqW68ZKbH/7iLw7EkbJm+Pj+JMEFAI
	 pbXwibTGbrHjBV7jjXcraZHmzvIepxaKNa53i4kZLvGMBzZQqjUxoXtQ5jPxVjZZnI
	 5rvOzd210EzRrjbQII94lXIbOJyo4iV1X0kF8fifRWKQIBOfzm6CS0G9/FgmjIOQcm
	 x4B28KYy/r8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE91AC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333611370.25673.2511606397873893305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830cb73be36e7aecec899aa4591e828c1393575edcf27184d63996763bfc946e
Date: Mon, 06 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783336113
