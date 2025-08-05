Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B8B1C861A
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754376595; cv=none; b=M7YMxiuwAEVllhvTuUSeQOE4/Ft2foDJGFIup+IZ7J1d0FBarbaGG1kb7oWLkL7NzzjH096PaOIOeZp+EC+1kJsaqeVtn/uNLoiApc7NqYGNHdQuxI1Llfm6wqPwU3CqML2p+c7z3Wazfz8iyt5PIQIs50zTm6aawaQcjRmFg88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754376595; c=relaxed/simple;
	bh=z/Ky2zowQ8ZlyXqQAHCwXezBMdg0uRSvLiaXZ9Xq9M8=;
	h=To:Subject:From:Message-Id:Date; b=GDYi6e5G7VvZLBJ9dU+H58qPagzbH+EUfk0/+1gBvEykBGglw8R2VMCdlCUww7Lk+nVoJRss8mxsobCcEldYm03++d+RJ6eLptMtmCaiuzo7zm/10i9neWYvYAd/6Az+uKgxIYBvO0/u9vwajsaabTRWCnLvgZ+5dMjqiJPKcp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1fUxCvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1fUxCvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF82C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754376593;
	bh=z/Ky2zowQ8ZlyXqQAHCwXezBMdg0uRSvLiaXZ9Xq9M8=;
	h=To:Subject:From:Date:From;
	b=t1fUxCvXeCSYSkfZ0qulYRkUNzFe8+EIlkGBMou+JbvDZflPsUf2t+0QeIn5xFM9x
	 cnqEcWq1Zxa/wVq/B90vtqEGdZNhCVquFGkarMr6JXJd7kooQT8iCkMs3UAPDECZdu
	 bNf3+Rsfgfm5yjJ9QlXu4heVnbeofD15cPPyWuD3xAieyC/n9s5E3sbB+g5HLT1IvF
	 hHPC3+EaAKF3n1mHpHhksfFXoimXpZNl47BDiGImyrLGHla/Swd4DVkDdtbvOhkmKa
	 7EaOlSspwNP6WACoNdkUCYxXlG+W+/H3tgelsDiuT8+uMRhkCbd+2bgDpL/vPR4SKz
	 Ho6P9l0zgqTvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F0AC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437659357.4109.7675772606910597691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4d720ecb4d43a9369a83609d4449fa5b02c9dcdd7b846f7ec0e57065bc3e7d
Date: Tue, 05 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754376593
