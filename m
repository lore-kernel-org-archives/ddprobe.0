Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317031DAC92
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751636394; cv=none; b=XCz5lz0ix9jQJKcgqEEWh+tIWsvDDJqDCvDEEBXYg9ShzAzwHkEp/gnV0/MomW3EENpNbWnbOLwiE9XMWU/yVNt57aciad0PmLmKfHlNbzhrF+wDudQ0zZamwFBfilcRVC2kpGYlHLj3Z/ifynWPvBwMV+NCL0HfB7JVPox/eRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751636394; c=relaxed/simple;
	bh=GX3RyCZtLmcgL48EZZsfTO9xIRI1pty0j62zEd47ncs=;
	h=To:Subject:From:Message-Id:Date; b=rI1mvfwNEBmtF4vLbmFEraQQIcIUAOwgnJPOPlbcJaY3mD3oXd+qJ+FERTMp1DPukUtZP+1LD99WTFJLobosV/Piom7jw0o2SH8cvEKeCTkJ/4lf1qnd4vTwbI/+fQnZ133+JW9y7LpIJtN+J5iAYr3dgYv2BIcf2dcQAD3m8LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klgCprAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klgCprAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1692C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751636393;
	bh=GX3RyCZtLmcgL48EZZsfTO9xIRI1pty0j62zEd47ncs=;
	h=To:Subject:From:Date:From;
	b=klgCprAB/iR5tM66RmBR/mcbPkyLF8t21mG7kXMLjBGLs+qAd2EFk7nrYmCjSgqYI
	 yIl5rMMdkWCl8SmeXwCScZ6oWXZTzVWbfmocOpUrsWQfWj7E//9gVt8n0HMgyRdCqk
	 MgnuAX9ZJ1sAEtY6dAPYd+O0QUFvlaDrxOxa+sdG6HheGMvJvKqgiLz3Iq5hJlM44b
	 X//JixFWNLfKafIOGkBLTt3tHtkxH6xtIF/Eg2NtVaEvGeRwWQXIZJJOYTEpLdNYWh
	 zoQKwli27xL/+7irKy1ajUwVd9CgwyZLKOtkzPi8XDmj/2e/+0zJ0T2b2iBCQo7plA
	 yJPbOEyoGXbAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A9C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163639357.841.6970184877050355978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5ae87e7a788dcff29a222ca994c617ecf8589e0cff84f9d215f7748a48334a
Date: Fri, 04 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751636393
