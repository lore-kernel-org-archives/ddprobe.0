Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622921373
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723081554; cv=none; b=l6LVHubjw8rJLhYiwZYUlzSMy2ToVevOA/Hr3mTHWzxNb5DEQD9waQxI5TDOC/p/bVX3ZUhjuaoIkE606UfF7q+pOY1OfEeGfEnPGeogO5dnhX/6k+/v2H5yePm1i3MSK53C19dmKREgb/57H9HUSGS1K6Y1UcntgFQhtieZ+HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723081554; c=relaxed/simple;
	bh=zCL9mp5S6zOBFwoed+aTqT02DFSFO0f6ADrgtpZ3arw=;
	h=To:Subject:From:Message-Id:Date; b=tSpsiQH7zxnEJNZgjAMHHYmP3SrF3/1wjKRuGgtZEq2Dz2Rfolzdeo8LGayqIX6s6nSOdOjQHHwvJSgssc62qUNr+H9xFTeYROnw9xl9CkwH2/BShoGDUvKK/TfyouQ3tp53hNkNmW6V4aqnCj4R5UXClhbyu1P2bQ5vDOeDeaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+yJSHZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+yJSHZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C161EC32781
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723081553;
	bh=zCL9mp5S6zOBFwoed+aTqT02DFSFO0f6ADrgtpZ3arw=;
	h=To:Subject:From:Date:From;
	b=P+yJSHZYAxVrUAJP1DgPAK30Jz7+xpDAZ0DqrMeIZmirMr4pM8pPHxmjnzpIPb/Sz
	 XgpWGR9RvXBh23CBYsc34g9xYGv+i4q+MxYsQ1YST38cCVWzZJn5bDMMb9lAzOH8h/
	 kIzV6D/59BakrjkvKXRBGkwoBqEJ9HLNptPzxJUGeBKNJX9cy/ExwT/erUN8XBb9AW
	 wP2xVdhyXw0+jsVH5Y8sao/QKbKabrUl7/EB60i/dv9NojXfzQ0YiybG8lP3f8VcVs
	 JOiBTz+i9dtvUkXnA6djnIgcce96niXMIqH40NcnCEhe1LxKAgI2aJ5YNsyO/CG1O9
	 gO7Hntk1oA1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC888C3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172308155367.931.6277909983011562863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e64f9e0edaca1ee1db4bdaabf4ac52483c129e172fe629822f7a71f8cefcad5
Date: Thu, 08 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723081553
