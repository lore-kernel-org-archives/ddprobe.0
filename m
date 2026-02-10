Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247B21DF755
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770745434; cv=none; b=KMoDMhOQMPJqdBMeD2DBOW40QJWNnmJS8KElqvlGDkZS3Co/8cPneCSvsNqfReDVeoUacHwvypAboV8DoKN3y6r+nXc3cl3ygbkThK62OIwewVSj1kwwlus5cpJFg6G4H5bcpXz47Lcfvl+FbCkaeAP4/IGwXdHMi6Z10+Haas4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770745434; c=relaxed/simple;
	bh=27h6miBuP+qe7pBAExAqgC/If79XPyqaZNUthfMxjLk=;
	h=To:Subject:From:Message-Id:Date; b=gVd7JU3y3XabS94mh85K3nL+VssoVUvbQHM9kP9OluYYZdkRbcdEoEI1WfDly7qfYJqhKQD5y/l5djlVva2GbGjekBaWVVEPfYtacLdwpiLcY3PEUzUyLhm30uxw9HYZ32xEsiaewOmT0BKewe4NTW2sz5OxYp9p4TnhHLt4r5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flLmgb5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flLmgb5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB27EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770745433;
	bh=27h6miBuP+qe7pBAExAqgC/If79XPyqaZNUthfMxjLk=;
	h=To:Subject:From:Date:From;
	b=flLmgb5GkyB0i5JGmOPLF3QZh2tmM/Q6sxVU+/ooHGG6Huz01EDqTHKg5SMiBe1JE
	 BAz/IW4OPBXlyMcLyy6mnXfuaczJAdeLrAnH3G9eaCc2DMVGhc2Up77igKNBS/wTnp
	 BHF8z8lKCo4BwgmFcNarAxM0GH4XBrqf8sA61am/OO/B+BbLDoZiv4BjKRoMHdYtnP
	 VUIumLQjkTDQetrprMvfDLVCLetHtSjq/ZNrq0ZekdwjVZxeF5OQpUi4so3lLT9u/H
	 IsTDhq1MfHfo+2DYyvroVcxYrKtQxhoJ8z12m/h6Tz5MwcJkYc7FdB3nlf/GOYSfye
	 kdhQIROJ4TrQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930CAEB26F4
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074543359.25127.7161608463305284037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915ca4479aff690770def1e94130ce3f0937ea99bec0dd333c93a1be8b3a521c
Date: Tue, 10 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770745433
