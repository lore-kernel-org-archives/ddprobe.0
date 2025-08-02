Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6E928399
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754095193; cv=none; b=OrEzHd13SSyMCHseNvNTQOHZMg3v35gGEkLiZY099SMSUo1K2x0fhV8oS0IhjWGxqQGfDfbMmmmAe1KsG5VKm/Gl02XLQ08CDten81IpfGiZOd55uPIgt5DheTXC2o8o/OofnfEvW3KjZ04gAxYhmUGkWowe8EK4ObiMxxwsW+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754095193; c=relaxed/simple;
	bh=4+628lvsWZTSSM6+a2SSa5ubxSVDWKXhJQXMXS3/o8c=;
	h=To:Subject:From:Message-Id:Date; b=HrWnvoumGTO4jrqEUbPmLs/aojHK0W5TB0BimDzmNs2QIhCNoysShhYSw+DFchXccurgnlAs7Lh/mHSARneBcw/uFCsib/Y5y+WlF2MXo5tFoyKL/dSLM+mu8EvBLmk2cr07QoeoDmdNQaUGOlWEU3phDZiHNrPnboXoPhDsZYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKmjaw4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKmjaw4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DA8C4CEF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754095193;
	bh=4+628lvsWZTSSM6+a2SSa5ubxSVDWKXhJQXMXS3/o8c=;
	h=To:Subject:From:Date:From;
	b=MKmjaw4cooibpPrD382tZhLW96VN9ggGkJ+YoGxWnPaGg1Zy2EUPLfOTq7xscbnMb
	 3gTBbxBbzc7sg0/b7wCdLIEqNou2Zm9Pwv+QNQlogfobQu+6hakF7zffiArFUPbFaJ
	 CDclm+z3MlFlV17FYe9huniFF+KcYCCABgNSu+ENJ7hDYvXGxbX+JE4ztICL3NOp9t
	 F1jOe7uX7tWsMn+kyUYXzX9mw6LeskY+1W2zpwdUWOiU9dFVO1ORR5sGWO3dP5pYyM
	 YIBlXjHLa49JUkvAaqcHQFSXgXMN5HdvZtxc4m/NUK59qCIbAfMX1w6ShrpdqFuU6d
	 kYMHc71Xey1xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FCC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409519357.4391.3172427733653464290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00698a32778534d4dacc92aa07c63393c47745047815da606720d6a4e9e59cf2
Date: Sat, 02 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754095193
