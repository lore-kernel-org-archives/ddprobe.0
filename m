Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5510BBA45
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785300034; cv=none; b=lFhtNKkjF8vhIaag6UUNi2zwcGqVZlOzvzhkUH5lGO7uw0MfDdipmsUm6tZlTIxiljgnhwPjFgATLuNBLgTzJGyLO0aWMpbUT5iKjYYJf8QPfOsNNbPrAm1+97OJMW1z8LT+pi3s+ZO9EjTJ0fWy4zIyrjmVXHcAC3KKTHq3VjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785300034; c=relaxed/simple;
	bh=3a/nDoGB8BB5b3P0W8QF6IrQp5orh4AXFpbbj8qJKj0=;
	h=To:Subject:From:Message-Id:Date; b=RofXReUntBtM//nqSH6C5wJ1ykLMCSqwQaZYZ14W9coSROV7+0Q4GrGC1NlWqGPboFpqsXhek/JB4bwfOfC25zkZP/06wlrM+IJlAs5+F8G9vwR6XwiPuxeUPam957JPrYkAKV5+zoAQAOGO2gfPpOCX7bT/3//3022cmBjmr/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGmyeTcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGmyeTcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00DBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785300033;
	bh=3a/nDoGB8BB5b3P0W8QF6IrQp5orh4AXFpbbj8qJKj0=;
	h=To:Subject:From:Date:From;
	b=mGmyeTcGZJnC6aIHY7/gfO6fc6hrizhTBuTXguPSJhqB0UoN4hwLT7EAmNHom9Dqw
	 Ba/VLwwzE1EDdlQCfSsBeloyIKN0szNwIh7jgQQUukZa20J0xGt6kAMh3kO5xvgWkJ
	 bQ9ItVwnKbpZCXl3cOgLE9GeCcjqVoo0tB6BO4/+rEvzkcwyu0JLbG0GbdkRyu0l0z
	 djbDWJYdstDU0AK2d+qexOa+6d5FgRN4ARvu0DtIsocO+HB2vyoXZdijqgcfe1pXIO
	 OJ0Tg079eNgTpNYIiP1uQzVkPSZ/vALp78589FNso6PgAGecycXbZeiyOBEwMSzpEK
	 NIWO1jU5W49qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5B5C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530003369.22102.15522070471770809462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a135698f174e3c01c125d7dc9a8bc3b7fb1ae7a7dfce70582001a127677dc98
Date: Wed, 29 Jul 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785300033
