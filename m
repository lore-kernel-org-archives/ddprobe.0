Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACD4171CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782371854; cv=none; b=dcXQSmyY+qEJTBz42y2JUGnc5iPsZ5HsTlS0TSScoReq323OZq1Sm7/4sphHxeMAr3eKduXlRRqLuIxPlK8IgMPBmJZOxf9WlxVjEoKfGA9RhenmA4SPcKQbcXtgM2jFWOVIgPaLHsQXIEC7xZSPqDj2Pvo9JqXifZodFEZv47c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782371854; c=relaxed/simple;
	bh=CJSTO8VBgWUKuurr3y45wDWwJ7ORp59fQPuvd5qHVFs=;
	h=To:Subject:From:Message-Id:Date; b=YbEHZWGPp+FWYkXJ22tg3SsnQxLQl2AlNl1zeRixYUDdG42mMHhsLCk5Wa1KaOdE4yzwLXhhLTetqaZZeF63DTl0mI1+3nqIjNOrmBnJswwvI2dbqwWzIztIueaku31cYfsKAoca2E5JjgdAfwtfX3Qy+kkSDGKjuoWd7qLUTGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSigRisE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSigRisE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA3BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782371853;
	bh=CJSTO8VBgWUKuurr3y45wDWwJ7ORp59fQPuvd5qHVFs=;
	h=To:Subject:From:Date:From;
	b=XSigRisEAY+XJmnEcGONlviKJxULwi7lxOXw49q6XRi3ZTtKcST9Mx6bX3L/YmXiY
	 fuH6GvA6ZlW4AZPwTqACBxSXIGJO3MHdsQdEHdqMDv1GM/suT4Px9YFFEoVT9LJkOA
	 FcXJYcI1uq+ld2XvOj6mfR2OnhonorTxyafhtrKgs+4W7KOG9+FBUKGUMA5uhlqN/7
	 BOTtigMl/sv5VFBgU82mvldunoaXSY8pfCwMETUQ2z9HDj4NoCGCxk5iEHUDFaXnbt
	 XnMnyuEnMxHjPl9eCuy3QULlu6RObE/RIqXjh6B7nhAe01kD9IVMqcSKlAv0vbd13k
	 IYwASG6dCIV/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD69DCDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237185370.21661.12244172397246441796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f9c38875f2a4f79b7882277740778d5f8f68949d83b41788ff14e4c0f95e38
Date: Thu, 25 Jun 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782371853
