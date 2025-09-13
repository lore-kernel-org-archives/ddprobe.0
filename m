Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4858335948
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757796594; cv=none; b=tRRaEnecT2QOM2giyrpUzglrbMRKZcbtwdEcnyjoUNI9OghlqI/8hC7IHsvUIk8Z01Zy0XkQlqCU+9jSWYcAg5i638/j+eaQcrYZVYu3uQii0VfiQ2LR78fhZE/5TcfYPV1f9N/Skd55TkUoMtegW6D2dAc2gxxC6RqsJP+kQFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757796594; c=relaxed/simple;
	bh=oDtqQp4A+EYJB9xbO7RMXQCZUpj+hgbrm9pRkpTXFSM=;
	h=To:Subject:From:Message-Id:Date; b=udDaMIQjFLtnYcz24F8B5hHARG3e4KMApWao08mxuvdemDQvHFONSYM2bpJUAWGaiJvqJ4x97RqME0Nq0Kg1lbFQF2cmq1H/Z1LGdXi5rqTf/lPS3UlC5KXq0OCc8TMiPIQ8LJLLDfH8IEDhAYH+F6T4nZvdEac+pOqQ88KoZOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQsLcMNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQsLcMNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2A8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757796593;
	bh=oDtqQp4A+EYJB9xbO7RMXQCZUpj+hgbrm9pRkpTXFSM=;
	h=To:Subject:From:Date:From;
	b=fQsLcMNv1zO3+WjdLIGc+5vHXqyX847yb6RSzhhiX/zbjb78fewbd2YQpHFDXKoNy
	 oYMBDE18j8Bxp9ZKsV/P8etjCuUvzGwxpFM+eppQm8VLBFwZ/sybRE0fy9lXuMHcMf
	 HQOFGFvO2RJGcEZqJ7GN9NztBiqJLyJHfvjYg/M02XofvKMmRwrrzR095nZqcOia3R
	 y3I+BAkvZjF8SxuThj57mRuAZd3s5jrSgOWWuppvUwGnPVhz0z8Gz2rxiRQj3ZQ6G7
	 QqAwyMKePqCb62aaKj9LipdTTr1RvvVXRqoJO5zIy8WvrDPT/Kn7sDcfHOcDHMZjhG
	 m1GTncB/wwxWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F852CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779659357.10060.219674023358715949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e37d23e367b9ac753f5be1f26ff79c974dbe3f36d023f8d883e2adf3e02cf4
Date: Sat, 13 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757796593
