Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BDC248176
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766429634; cv=none; b=oCIyaVdOM6kQ3gdX/LD3ONiqDyziRHs8L5wR7lBzjKvOacRdDq9VbyUrg51PqKy6eotEiPiys283DHJ+nxrQ1j1ZjAvbwTdEH752zI28GzdVWR1P0TwSehmKnWlNF4QASvy5pFMtg03ODYBrBOZflAJe4W5s1UqQo6yE+We6aHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766429634; c=relaxed/simple;
	bh=O80rWHvocrXy5oOvuPuq/Djmruizds/6ai1WmKRw+mk=;
	h=To:Subject:From:Message-Id:Date; b=OD7iZm3Aahqx0Jb+p4kMrRPAm5CThbJoWa7cJkOnzBHZAgV0gF8FVT1qSvRGJBdiW265DK3YdE1mC9JGM8bRE1AxAjwOUgpGoC969Za+vtH0+b/EgRXrgAW2mvjvxgsiCwlyrq1Im8SWyrLMhLkPDnxtBLishYxGfuozXk25fRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBuYWasQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBuYWasQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B35C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766429633;
	bh=O80rWHvocrXy5oOvuPuq/Djmruizds/6ai1WmKRw+mk=;
	h=To:Subject:From:Date:From;
	b=hBuYWasQzaVRTMZwLM44uTPaNAQx/QjYe4RIVDWPdYUsPvB29arcQ9oHVo4DFFzgF
	 eaPsRWdEH7muYN/M7dqhdZNcC9yi3oVpl8lrF41Jgb1Agpr6ltAtOVhKk38ww8X/0j
	 2FCBdQrccCvn5rm54VghBVvMbMDMBUM4jkhK6QW3rYdSevSvxWfVOZmHGSPZ1a7rr/
	 gChDP34BX7/HexU50k7hov7ymAbbzW//BPncQ0TYHbRSE7KtsPXZd5/X6hv1QwqP4F
	 YFJn0ia4TmT9QZROC7ZchonnErcQuQRgCWMn1Stev1GiQJdFeb3EaLV5680X/rhnLd
	 5p3wTp7JxBjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D7E6780F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642963357.4524.6962086128330298608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c3094e46bab3193df66f768656a845bb8722b5c6beae68638e4a4d2de2743b
Date: Mon, 22 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766429633
