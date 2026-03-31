Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273F8371D19
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774987494; cv=none; b=uyKqKBHOesf+tOKN7Z8jhsfqFSxn6JVs6Y9uDv1eRgPJ9W7CdThGTEYM3LjUuh5Dh7bgKuiH/301ZE4oLDSlvGZK70qRRGs8wKK+5etToITzx8CPnu5vMHwKNZmOlOzFf6ZRO0LxqAnl4+YS+X6IQG7ukBB88Q547F8Y0N1zkn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774987494; c=relaxed/simple;
	bh=RgwBsSu1/WeMHlr75eAcMkUKYznh2hKoFmf5wMe+ZVM=;
	h=To:Subject:From:Message-Id:Date; b=MHncyY60vqp+tgDNEr7qMmJo8UC+8C9n15y0ZOQ9M/DpsrKJuZKHU9LDPNti+KkJ8fh/6jxn60B0EPzfq2QQP/RkkwS1WkwDcfOItW8llZ2RQW4VAKKOr/pJ1r4OvO8xt3pdM1e33A4tShStveEctItckmkuXupFAOh9PHXYylI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oErD43Bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oErD43Bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CE5C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774987493;
	bh=RgwBsSu1/WeMHlr75eAcMkUKYznh2hKoFmf5wMe+ZVM=;
	h=To:Subject:From:Date:From;
	b=oErD43BhujLX4YwCPRRnPRFgxPFctzRZ97B+ll5LEv9NsWpvcpGvd3z7HbNfcWH1K
	 k6muoYU/+i9OgEW0ARSySXaG30VhaUKnmw0rVc6bo+LilOfLRRXibnpvi81pHAcJZz
	 /XXr2W9nSN9Gl6diMVPZgHXi1wAZx9TY88fbBc24ydmapm5rAM5aSAlpH5gtOkk9bo
	 XqYzSX0dHd/m5cenew8i9bG2P8TKR71rq9Ao61d+lt+R2Ndz+GrAu7D31cly6t8cfl
	 8pTZe6vEuJnqt0kAm+0MlyTFXPNuEd2rhxEv2rGsdRr/6opLcgNCv3l+1/+XhYb3Z0
	 PWrftNXxj/XXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970E910F92F2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498749360.20879.11330226659174260983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d57ac961430c712580e4d6e0bcb6a08cb05e271901fddfe231a0fbc1477f9e
Date: Tue, 31 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774987493
