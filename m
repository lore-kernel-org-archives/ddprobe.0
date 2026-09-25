Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431A03815E2
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790356835; cv=none; b=i5ejLFLU3icmHPS4mECjDCSP2OndYnx6GhqEYPRuJ0XL/z1Z6d6+WobOKseecBwFz3M9NLgRVIG7h0xJqvUT99TeD2+CSdHFQj80t7H2B2E+HcqWqf2nlbJ307+ui+xH5nWZMU02Aa9DLO5RTFuUDYAKFwBhYFUwi145YExsn/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790356835; c=relaxed/simple;
	bh=2ToBZY2ahhBUxGCIfcREEVHt34xmy4UnY95IpkVzXco=;
	h=To:Subject:From:Message-Id:Date; b=TvqV/ED1q+bzHEzhKZMShyjURK9AHEHMk4tHVMa/PH6Af+FFxrRdo+QWsLSRWp3Wu0H8C590hqf20xHjHWA9Q8RaPXl53KXJ9jEVCh3iZmsRyVoRaO8DEGQWLW2BsQR0EoOafSEUTQKgIpM/aZxfQEIiyQ3My2U6thMG9jFZbkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLdKK5dm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLdKK5dm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6160C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790356833;
	bh=2ToBZY2ahhBUxGCIfcREEVHt34xmy4UnY95IpkVzXco=;
	h=To:Subject:From:Date:From;
	b=TLdKK5dmo2nsjsMnc7R44Oc84g+v6ALfDhTJcKtZPiEiacz/oR20oHXTJ/CBl9T2z
	 ToqAgpbSnJ2s/XliCSUfF1sCVs0wOVzDqQtwj8xmoGi5hI+6BXQbpys68rVooXPSFK
	 ZucDhZ7jkjzfeL2r+ZwRwQ39VfidgZp1lHkJ5tAVFZ3TYN50hR5xkrR6aE4ho6GU3F
	 kvUsveAYxWF2PRvLeMq6h75DtK01MxgcT77ltA6UL3Q6AcUFqwXypHQVZzbMiMJaM5
	 0qUI1mnaIdylHHB5XWHpJyYfKXDvDT7Q9hqEpcshc5L9eMrms+esXtAAz1XNzCZ2MT
	 AVkl8jnUvUXqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ABDC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035683369.873.1173328451626240793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d99d3c227a34269b9650e4711683e791e6f076d2645e2fee9fe03635bcdde4
Date: Fri, 25 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790356833
