Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A9C224AF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764213174; cv=none; b=QLI8BwpBxkLnMO+lvkotTL8gHsONiWREy4+eORVLjONRgzdxxDfdGDJW2hF/eUzUBf6W5CFH+iiqB6Lt0FWpqX9j6Hz3cc1aUns+LUMO9WimrMytSMx6m2IxJNHbwKPx3S1n2H3NAq9glciF6mX7tZFCIyN+cw2lzsob0+QK6ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764213174; c=relaxed/simple;
	bh=p6PvI3gDX39Q11al9edw0y2waagHzhd4p0L7fO2h1+4=;
	h=To:Subject:From:Message-Id:Date; b=Ufuzpdq2c3J2TF35iYurIOkdyHIGBDaY1Bjc8NCFLP0GAwa0xRZWotZ3ZzzSjlx02CwvnbH1K5QfvXRA1lCgSFC648DpD0pYbZZDW82KMYjjrEI5bAEM6tdq+uE8HQlRyJ0Or8SobcRmW9LBxw8kg7W7Bzxj65rqRlsMU+FTr+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRegGJAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRegGJAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B401DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764213173;
	bh=p6PvI3gDX39Q11al9edw0y2waagHzhd4p0L7fO2h1+4=;
	h=To:Subject:From:Date:From;
	b=vRegGJAyGgRmol2pq3F7Lx4BeF2JDZtKjNCHoMfYL+Xl58tEmUpWtC9foZga715R7
	 /CWh8p4qMI8s5Ulgc0pYB7T9fqImokmy1Us3Q6Gs5sEKhkCRvXgD3fuvYPsdtzLv8l
	 j5rPcl3+4DZj8M7zPszBjjtjSqWjUEO4lp1QMMvdDmz6CoM9c2KYvpD+NoB0Z2yVKP
	 UzKTUtASYHeBF3ciRyk0CjXKw9ptsj0uk4xwcXymDi13wXvW08rsVNKkC880czWY1R
	 IA+yuWCZ6Atf5gpfgLoTx2cp4Me1mga/ihsWDg1+TNi+g2Wx2a8I9nkflAVHGgCVkg
	 woyKY+rWpc1BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAD2D116F2
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421317363.25249.3647376117231152927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1a68c0752205d681386227c8e9216a42f4bff2ffb2025045689db190e11c47
Date: Thu, 27 Nov 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764213173
