Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371E7A32
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748320194; cv=none; b=gkOOI7qhT8Xe76UwjqFAu9uXo9J2OMQcMr0a6NMkZ3XJQTqnCYowaJxt2iL0FA48qk9wznyJae3CsMOgEGnEBWf47kgQ/I7nGh0h/5qlA5WiCCfiPjFzlhUH4BWY0tvwJHXiOTqfdwNfzPnlFqyyRFLbbeRDkTNbl/RYYNXzK/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748320194; c=relaxed/simple;
	bh=Yw7jt65AM/J58G9HJ+jeWurmfBQxJctWO82hCTjOPTo=;
	h=To:Subject:From:Message-Id:Date; b=kkoqFTGmwvJwkbiE3uzJw6pOy6kp340aeWnoIcCJktLtfFUebIzJWZG/+paaKNa+q19q+YtrvzvX+dDy30GWAF4sTDEDNW+e0reOkxW03EHNfUkevRGfLPXaVclPHbiC94tB88spqZJmp4cD2kC+xbKGMyBR5Yb4zqqnHy0HfaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+h9JmDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+h9JmDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB06C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748320193;
	bh=Yw7jt65AM/J58G9HJ+jeWurmfBQxJctWO82hCTjOPTo=;
	h=To:Subject:From:Date:From;
	b=B+h9JmDFqikIGAK7FGDlSfDZEW6dkZhxRJoQMQavwxFIIimyK8CSaSBo8tN+Jtr9V
	 Tpo8h2biWhI/O8TWvHI+aUYt41OskhChv0R8pbTxDLT0pkzV8gQs4RdxtTcBC/tP7O
	 9hazTI6eIkdMrvY50RRd5lnAbajyfqG264LN5Ck87AGucQjXIpXwvqlA2g8GdC20el
	 W9bLxC9omyLvJQliipyg+bexcl7H2PSgntcQ2Whl8zg9k97WRYGfmqaB3SSBe+Ow+O
	 PeMcSpT6HfIEyz/r6wWpfccW0kFs6xRLEkNRzkQlIylQhx+oowmlHK6vLx/f/Q1gTQ
	 MqJC73oCBQaEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52CC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832019357.10853.4441480577037546998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed818af3fbf0ce86d05325b679edebdfa5565366ac9490f42644f0c09c562d9
Date: Tue, 27 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748320193
