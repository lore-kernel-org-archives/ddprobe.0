Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ABB34BA28
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783021114; cv=none; b=hPk0wq+yJEk/b7l1kE00S9tumgmPr5567FXSipA2vz1GB5jZO3z2zMijzrHFqE4tCIJHc+8Ft5pFfUzblehN6JIFB1nSmcU2xAZHFxMAOlNWNG883o8YdPBQVxhOhbOPMXBhdZBrjog5kXAdPCKvsYfvahIhLEx8b2VDvaCV37A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783021114; c=relaxed/simple;
	bh=A601DCLKu5aC9WQRlXcw4h14zdsi5U2ib+kvbdYmX+g=;
	h=To:Subject:From:Message-Id:Date; b=Scg+SEh05MplLEU+PXs1+QNsZhaMJ4ivjpuMwB2oz9v4L+jK4t4oQ3cbTAbCcTtWURfvsGgshuRFZBi5lAtv5h9ikEKad5RUVVHOARsGoT0GkZDTTqaz9W2vs5MZpJOZM0tJb6PUqMo98vizQK7B68/FmNyIdiqtTf0s4nRiQ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXpZnyxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXpZnyxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31F2C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783021113;
	bh=A601DCLKu5aC9WQRlXcw4h14zdsi5U2ib+kvbdYmX+g=;
	h=To:Subject:From:Date:From;
	b=WXpZnyxUxabnNCrFvqNcYHNeh4G+UTd4SvTUCio0LFLR0h6bJMidu77ZYDAv5AX6p
	 jFjDMbCkVoCMMzTIkVdmeINp5gu1crCEAxchzdAZ1fiWs4U0yVfX7SRjOkSUWaiPxf
	 8YRv6RgZq4ZpNoydqVP9cPjk+eWdePGVI+xl8AuBCRs7rTDF/Kcxoy7L9DZYZXStnL
	 /Mepfe9PLW/7GT3wv9aou0dpGidE7bKpAFQeh3mvo8du6mh2xr2BzwmQOkdEkyJlZ4
	 XqIIRq9uSChgCoxUs/a///T+R4AOe0wGfdmHSr1fd5k4OIxmIrJi1gC3sdce3WkN7z
	 ki54od/2BmGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5FDC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302111368.8812.8321494874404147732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de90f8a2287bfba4b7ac4114f7131147c8126ee40469cb8b2cf1ed38b385bd17
Date: Thu, 02 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783021113
