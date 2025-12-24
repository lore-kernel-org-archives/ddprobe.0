Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083791373
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766547834; cv=none; b=aIr9OWYfzb9gKLHyJOxtqXLjGdvz9MvdISBIZtxxdNT28WKAdSsdYchohuXiAg72demK1bQFO+SxH9R6z4umzUXb++AEzxdJzFiWnjEqmoTvt6LyTVYmV9ACIz9bE+bHoUf9ER7iHRXxuBi/mIwiqM5dQl3dLjfNkF3Q/hWtX/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766547834; c=relaxed/simple;
	bh=c3axY63vmWUG1JEXIKk3VAaOktbyAFySnWNuFtzOV34=;
	h=To:Subject:From:Message-Id:Date; b=kXXUYmm8laSWOw0TCctRw7arw89WnUzE3PaGlC1Aiyxm3LhId+gmcm/MSckX310BeD4oiR6E0tdQwzEWA5Q4oGVsbBGw8y7pP6oVD36du3ZOqMxoWCNhVCNwqOp8SEx5VTPRdBazlSAzMylwo45DhqK996WMy5NH8RasUlCwBMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzHd3k1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzHd3k1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F866C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766547833;
	bh=c3axY63vmWUG1JEXIKk3VAaOktbyAFySnWNuFtzOV34=;
	h=To:Subject:From:Date:From;
	b=KzHd3k1ECKhPDQl15N4XEQ9HlGl8c+0E8QUgR0Ee3WveXd7t5M/WHamKMwBIH7ia4
	 FtljW/os8ZOLuEuw5DS1axxNx78TJztELwg0V6UfksJfUbJIorEppDWC2SSLQ5QwQL
	 ZVVzK9gJXhHP9UalxGpSiCY478J3YAbBlA/CI2ElmJfab5OlgXozsNvehvthH4RmqF
	 yrrsbXNpXfn9G7O7fpvVQvYttMmVwlmcrIO+IEy/7xtc5eTRR+3r8E1NHqstVll1Kr
	 aM44MKUmCPxjpRGZ0wwYtTN7cN1/KxyrApiBloVukaIk5uTdpR4QmC1k5xL/5JrJJD
	 YqA0KSGqygllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9CE7490B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654783357.4524.14436606315966083500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f725706a5cd4cc2d519eafdee6cdb54db89444ed593f9e38edf90a7ca97ad96
Date: Wed, 24 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766547833
