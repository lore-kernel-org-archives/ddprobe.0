Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63B03A1A5D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770382433; cv=none; b=L8LGujnQbaIfj9xrC3LWx8M8bc/av8ixiC9tyY4suZFpxnkvhJFXmvFRjRu0vt6C/pfO0ljbomSyL9bcOIuIquD4eHEwJIVrn9ljbYnt15uGZmmZ9LiVzAHUAkGfsoiWtBPQRI7wuzt9Iz2GyFB9BsJQ93AtNF2rZsDuNgxKXW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770382433; c=relaxed/simple;
	bh=Fv5BNEhU77xxc/PAVEolhdPpXO3OArl44K79yBjeDy4=;
	h=To:Subject:From:Message-Id:Date; b=hAJB0eiHFlLys7++eyPMGAjL/Arubs1E/6sPQrarXN2FC+qbnJuNimegzYG2rLHk8BEKYb+8VxNpyl19W+vEF+8+eBEJRsLGoFo9y4vbtn8ISIKx3OyTC33nMSfVRkR6c5ck5Ks7GJdfoK6nS2XaTbGAgLpwSzpxK4eVqFUmR34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krObRBo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krObRBo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12B8C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770382433;
	bh=Fv5BNEhU77xxc/PAVEolhdPpXO3OArl44K79yBjeDy4=;
	h=To:Subject:From:Date:From;
	b=krObRBo4QCjRFVaLVaY0b2x34i0mqYlA9b8Tgl0wvyZVmFkNQmX6jcBCD4vsC3G0q
	 X85H6Uz1T1aIJTyjzOnwCsnSsR49bUyMqu5nJqoL6jx5sNyZW+y1HH9xE2/RDTYCCe
	 eLSAWH6M6GEPtFOAnt/BmkI0f6xsoDOJxTOkJI9VfmMfy7N2LMWbGvlPLmxXbx/PAd
	 IsxOH1lXmNGntRg+KC0/R2T6xTRWaug24j1IRx1kBiXz/4hXYUGOHsJrrQktrXsKwm
	 XTP770YxMEkH4/j7OjTS/HnUbqiXQrt2iuyju/spZyPRyQh6PbwiNQGVmY6o9pjqpF
	 T+7nL6bG1Trqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC46EE209E
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038243363.5543.10080363952114963236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4407f8dff8c8493c03e82e776cfe116c6d4508ab24ffe59d655f551c945f10
Date: Fri, 06 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770382433
