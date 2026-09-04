Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80F438B12B
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788507035; cv=none; b=kIrkyzQ0frknpvMETPvoWxCfWZBoVeKNeKjJuI1QbQ3LD4b8Z9tJztuyIR6aaEEcJqOZFJze9d8ZS0SGh1wwBGTZB7DHoyJmXkoOLEV8N3iDmZHOxTlHCz0FK0QsR+HPPxbqQG8iI0ABy22Y/SJNdZBNg2BzC6BcFZrq6GD88Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788507035; c=relaxed/simple;
	bh=HZ+aqHJ3ICOGjEBe7dCz45liCcyUPg+VUz47d5pejM0=;
	h=To:Subject:From:Message-Id:Date; b=Fvh81PkNVNgTi45UJp1ShoaM3WQjY86+EHze4CRQiIHK/tIC/045xbhupIhpiyq3wj+Sdqdz3XW0xvUbI+jqmUXF4wrCP9nE6tYsAuwim3hoLjX1Tbyub3WP6wPOTol2/aQfThwCYWSyqodtXQ5lY3JPgB6OGBl67f4TWrpe7lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3MAdGCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3MAdGCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF685C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788507033;
	bh=HZ+aqHJ3ICOGjEBe7dCz45liCcyUPg+VUz47d5pejM0=;
	h=To:Subject:From:Date:From;
	b=S3MAdGCcqZ2yeHCQtiyYyCP6nMlslp1IGjP77mtbdqIqzwD9zzR/DE1HcRvJcP4nR
	 FCsVbRm0wjkECA7880Oy7lutHqViGumxtKDme8qALmDH5GwIQWktUIS0Oqnbbi7yiA
	 s0CW0aIncygg4vkZIcEDf5Aovgej1ZY/aHET38Wo50lkk7xfFWy6NoOrB5qzAkMALL
	 rjzDmW6xUBmpNgFHWHkMl2FwweAiwkgbPHlCEjauaubfAAtK0FaZtl9ReKXHdG3+a5
	 6hmPW27mLqLocAZRU08hotg7k5xinmrYGgBpeEL6sa3I8umAOCzP2hxX4lgxv5lNRP
	 lIW+fRMcffoiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE75C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850703368.8042.15866512948835093982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8effeb51a9bef8c9ca91e69df0c4c7c24300bf8d1135edfb068ccaa90742c8
Date: Fri, 04 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788507033
