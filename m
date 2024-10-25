Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193D72076CD
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729847754; cv=none; b=ipkWTKf9At13AcC4EINg1OX2URb+aQ1Ulsj1w+0SIoKWptLxd/mfaB7BX8ndfSoffII2wnErpqs/hWwyx5jJ6w56eQyhpZKvCKvZzaSIu5blpSvrghGu6gARihfW/+Q5xyzRQrNY9VzdMfVCtB0iB35zSNQeS7KuEvWIQhZyvxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729847754; c=relaxed/simple;
	bh=QVNlwRinTpB+wRhZm1UvFswrXBKxj8I9TBo84Ero5vE=;
	h=To:Subject:From:Message-Id:Date; b=DiF2WxnWgPBw3ijdDS/haRxXsdfRIY7+xIxcKw//O8PG12aDdRu2pm1+2+rZLXGI6BZlE4fB5pezIS5IIP+xLMnAZYUSp+LVGxjvBXYvL8uEOyFEqp4bBeF249Hvr+LQu2x1naOyxDs3LUCJTEzgJ781aGfcQe37V+9EWIewAQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BquvDQyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BquvDQyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD161C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729847753;
	bh=QVNlwRinTpB+wRhZm1UvFswrXBKxj8I9TBo84Ero5vE=;
	h=To:Subject:From:Date:From;
	b=BquvDQyDIbKJNFZgT7kPVDcZQzwrBYSJoBTgpQJ4wSzIQZdug2XenPhspDNqsT6dT
	 sK+LUx3LpN/86dZaB7TDBj+NfZBkUNs59tPMqWqa6X4Pk7Cvib1oPJh0Lu7U/mQGoX
	 vrtrJEa5oCxYZxpY7S9lUuipSAyCn4EX7tiv54VnAVrnT8fnHabFXJOubG8a5d3/hP
	 sGhUfDvSA5K/iKimJPUhfWUU0125VKOdwgakhVt9MsyIMBeB+yPheHVWiwBykdJUoj
	 5l4ImEIXRi6qgaSgVcB833chTbyRnpc9gLKtdm531z1Xpsio/1nDP8HeruIWXv1xrJ
	 uEGBbtJ7ASytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB3FD0C5EC
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172984775362.10422.7715700859533174416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a4d822b86da5df467bbe6390854062652dcf89e1c37a2c67436cf40a632164
Date: Fri, 25 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729847753
