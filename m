Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3848926AFB
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743637794; cv=none; b=JYPfGvsq60aYaqn5dC/eKqhPstaQcdFjJhAr9RCq4ofPOfvkWzVkQpWfguDB32cWqfo6y6XWwQ/TfaDtZmAh8L5nOdRtyuvU7khGxJGE4gKOI3dyLZCdJ2aemweiENF7prxSvtG9TE4iXK92lRyQVUHx/dM1pFJAfmgrL8QfiYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743637794; c=relaxed/simple;
	bh=jl+WorS8vwsK1MIRw+mFeODU6FicwHlJsUd0MhEPrOM=;
	h=To:Subject:From:Message-Id:Date; b=AYtawWIKFz2dPaxL0Uagl8XmanrHF0VzzYpDGTTej2s6Rp7wA9hoRgWH9TGSL2Db1nVC0GF1cxQdeIn9RIrqtwwO1yeIRJF8eCE+EftqoYiycNRCVpEbpMgszs3+eg0BWzhU3HsJNqCcjGvatgfIdhPJnsiN1FVHJ8zDluUvn30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HddI7hIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HddI7hIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8F4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743637793;
	bh=jl+WorS8vwsK1MIRw+mFeODU6FicwHlJsUd0MhEPrOM=;
	h=To:Subject:From:Date:From;
	b=HddI7hIcuFXwBax89MccxSlS25fE3ew5HKqrAvHaveeE9YU6mCvhI40MdJ8RmMotT
	 sZpHFEL3euzZPuA425dEBC+EoYKKcNnjXJ49VWrx/7TxsnwXMRdHS23/GzBMN4/zCI
	 32mOA4xZqePIaMaLS8nkCcsEOn9qdKKfRBQDR1Qc110NXYUs/CywLbS5zmpmgdMtuR
	 OJOmlJdlLcQbttPmC13IxM5sOGiy0WpG3hgdOsY81htpEdnzhUzm5YKvnN5WtkXKKG
	 r1qUSLXECYnbG9KQTdaWc/8eQjORO9gVPxGfhzM+90SFnelWjxPBqTaxrthy7sGF9l
	 1lGajqISUb7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992C7C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363779361.20553.823708789982698264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a774546a3582fc7defdc5dd404d47d740a337337dad4ee1712ca6abc9807c3
Date: Wed, 02 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743637793
