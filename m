Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C631A23E33D
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766481233; cv=none; b=s1PBr3ExVxoVGQKANxhhYPtIk+26bvd+ZtczgX3zaNNFk9Dpv2iR7u8p0AGOBHMjTPiaozR9ZX/lNok/APM/xb885KfWJVqwXtODV+Yw4YoN2Ilklmy1LXN7HsYMqdHjkstjKCiiPba3UzZkvlSDX+IMd6O4tDpqyIhWN0fb9VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766481233; c=relaxed/simple;
	bh=UQ5C+SgABwx7Xj8W/jNMAUBMJSYbfhZ6F+tfoVRB5fU=;
	h=To:Subject:From:Message-Id:Date; b=TOeoIaifSHHCbJdaqtC+0MkEwcXcMCsqm5D74Tc59NwR5lIKZQ7IfP2cmy7bvBVARdjwzJcPkiGOcPdCShr5E7O4jW0Dy5bglpx7xpktSohNl5Qw5p+1M7tsY6AVEozUW/mPg3sVs21r61JU8cugvAXk0Tc2OpQFobexq7R5mfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9i5pUko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9i5pUko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCE3C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766481233;
	bh=UQ5C+SgABwx7Xj8W/jNMAUBMJSYbfhZ6F+tfoVRB5fU=;
	h=To:Subject:From:Date:From;
	b=M9i5pUkoyHu0z7ei1T1Cgu8Kg3pzfSvh71HWZ2oIRTce0hKi4sWUq5hhtPouc1zzQ
	 o17mbASJ2UhR8qF9NkHF5+PvGeOlSAlWaSBcGmwGtiuF9PGpsDYmxjz+CK6a6awrSw
	 7+6t9998B64M6ffN3FO3vttEbLnXkX/TflwvKPQd1nh0PzG+4ooIWgctkHWOL2NbZk
	 IsHeS6WGNXkCShIoQlSOIdova9VA92ZhVr6xB4rfB6VuXgCJwSGSmbTAZtf086rH33
	 b6dCbadJzEGyNDZELr+99JUINjwbjdQLSOSVJEtEFzvuKV0LDv3N5NXGr5cC8H98TB
	 xWjsAivWccDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1CE6F077
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648123357.14094.1236542825946663485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6afe1e0fb1a188192143196ef5d3a946b423a8f37d0b33692a9b79520f486469
Date: Tue, 23 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766481233
