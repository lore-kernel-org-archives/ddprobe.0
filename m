Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272D629403
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709867897; cv=none; b=j/qYtg9t/m28IiLvvwI1K2SSub22ViAH5kCF00sW90+hVHnVWXywQWbZsDyhltDqO7G/uYp0yXqHqsBr2IPvms8OAZcbTvDIF2Aw2yq9OeFwd8a92RQCeA782nYOZAbYvkNs6WVBHepASlFlODzsuBDJR/q1aGS5n78pr4q4SPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709867897; c=relaxed/simple;
	bh=o+vzjuKTUE35PXTDyiSHiygfO2u5bnqxOjgD0ckoiIw=;
	h=To:Subject:From:Message-Id:Date; b=WQmFi1YFUbGLO4+z0MtyBVE0j2+audjACcJKz9ynCo2/I534DOeBbfAhs3jhACv7NdfqmWmAu2ScPYnqOsf2Ux+j2T0wRz6fqAS+MK7zTbYI9IitIrCE16eYw1MhaYQ1lonJzbOc7dkSShkvEDUFti3RUNctcJHgkwCHC2yIt4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hD1lAT/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hD1lAT/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DDBEC433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709867896;
	bh=o+vzjuKTUE35PXTDyiSHiygfO2u5bnqxOjgD0ckoiIw=;
	h=To:Subject:From:Date:From;
	b=hD1lAT/It4ngJ0Or/sJZIpodgrbuGQUENA3SACQ/qlJeOHHdHf7gILSQgFH92DwLt
	 nrAajIwvun7eZth3rAaBSgdKd8Zek7boyrPaYPYuR8kTCnE+mHGmzZMY63YEUDeWpZ
	 nGd7cncGD3pGm19/jC1CDZxf8+6RDu50JXdRkW7eHjOmukF44t7k8zOduhhphphDWE
	 bN7KC+BFBf3t/AamBJEiYbSJ5K5HU5MaNAvTbGM02HXYfqZjVxcANTvaNsN8Vs4i1L
	 auJNCpcrEu/Wly+Sty2aytrKRPpUxIBuEx8ar4dgsx7vkaXGug5TnoYSCHVDfo73Os
	 4Z11Yv04DEGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70346C5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170986789641.30986.1916027688717737975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcd6be36510bf64b4bca8e01f7dcbf4ee21fa609dcf147c17c2161f8c01d1ae
Date: Fri, 08 Mar 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709867896
