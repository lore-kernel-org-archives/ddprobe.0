Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DEB346A0B
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787104234; cv=none; b=gZSUTM1cvrdiVRxZmZ4DkRrzyYK+rvjDfm0fNRrWgf3OOImmtDt/No8UCMYxd/XjHuHnxDa9+DKsdPLC5H1EAu0S6BcFD3x4MPe6l+jNXHJ8zTptouRQ6NH4v+O1215BGuzeEGDFxNJ6JiKdRGZr/rb4n3Q007owIdjboLSSZcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787104234; c=relaxed/simple;
	bh=j2yf5/7PJypv4bqyuYiqoJCJ8FpAERAVRPTLRwbsPJI=;
	h=To:Subject:From:Message-Id:Date; b=eUrqWqfU5DorF7Ze14wNo7bfnKQ0fBH5VfailyzwvLnJjjejfdOJVeVpp0cyt/0pXTv4DqznphG/v/xCqTD40SLxWuE54lxPSvzjR7ojJGHTHRek2wkPQpXNMUm7eyPlSlNO+aQtg1pJgBnEe2B6hwQIboj22Ad4Jizg7evg/RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShLU9WIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShLU9WIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22D1C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787104233;
	bh=j2yf5/7PJypv4bqyuYiqoJCJ8FpAERAVRPTLRwbsPJI=;
	h=To:Subject:From:Date:From;
	b=ShLU9WIYfkcl9sJmIkRh01wa519nThT+eceCrWjx1vjUM3DcBE5jtY5AdGKofau+M
	 M/KheXqikSt8Mjn1tDvcG1YGlPit/5Q4rw5VKaxZzZiChqJqc5vwReTNGXk9D5tHil
	 iFwaItvZad+Q2HI+X88b3uEog0AGfaJy5lvCmjVqvCA0JkOWuwMpRXRI9MZ78VR35w
	 kL2+mUj7gG1Gyx60KJv7y6Cj1OG3W5y8REKoawK7dTP1eKG6KyqOIspfFV7ziUuwx2
	 KfTyKUujHDKDH+IuDps65SEQltHzKYAmDweVKP63iqNvP/S6dIvKNkWV1EoaGvTfm/
	 yWg+NwvbDFyXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC42C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710423369.2178.5142795095798949844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639f9dfeb965d9cfbbb592227f81fcb75ba6d859f1a4732f26aeb34371fbf280
Date: Wed, 19 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787104233
