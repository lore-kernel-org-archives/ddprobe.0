Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFE82E8B75
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767780834; cv=none; b=ZlSBKdU9NdyVtObXNnNAAyMzqMFS4BUWEFqxdDD2gLgRGOXWB7kj6dXlUNifK9RwunvFbM+iKk7l9gJa9Zs43/FaU0dG8M2L5ie3t8+2G4mryXoDYZXA4jUfxKgLs5ydMe9BNjjtVnEClfJeYlnSvo5ORushjXx+MU9mIewlGWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767780834; c=relaxed/simple;
	bh=rDobFGUs+2uVea09cNNoUd3ip953pj6SeCZN8yZYuSg=;
	h=To:Subject:From:Message-Id:Date; b=dTb+rhz7TRBmNyLbRrmFWs5VDN3gT3lGxVxlIJOVOz+6f1/nWraPT7uDllsSigqaTX9Akxrip6Rmgw6uGfXHPi6qyCD4Alpywz836WhSOm+6lKRL1L7ip3l+LfuytE7paUm3hTw3+VNps99f+ADqZsgg8YB8dbn8pbaX3khGfew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0UKNm+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0UKNm+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CBAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767780833;
	bh=rDobFGUs+2uVea09cNNoUd3ip953pj6SeCZN8yZYuSg=;
	h=To:Subject:From:Date:From;
	b=Y0UKNm+Sh7V+gLq2Ff9MAOv5YVSSpbrwFfwYTFcfWxY7Z47tPb0zQ5b5DYrFxSBzs
	 og/+fbX5MHnqLsmyaLp1S7kA/W76Jo9h8M3Po6HkhAxnkgqcH/HjeqzZPRqX2Etb2H
	 75RsA8kwgJsX0jTITA5LgPtEES2rRFvuzhwRHqVxIfUV9jZgQcLvQ4xChsQUjocBUw
	 Oa0RJBeuLNsOHQf7XAX0zJ30Woh8JOgJ4FdVMcI6pHcA8EvnJvwDnLDRu8MSEaI8Tr
	 4OaPhgXsDSAsJyUneXIsjIW1rvjOFkvDl2LquHKGkpLUty+oozeOFRKnEl6oDL5+5r
	 JO21QyASesLXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB0CD5828
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778083358.30225.59701117555121225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ef2a2ae8e647d62a33d108acd6069b821332a901e6264efe33333b3e06ffae
Date: Wed, 07 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767780833
