Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD5234027B
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790252434; cv=none; b=t4V/cLQUlAj1q1IvQRwswpLG7lFoVR1vy7FGnk3chW6Nk6/j6sDfcWlmQ0r85/yYlOrdaIKWR2tNDB6wmphKl2bdx8GPbPRNAxHCKDf0OJJ6wWBWFmjBKIvqBb41B1tXNGWNou5PT1o7PZOghyZzvU/aPoJEoSJiGF3DAx8c4/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790252434; c=relaxed/simple;
	bh=HyJyfVNg53tusjgUHZ+xf0FsR31iglAKB7QOjWOvSFM=;
	h=To:Subject:From:Message-Id:Date; b=XhHZWH0ALgpPoT9RIrGk0mmHdVhE6oq/Qyh5eM2VPga2GXqmGy1EOdgBo6QQ14/HU3NODILoXgoC0ocUg2gTZfzn6FIqAN+ikLO8FccrQXX9HwLq/aLMFJxK1PXR9IA23ffvm4o7nJqK2Z+Sd80RjLfmDEkEObxn0BN4A14u3oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwIleZpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwIleZpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3036C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790252433;
	bh=HyJyfVNg53tusjgUHZ+xf0FsR31iglAKB7QOjWOvSFM=;
	h=To:Subject:From:Date:From;
	b=iwIleZpWCDLmg1Oh83kcy0kY7FdMcQEPiBf4y7ecueMsZVh+3fEyJcSledy6FTdJR
	 kafTRqlvvIGs7lbTlTEAAI62TMbCT56++r8b2CD3LA/Nskvo/DuPxfrkVXgaQiPKXH
	 Ku/xg8uB+PqYwytRnW8bwTSLGq0xUi5C2ctamOiDqwZR0iKLiHaM71aE8XpvC3OIpE
	 JeDWIiLl5cESs/NjyH+JSD0jszsOx4M7lIviJY5Mk57dFcPyN3EBrMBVFmRz+TDuet
	 WdmxwBNrH8NYF0ykOw5ePOL6g80oZF/v+YnXKpPet06RpROi2H+tP5XOBMHmqIjFW6
	 SD0PgF1TgHgbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD00EC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025243369.10673.1914203216815522617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c0ac770d2095c27919c5e260c2b1ea0ada200836044cabb0a255f8b4e7c57d
Date: Thu, 24 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790252433
