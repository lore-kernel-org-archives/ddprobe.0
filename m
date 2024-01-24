Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B8FD308
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706075297; cv=none; b=QZfHnLKemAS+4nOsZcfWPUiC1yjmjn0KIdmli7KJ+3KpIO30NpGTR3iVc/UfktfEaTdDprPnZh8CCAFdUCRLSjDm3LevIJvn8z4W0PklLywdgSJQxrmRqGJrIwgbdpsW/uzpGXPPM7B44fp4tRWuIe09VDnrREDqneO6EsXDwM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706075297; c=relaxed/simple;
	bh=NM0q7DGuXVTZKqYcBuJblu/TEGvSu2rJJHQjCdf5la0=;
	h=To:Subject:From:Message-Id:Date; b=gIbnLfaG3/KphebY9ZbdyqYayIpMJ0ed1sF1Tl1/iC6VD37uRrtXF1LpRMDkwmGQA9cs7TPl/Pz27Nof0nT75s7BKtegnNHT3gjR3bxSlLKFXJedMg0hJmLFKooWQEkWLJUd1j3zNyMoLozbjo/Ev3HqUN7JqAXZgGBQqz9LSYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwS3eHVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwS3eHVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FECC433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706075296;
	bh=NM0q7DGuXVTZKqYcBuJblu/TEGvSu2rJJHQjCdf5la0=;
	h=To:Subject:From:Date:From;
	b=QwS3eHVquqYMcHbRIYTpOu/y98L7r6Sc5FvPEfupOc3Jq/CvPHDKNK6L02GZJcY7b
	 XLLuqroGPiQIAllDGqfJNLE49oKagpEuIdzWgQiLNiSHvINBQIlQ93rexgcthE1XD4
	 5HktwO5JrW85ALvnr58pG3McWozJW+Z0PeO/Bz18SqZO9goUJND1aweZBYL4umeR22
	 o5i7XT/lwgTeLFONjwTWDUoGVh7x1oS3GaSWXhnV/FV2SocpJ4S4dbUbBkzNpcxwoa
	 6bNHARkWcDF+Xgh6jwAstOlymsZZiUr73tC10Y7+NkeDUN8oY9VfVcH1wfWMlzc41n
	 Bq7rBQ47kr9lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDC8C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170607529637.16365.1834452536703116936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9e6f5bca546912e59b619103b00a3290fa7ea7bd14cc4f8435622e46461025
Date: Wed, 24 Jan 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706075296
