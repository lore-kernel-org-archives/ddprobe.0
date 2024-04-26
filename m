Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050393839C
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714173143; cv=none; b=pF0slnimqR/d9hSm3RTs3TQLGh2oWwiJSWOOrBNBl876qOIOB3Kvdsa/pSzhQq6w18C8pueF/iMcYOhWnHqFQRErAMoCBnSK7RgyNSItStDoLrpSttw8ZZBnJFZ8n4ci/qiTeYcHLl/UmpstWDm0SwAPhuLGbFBruqLZluR6apc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714173143; c=relaxed/simple;
	bh=Y4J+YhNatuLjFRnfjD5IZCtD7mLU1eRe540CUrg2nWU=;
	h=To:Subject:From:Message-Id:Date; b=h3OFwpUaCBQgrhy9JQ5ebI8Kz4wcsQwrM8yccxHZFQJlmXEIb5T11sSbmxox9mBLrwW57nX8TURVI7yWrX4Gy8PQK+mwiI8ygEZFrtJonr5CpQT4tuF1/IGGrHGD+mBAOARLYVZDwZEs6sMRdzWS7JOACGirTWlK6Dmy1LjkbT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLxFd9Wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLxFd9Wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C10C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714173142;
	bh=Y4J+YhNatuLjFRnfjD5IZCtD7mLU1eRe540CUrg2nWU=;
	h=To:Subject:From:Date:From;
	b=JLxFd9Wry24neLR+fVxjQVZsZx+i9pSe0DHl3gup21YMBk5+HckMBz5p1Qij3YxqC
	 7LCfPQcMVTXmNcRQykarmgosNWz6aotp5rM4dPs/AqJNbs4l05D4rjwitOu+SXBJaa
	 f4g1AkckKfBYGoG2oSEhvzofmLj1ZGE+CSfgrw57gnk/KuGgNrsRJ/qvjdC0oXr+hb
	 P7U6GMQks3x8ZuTslVtyINl5lNgokrYlLBLQslLzO9jpL4AP8oSSDJTlXarXhgA4oi
	 6Ax0Hhu1KFGKNyGZbDFFaR7al2Uz/8P9E8lFsiYzGwavMfQWpTJRyumlU+ULf3N83P
	 FK11to3W4u/aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AB6C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417314278.12947.4982290478868832954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4041577536a3afea036771e229dc4182b6f1c16abc06314b61540b8c756799
Date: Fri, 26 Apr 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714173142
