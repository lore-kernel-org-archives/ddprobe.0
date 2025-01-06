Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273AA1DACAF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736158554; cv=none; b=K+Bh8p3F9cfZKqfJP8iNHe+Wwj2kx0rWp1LoWkwYeFRxwWsME87BfWs5n1VvRzV8T99gSQsmnaGMqy2QzNFWV5+tfwymu0qp1Q5WV19Bw8YdNwqcuOZlK+DkBMBJo7rXdnj7E9wxnD3X+XVBK5xXO4JOPxxhIqgJNVJWvHsZTwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736158554; c=relaxed/simple;
	bh=fQXbaHcxUasB0B28UqPQVMIC9goG/dvFptbiZQT1hKo=;
	h=To:Subject:From:Message-Id:Date; b=Q8qKe/u+dXrdbHvDMDA5wZodt/Ytf6pwZIjv2a/m3LE/wbSmGedrNH/s3i4Q8r7TepzTK3/Q/eI6HLai62NBs7cKNAqKOBOCBmUHFIavcF3aIcHSaenAPzn8+VZvrQ2uXHxH9yIBs8YQLX1dnxZV7MVqlrIzP5/xmw3meg0Q9iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOinOd+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOinOd+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7815C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736158553;
	bh=fQXbaHcxUasB0B28UqPQVMIC9goG/dvFptbiZQT1hKo=;
	h=To:Subject:From:Date:From;
	b=lOinOd+9txhMsTP6XRrjT/BFR9Z3GLR+64vgvtHPK7d7ITeDMdrGikhD44vOu6nLb
	 +xf/QVEUrldvHsYvn6Xddg4vT3HafMB6gg08/kBLdQyqnQuzweK0jkoSdPX4AVrFvJ
	 aq8uX+9mueDnEpZgSuz2GNsUI/Di//sXvoRGDvb2cQjf4P7KGljvBPcVu2829sCBQb
	 yQUTCi63xjmQZpCsvvtumuOhlBh7zvGNzyMzl+GUpfnn9aSYxq6wSSWNwI9rZkiZwg
	 siUtqqDHz+MsIJ4DTSplD1fUgO9M/iwk2OpyJX/AjO7IwFFHnrCix6SQ/3xXI8RwOM
	 S9KWUUyfF9WQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706DE77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615855359.11462.12553524516568811002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6e22c64b96cecbb14260bb3e460131eabe679148ca52a2216b93603bc53caf
Date: Mon, 06 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736158553
