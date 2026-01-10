Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F00B155389
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768029834; cv=none; b=ZOj4y3+BHcqpweFrb1ic6bRPTwZ/1OA0Pd/o74toMmBf16yUE9URWbQCIbBVjHB1He/ZxvflIxyazHRbohCKIYJeI37MX6Uppxm+tOJa2Kt/c5WfToP60MXzJMQbJiFkv07THHwGfqgjisieXjP1VmpJmspGNgMWe+rbca0bjJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768029834; c=relaxed/simple;
	bh=8zOm6Fq/kK07WDzijCg/0JaPz8v2Rwk+ZgJEy/xED1Q=;
	h=To:Subject:From:Message-Id:Date; b=L535q5WuJUXE3LCpmVLPP8myTnwV7mnuGzKW0WzWusSmTA7dZETZ69j31XB16uqSu9+WOiVaxvX+e5L03UZgEUZfiNlNT/afA7KZes17m1lQ9CJm4thDLfD+2dnZjaPlPKPD6QSBo8jQleEzMHrDvGq0Krj2rz1xfxbVLzlezxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvCFvKYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvCFvKYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E61C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768029833;
	bh=8zOm6Fq/kK07WDzijCg/0JaPz8v2Rwk+ZgJEy/xED1Q=;
	h=To:Subject:From:Date:From;
	b=dvCFvKYT5XEDrAYvAW5VfA10W71dYQ6mMEowJA6KqClKDn5YxxrGfhlb0h9KYnS7W
	 oLHM6/HMcd6cTqUHnjr7wCaqdu5lqltdqMe/MWe7/g4viO928rsYBq641k9vCEZc3Z
	 IyMt9fRXpDewXVXsDLNK571KWUee7t/3tqW45vrCI4qNLCUS7JuGVZwovB9HGwGwKE
	 jv2JpN/paxgeAFZyburZZ6UySFy6iu6i+t7V7usSeKazZBvo8iHUeBNuvnq8HQ+bzT
	 sSSUe+N6ppJv7VXOl98uENoQ5NZdibinfgVtsusC8ZyBXTBC91gTFcPGS45Gd51KK0
	 hrehjEM/06QUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92611D277CC
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802983357.3800.16516808572418318718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c72fdc925d02dd514fd8e8effaa5a62bf5072a4463a821f897e6b2a44d690ba
Date: Sat, 10 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768029833
