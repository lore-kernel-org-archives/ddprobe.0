Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C58830C14F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778920234; cv=none; b=FgPOb76fOMPzHlfIQjntutQuIbBEq3Ogr+QqQWwQAAnm4W/g+FLkuyHFcnOiJ+KB7b5R776KH3Wowf66PuMdYVTPqKnwrsBI/2Mb4ZdrZIL9v6Ka7QzH/kgiZJpqiflxoydvEdG90xDASUr8PIgZCdJ4CenzbI+0/u7LZlstbHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778920234; c=relaxed/simple;
	bh=u7/oTjfFsBPrA6GVlVsrdxm/OyRtsKMGZWO6Bj/bEAU=;
	h=To:Subject:From:Message-Id:Date; b=rp3dNESlKY5H9NuliO1uohZmaMY6snV8DoFnacqCxsWGq0Ulmn1Ep0liWwOFW7MGL+EgPxPzz0DJMnkwXjQLBHioZzRIlXIMf+IWLWG3++p+dPxxUBIb+KUuSufSNpMUCHQHLIvHZLHecZwAPvhzsZ3VQu6BGao3XeN9ew48CJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdhKZMqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdhKZMqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ADCC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778920233;
	bh=u7/oTjfFsBPrA6GVlVsrdxm/OyRtsKMGZWO6Bj/bEAU=;
	h=To:Subject:From:Date:From;
	b=EdhKZMqxpjLnmXEocar21cmEVEweTtBwcjr10/4LtwlCUiJQjwMkUedn7aEI4cRaq
	 bUyz82OUYdbzhNLc+cqbl/I5eaQ5iTIXw7xg4n2IijAlgxdjgf4d6wKpfIjQzsOLdM
	 vW3esFFnn503pGw5lRS9gl+6cBAWpJANJQIpnrTlhQsH7eK3K4gTDJvKy93w0R6QEU
	 9ed+JnltdLQcwFLEQbZHKf1SqFxmLHaDMVFQNhJ4p0NXEYwmOSMkE2jxBU0N7ttzSt
	 2oL77xHQvrU+2iYkIezETd2842uVlQSl+VCYaUJAlB5f+NzAO+5HIaY6Z04qprn5Qr
	 Jkxox02PlGmYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF466CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892023369.15891.6535084546989015131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1623ac679ff49b09a39c379d71e70ca9d6c36459beb6f45c39ea80e27dc71d0
Date: Sat, 16 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778920233
