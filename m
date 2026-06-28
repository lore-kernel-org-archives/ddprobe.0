Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23435311940
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782673114; cv=none; b=NEn58A7WPYoxcVFFSOJJRDEDHxNGMPQpxJhlBeU9+oWUSiQPg9WnMLgvgsLOU9KiMXBlAnYFYBaRbEQ0/YNq9X0E1zkPFZH1yDv/SWkSBYlfOGFClzz0w11Iz4VeTh9fuksIBQ1mtwbrFytw2Ndywvq+7lLXWYZ+IFb2JbgldQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782673114; c=relaxed/simple;
	bh=xU4dmQOd1CY2XXOlfS/8yUaon7mwevq4lJ+F3kn0T1g=;
	h=To:Subject:From:Message-Id:Date; b=DWuB95KrM1MPVhRhxk4Qdmn5kyl14xj6FF0hMaksJ4CUXNz2B3a9p9TuJYw9J2kck+N84p6Vj7XF5ppFpiT3QJdsbMi6TKHAxhjis3Q7L0WSAQyqguZ5yfQpm384hXx+THAnx0mG1LiGtuHJjOiEMLF6AkihFdRUHz8eFx6avSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JT0HP0ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JT0HP0ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C609DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782673113;
	bh=xU4dmQOd1CY2XXOlfS/8yUaon7mwevq4lJ+F3kn0T1g=;
	h=To:Subject:From:Date:From;
	b=JT0HP0ekg8ygO98sNlUIZcVelznjR2njiYSxefKxNChq9gJYW3Vkscg9PUtv+/C1R
	 7cGr8hu3W+ozWj24CWSTCO7madX97Z07UOH8ftvJbnnAEjK5RAZfYh3eQS1xFHk82J
	 ZEaaNhZSP3YrrpT5sL6U4Jkmw+L7B7zXdtpPaQPIrMVSvhJnYcJPFnWZ9PZoKHtqZx
	 a29F5dl7BUYdXfoZ6rFMWTydhYE1EHUWFqEKTx4jt7fOYxPDA259coQ99Jvpv6bUn6
	 edsPXBD7GCvgjfcrFj+E8AyCJL7L+u70U1IBFhK03xLtXc81+NiXAvtMJhUSRyXVSI
	 LrrTf46oFGufQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB36C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267311370.5968.8623226886484404270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 900c8449b8e8cac8e3da8a97ddec5c4e504c30a13ed50c4a1a7cd9f4a4948eec
Date: Sun, 28 Jun 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782673113
