Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B043256D
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714725143; cv=none; b=umZhcyQpzdqGgStaE3zfkB77z616M0+vW9iungI38W5iuF2B8V6Sc2KuBKukEizWVYUKHYWZo0N8GYy5KoqZ9IWjXrS9dFi0VVXF+TACqwYP7PzpkOejMuohK7iUYoP3FAph7Ov/8TZxNJUWKIvxoCHal+qSjDQfiL60e+l4kPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714725143; c=relaxed/simple;
	bh=r18q3yBJeppAUqeCr/x1Ax32vamBlhpD3+UGWd651EU=;
	h=To:Subject:From:Message-Id:Date; b=YQvRrvhEDhgrceYC5qt/3BipmYKP11CsxTnx1QMZl6zftffyg6GkIEqz5qaYAgsn9IhF4jpckL39bLpEmZDRsLXys0D9gU8AxIMzVQHjlFxcNNjpX6RiPyye+pZettDg+TDAFsGXVgqYHRN1R6XDwBAuta6ug334fkkaN91jUko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFK2CAEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFK2CAEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6EB5C4AF14
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714725142;
	bh=r18q3yBJeppAUqeCr/x1Ax32vamBlhpD3+UGWd651EU=;
	h=To:Subject:From:Date:From;
	b=OFK2CAEwJqBIhtZfGDjVdR4T/SQorquXJypp7U48iSEy7XhBO6eNB+Uv06785VeP0
	 i//ytSFm124UFgKPj5iAxfu4Fy8NeB2XphZt3DzuaeSJpAY3ihOxGPLA3VBfcL9lB4
	 AqTrjchbGdlrp0xLVmQq3AgAAkqUcVnqn/EURtTYs1FZOwERlFcjapqQE351P0s1R+
	 Iq3b4iJLmItboq2DqZFH1Pb79IoUFcz8z7Gl1HtUB1aFVfoS8vX9Z0Ar34rifdAbQ4
	 lzAYH9GOs1a7zIsCRBxKKGVXPIjuFIclotRS6z1vfp4PDdhr+S7D3mtiFh7b+d6E01
	 56q3cLd9JdAyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D304AC25B4F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472514284.31742.13281523749953309289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5e77104ef93f3c5e40707a71ac4d639958c9ac1e69bab57a4819707aad817b
Date: Fri, 03 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714725142
