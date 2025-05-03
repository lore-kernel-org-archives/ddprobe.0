Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3660427A451
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746286194; cv=none; b=u2s1nOw0S9Ewy1RTGw/LBkvpzEFSQ8CAmNlF73DZeNox0bNqTZ3lJ6uafEw5r4Q/uPxvpIey+H4nJHyFQK6OzrCEpm+L/6kNY2yCj9ivw+dhj57f9mEHMYYnaELRjz4tZNxGzrej7sExq5tvg2XxKI+FWIsAKWmAhqq+/O1DZzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746286194; c=relaxed/simple;
	bh=T4PRN/T5+nV1CCX7SGRAJlCw16ACvFdXl+bH0Szwy3k=;
	h=To:Subject:From:Message-Id:Date; b=Sfn7TWA5V3zPtG5wMOjrld8BrD6CIk2LA7gUCth88AWav+cqLr1ohvfefyneclPl9wk+LCvQKe/uTzRBqy/8ndZzsZMlucYU2Kd5c9ZmysQ4McsIsCWXTp0U5o3MEfZ60CMwXi8jPr2gKAJ28QKhy2nzC2Ewnp5BQLYu9ZBv6r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tj0DiXlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tj0DiXlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1066C4CEE9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746286193;
	bh=T4PRN/T5+nV1CCX7SGRAJlCw16ACvFdXl+bH0Szwy3k=;
	h=To:Subject:From:Date:From;
	b=Tj0DiXlCw0qJy2K9/rPOrXnW2khk7NJ8+Gk+a67rvT64kaQRevSJQgricM3Q57tLf
	 ok4scmCCdUMUXsF5WlVBy/GJFZg3ecQ5veLGC0mA0ZDIZBzytAijSwmHWqJzE3mgus
	 w+DQDRFcKt6gb2djlIGP4jBE4KyUfWhTikubD/n72DBDJc7eMLKX4cwNfZBjzgUwLY
	 tJVxooXm9EfZoukXe0rPitHaal4y/ZzoCxX8QZTyFZJFLPLIAKvGy5U8p+AWeJuLIJ
	 IHXo+pvHNVzkUIvN2a5Nusms2kRVhZ2t0/xtbxBr0K+izqc3LSPDkr5JIMFNAIVzvL
	 xP/a1yH9wHJMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E8C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628619357.16875.6702160387246079361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e056011065f5aecabaeeca61f0a67bf9372bc7432bc5194b40e2fa7974ac127
Date: Sat, 03 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746286193
