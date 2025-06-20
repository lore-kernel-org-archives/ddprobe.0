Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E1C23CE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750387794; cv=none; b=bnup0i3nI9hcPlJAP+E/446UNrOV4mj8fV7BJFy1o8R+3j/4RS39F7rXdJhvev5rxw/m2UtJEUr+iiP5BFhpTpZlBuK6SV9WtxmilKRcDxKb3AS6/IMjO8LWWa0LFvw0pAgUSPbE0Y4M2KehSqHIE5WnviX0GEgvqOTUtySUJSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750387794; c=relaxed/simple;
	bh=GVEkqj21T7Yxxq+3jtnuWX7UmMJtoXbcTsgHHw0RDgk=;
	h=To:Subject:From:Message-Id:Date; b=RTutXEMyWJEErIibcVXs0qNxB2o1AHqiqbmX1NMnjxW8ohRFqDRpW3WVT1JUFAQroW4v+57/l+6eI2YNPzCYqkMsOCJAQKkv3DXwcGJ2mwDK0Lif8DAeYj1XIBe8obC/yKVolXAcBnzV+AiRN6cOGFI+GwKMEq9DjQ5sD6gLYF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu9ZzN2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu9ZzN2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33D1C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750387793;
	bh=GVEkqj21T7Yxxq+3jtnuWX7UmMJtoXbcTsgHHw0RDgk=;
	h=To:Subject:From:Date:From;
	b=iu9ZzN2xxpDYPHv+EfQughW0BA7HWlenDDYd7QU2OBSGX6KCycPSJ0poUaTGWtzSC
	 d1aDuvcOjgXehZ23VOW8VGU+lLUckyYB87dzrS/aDom9t1ezrqdl7+DU+aXi9SPjSS
	 Zh3Fg3YuXIfIenfxgz8hnAE3UrxAQupgwIottP/1GjQJQR17Yji8aeVjszbzR+EtPf
	 4kdCogy+XCK94RtTsBB0cwUifmArNCf12OZ/x5gqdxaQptB94M07qM29x7PotMO/2W
	 2NvuiB4wUTeCLit1jAlyP9nmi7tgWIJ6KjDvi/u7bV6UuxD5az2OmyUkr4MeuhC/gP
	 kgzCwwzvrWwKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9101FC7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038779357.20728.2956310564270664510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fda882181db547e20c203a654aa7048c586108e14a35ec30e45ffd4e8e59bdd
Date: Fri, 20 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750387793
