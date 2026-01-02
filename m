Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1D02D0C9F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767381834; cv=none; b=Bi51sqBGPlfVo03yT14tyNuQswNzQ6vZPWBhWet4DM8ocaxF/vkQju1GpqWSCup+WkGuvzicGDaatdqik5g+WeQvw1dti7BKUJx1AInS6LYjYERJk0hfTRswneoTQQ0T/42vypnBQmzEhLXrg286hTr9Ho11WUiWA3ihqb6ISDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767381834; c=relaxed/simple;
	bh=1UFsqvaruSRiINwZ3BmRsdZfRNE7E1X/9yoSOMr7CVA=;
	h=To:Subject:From:Message-Id:Date; b=m0ytze/YpXyrigIUEviazpbQioNvghqaVqx9kbR+GEw1JBXgjWQLalkMTlIMkyu2JjX4Y0IIdZNxn8CSbeLfxlfY+qBZjpJpF7vAvRKWAobQ/OSl00/w54PiI9ZcJAWqaHMN8xvZFbLsFHQG8ns+wAwYuwAW3ln0U+whJOiMQYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEgHqkzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEgHqkzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7629C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767381833;
	bh=1UFsqvaruSRiINwZ3BmRsdZfRNE7E1X/9yoSOMr7CVA=;
	h=To:Subject:From:Date:From;
	b=TEgHqkzgWi9fXUCx9LIbRsjUB5KErP5h3ABdCUZWBqYGUB+X+WE7HtguZ/7JdnX0n
	 QPxEBn7zBUdcTocBNY7bfj7bP7viP1v5HDD7sRcisUFCXbsCsfXns8dSB5nT48TIyr
	 xTVhwKcL1huaecP4I91BABRKKZuRCnB3POi9ZJVS8Zlu8OmlAv6KEe+aVBKrGUdeVb
	 c7TthWBp97UD/mKCgxZ2I5L2Bap1EyfvKE6qRRV7r8lDk6L9RxBFksVrF/ymebPlwL
	 FtN/R+40HZG74N1D6xudIXFSu/yYFt09IWSA6XZecC1KdFxjwtJ/ZL45aefr6hyCSO
	 TX7T4Waz4ZS7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4BFA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738183360.27574.3196020938100835136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606a5c880d626a38e5fbcd61e66a0ea35ec1502dfcf3214daa45dbb63772b806
Date: Fri, 02 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767381833
