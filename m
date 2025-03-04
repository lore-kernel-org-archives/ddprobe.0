Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9D01FBC89
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741077534; cv=none; b=YOg7C9aindUhNkHuAujmdxbNTZ/oI3395BLJLyYXrsIUqe1otBDTs6YfdRZWYQAQA0AgpW7YfbsDrqTFaYgkUlS20zR1lONEWi5N/hKuwWh8L62Ev8WEIgaABHLQWNgnvf1x+To1rj7jutlXj4dwwWqTxBVUcPQK/y2GErO4zBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741077534; c=relaxed/simple;
	bh=03UKkntxEpdUx0dysKZnvx8NGj7fF78v2BpPgT6woLA=;
	h=To:Subject:From:Message-Id:Date; b=oq8kOnu38ohea6wqe7MXTuRa1Amh6ysJJzYmpAoCcYTGFLanhyYyfq5mIY9AIVFwxQKMGmFIap9t3D1Wr4WCCQNU5Lv//7iZLuTWzUP732CNljtY2cvUHymGj/iWNxHHyfkiIDAa3eMPT2nRdl68njBqQnS7Awbrff4r+APH6rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9mCP7Lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9mCP7Lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BA7C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741077533;
	bh=03UKkntxEpdUx0dysKZnvx8NGj7fF78v2BpPgT6woLA=;
	h=To:Subject:From:Date:From;
	b=G9mCP7LbywbL5nacOupY9qt2aVP3g89S9MnLlBx7iFonbkpOJHqQMNafMfPgAK66S
	 vwMJ6RG3I9CDcONSDJwtUTsqvdKU0DdWsdhjIoHI4NBSFicY2V1/W16/YMaSn7SkB6
	 RwC1QDQjw0+B48EnEw5RtDV+yZX13kiiXPEdTzEas5CBtxXZBGF8xdHaqOXL2gVWQ8
	 qdJP1mP/lvVJR0EqP6i0ztCzRITmY+RIMkOTzveo7HJnL+4JCEiputOvCdX5UpUX6f
	 7L3JZc0O5mEkRdCt3MWAXZxQXQ6hhY0mEeBkd8FLPeFR3odxhFjXpr6w96Wc4QpGLn
	 o9ZuMT3f7vEVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE8C282D3
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107753360.14900.17858163531752104590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59cff19e4782523d6d8359446d194a66db57b1d7f4228f49b65397c66bbd6aa
Date: Tue, 04 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741077533
