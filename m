Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF137EEB3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765054974; cv=none; b=kqS6ibWZHiF+5A3Tlvpn/B7hYnHV3VTHijkLKATvsyq1iY92UYaZ9a34VGztYFjasp+VOJvqQHkRbfrkbJQ5eJXYh9t9RUF8w7QttvAacz9n2YyxU+weE5UXt2oZ6BngQMHlMoaPDmDv8ZV+b2JithB9GI0tltuAn4PQ0GZFpOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765054974; c=relaxed/simple;
	bh=hwyLES7MzRDq43pGZMmO2drQef0C++fU8PHvQoRdfAo=;
	h=To:Subject:From:Message-Id:Date; b=VrqHHQOyN40rD4J1JHq/4496iCm/BtyL5FYwc955NdI6zpj3xQwXn5Sgi0wassdGE2W8jYeWFy8mXtzOr9hN6a1BE+f+jUJXStO9u56Rw4gWorHds3agN1zzYxyRzCP3Rz1BtrYk9HRZT/YHHJCrN7EyEP9/cgdvhbZZwKOBv1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJdpd3gf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJdpd3gf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C7BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765054973;
	bh=hwyLES7MzRDq43pGZMmO2drQef0C++fU8PHvQoRdfAo=;
	h=To:Subject:From:Date:From;
	b=dJdpd3gfaoZIYo9EYIUkAoI10W1NLNAxkv9nfz83iDWlnZaTKlm19GelxukVLaOa9
	 FqcqsTE7O59lZoWtIE4v6x7Io+ZACjtmEbXa1DQebPaEA62wUy48jnjAWqG12xvbp8
	 aOknseFeP09bW0hnYytUUQR7tkuM4lKm+1PnKBY58JtHhNJMqYEPGTb3i78gqm66Bu
	 +l0tlJnKoqEoGT/gt3THw9ZS5P9Ta9f/dHsEmpVU8VRpiGP5LbLg3vBg4DZYUJd3y6
	 WO5lyvIyCZEZ3whyy8RvdD7onI3+ExX12XHdtnKQxxTowgxbn+ZCLcJnDb8FX6LpDr
	 UG3xEQLu+k1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1601D3B7E1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505497362.4632.2414053210813061512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c12757d4afab3da4533815177eb8e1063afb06982b98506c6c6dc7fb355ff03
Date: Sat, 06 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765054973
