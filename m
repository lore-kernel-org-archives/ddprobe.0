Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7BA10A1A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720249523; cv=none; b=XTXBiVEF7l3WQajrcldP5xSz8FeGU8WxJpbErTCNtZ8ufW98/S3G80ld5XZJKInFDtiVtHCwDjDz51l1nVl1ADm3m8iUOD8QjP90GSSm1HhFKoKFi0aUlVEt3N2CK05fzAvyk9nJNWmz11AGU0GuLo4omO35WfQMSeGyB/Cpscg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720249523; c=relaxed/simple;
	bh=VCwRVZ5xmtLQjH69Fe3DtBDrdrzimWaxksZ0WfaeH/A=;
	h=To:Subject:From:Message-Id:Date; b=nj4uOu4wNNHnx4cyMDCjEgkLHYElcCiw9Ut87raluLm07mfIePtCAOEvIn5YqSUMAypbgKLQ3yPyQiIEJ9HLf5FzNfbFC4kB7riIvvl6Do5RSf5sGq4DjtiM6FN0oHry3viLRCAU/F0CZ5fFmU0OK8sVERX1XcQ9oUWvh293z+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhEEJ3Z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhEEJ3Z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A61C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720249522;
	bh=VCwRVZ5xmtLQjH69Fe3DtBDrdrzimWaxksZ0WfaeH/A=;
	h=To:Subject:From:Date:From;
	b=PhEEJ3Z35EfJH5MIQxylMzvprXeRpd9WQn8NulCe6V70/4bPDjkHGwO4IOEKU9qXP
	 hnS+J1f7sQ4TaUaIWyzG6yJnKVK7ZfG5EA1C6ZCUUsP7iAMVvgZqyA3uUrmtVQ+f7j
	 hJVZruvUp7at6fYeLFEzU7pED+WS/Ls7cVzUGKWKIPmMsMCd09+J2s3evM1p/iIRIV
	 DSLFI5VZTgh1BhFWfUjdtiKHEoHFvIYhd6g1/+ROtol5VrErIhtpBLTd7cFfsqVA/D
	 gUanDXHd3t/jxE1OpCOTVJX7xMV9gJW4WSfbqz9wXODyO4UhjOdZC2C4AhZ0hLNe1t
	 zlpxqBBDAB20g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4364C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024952276.21764.8979973425967578737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedf980adaaabe506c4d645b598f9b229e34ae0fd8d5bcf61e8f7155ad2c92fb
Date: Sat, 06 Jul 2024 07:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720249522
