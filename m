Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0B1347FDE
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772735094; cv=none; b=RUNot9744Qw1tRS4nvGo7Gty3W+LZKwHQENcJD61lvXIl9OST8d+Ki/mkLkMCR8gRus7uXk40SN7jMJvmZ59xE6MeZyXqC3B2yDV6blKl8qpCg3sQqfi7pwa4GhoBfGtRRULZNElIZ/VP45vIBLJeZLqd+LW3SHBU+PCiCAVsFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772735094; c=relaxed/simple;
	bh=qreXhW8p7LO+4tfn8JeWMqWGJ6c7byqvwvTnsYc/PO0=;
	h=To:Subject:From:Message-Id:Date; b=CzVb6+Q48i7sDXcCt6poshGofSsi+bUCnCaUpBGuitwnCjMpVBvDqTfEoVcouUoWKLehZYsBpokg16rDyxYJW+eFlj7Un4uNShzNGoprcAF/Gh53rPKe1t/rM3/DxNBk4hjy6zUpDp3BbNIvWuPj5feZ1LpwexOXlbasXgm3LRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obCRqrJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obCRqrJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E77C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772735093;
	bh=qreXhW8p7LO+4tfn8JeWMqWGJ6c7byqvwvTnsYc/PO0=;
	h=To:Subject:From:Date:From;
	b=obCRqrJ739DOieWTmsl+BfclIGpcfJjlyPVuopyxMS1nCSpeYAXfKJRMA2UtayjH2
	 ZiFO3SOBp1zsBViswSDO+daaJqrBSFyRNAsK1PBqJ6ESul6uJYUi3oEt+pudSF4OU7
	 jOuSunCugbgguPfzR2AWalFTi8YX1iDbfpWIMPAFLR9wyw3HKzW/NYAwsL0TK23z2e
	 utcCz0KNkml/tiy9+JbHO4fymVtNiDyho2pkXcsTFzmimU3cRjvTFbbfKbWd0jyJ/9
	 dbrVhmeYsRCKXvcLQgIb2nBpU2kpuMAfC2FhLhfVtlMTRjpQydcupEqQMV9nGtGZcB
	 S2aXE21wylAGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE51F47CAC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273509363.17518.12967688232978230334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30efa4ecc99b5ef451f3abaf63e533ade02cdbeac58f0ca9838584a35e8b90d
Date: Thu, 05 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772735093
