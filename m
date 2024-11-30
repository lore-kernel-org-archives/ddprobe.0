Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4261D43AA1
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732989354; cv=none; b=NaoDeKhdIme7JVeNs1120ORDqLyGQO3M95FbSuD3rwnUypnW8a7teIojRymUdoiKcnW9vxIRWPVu5V0F4oQZnxsWoadwCFGqfwDZAZeYIrqZzENpSTYtxivw8e6GNeOZTlaPuGratCV80b0gljHPhXNw1goUVYGPs80zpOZTPXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732989354; c=relaxed/simple;
	bh=Qy3RLtXfSuuyk8ybOLnzc5Apov/YgmuBpaZmtHiypHI=;
	h=To:Subject:From:Message-Id:Date; b=CmK+ap6lbZBsVQoRzQeaPJvAFKip+AjvkTfwHU8tFTcNaruAkZDt1TsASF+sDKb4wXDtKqzryBek/EQfLgjTSl0nBD7Xye+SVONvnXCb9TeHBRgWfygji7IZu6diT6H6FHIdUDoDeOEyMZUWvRbmAavzJfJFCIO4C2Q85HNhLfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckGuM9/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckGuM9/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19C3C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732989353;
	bh=Qy3RLtXfSuuyk8ybOLnzc5Apov/YgmuBpaZmtHiypHI=;
	h=To:Subject:From:Date:From;
	b=ckGuM9/0nHGFN4CxRGoD4yUV8CfqXqy47o5p0UK5Bc4BC0B9falmXYbzmKJ5hR9oB
	 lcIP5iq0LCN8G8+y0Em/nZ/uTqmCx3mTeZ4oG88yPudgWeHZZHv1IOG+9Hpetw3S9b
	 nvcyo9nswZGkZgxNCBltR/aW8s0yvtxIAgwNnlClg+jbuGBIlYMZui7EWaBq/ShX/e
	 K2M+mFddYkW3QBdqca0efOjh4x1cJnLQWCxtZlwAKQyOD5AK2kUKnGtzHX0kytjpwI
	 IRsfLVbhSxE6doXWsp3XhDsmm7VaVbfGg8sQxxNl6lM3YNjAqi2yGM4zBNeqewThvX
	 g/mzrfSSshMXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA56D7360C
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298935360.19898.4962475098492728156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f848ed6ef53e6ceddcf91d43af2f2db5c414f30940ac11f66eadc72e8cb6272
Date: Sat, 30 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732989353
