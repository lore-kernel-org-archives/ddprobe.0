Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266A6387566
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775211934; cv=none; b=Q83j8aZVI/dQM3Uedl2E8Tv+3OrAqrz02bTNZfp6v6MiWCRjmGjSowngA6BOPJlUGmHHRMChR+bn/x+hBy8ujSTEfD3OMyR5fATUsUFANUAN5sDjNd3ptlUxsPVGaYJtYpxnSZfY1QvKghdctgUngccMsCj4c2Xv9v7fa7CL3EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775211934; c=relaxed/simple;
	bh=jJt0cELtHCt6FV2iIc8lWO+PxMzoJ4TVEvQZeJkoSBk=;
	h=To:Subject:From:Message-Id:Date; b=j9aSpNB2meWgqFt7htXSVuKOIDILRQCMNYEYN6tM+m187UIp9mU6knKICuaebsJc1te1Bs5Kp0c4Nq9N5DxyDkMyIW0OSTeBaygexY8666fz7bFbaJzlHD8+jgrTKu//jYx8BkHSj8tG9lWZMgPNOiEbj3YLHqaSpLCFRlO89bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpbM+tkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpbM+tkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5662C19424
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775211933;
	bh=jJt0cELtHCt6FV2iIc8lWO+PxMzoJ4TVEvQZeJkoSBk=;
	h=To:Subject:From:Date:From;
	b=jpbM+tkb2tSejMfNzRAuai75LoaW3TdQFpPGnMyebtB3OlC9ZH0KgluhjAQWJ5vW2
	 PA1Kt3qMrSqh2GBUpCHDUSCfbp/1H9D1aIlZVSsHOQKik3YOgHDtacvewZuFZIzRiS
	 uT05lwMLV7Mkqg0ayCAjNCd/sFcGONIbr1xcnRaLtUcvingc5Io+znJLUI/isfbD/x
	 VHxNp45N4nJbIJzyvTqiQnzC2XnL89NC9wi5gZbMfq9oat8kYW31xNNQANTDIwzdrY
	 wJIVGI9R4n2LkgzOoNcuqyTn2IwW7om1MlHBIqTAt+aYdteZev1uV8o61dtf0E5oYw
	 nzLL9iB+zpr3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B581BE7E367
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521193373.22490.16233340467812194763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0699cb0081d24581d558310153ed5762d154d007c194fc2f651bf09587dec84f
Date: Fri, 03 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775211933
