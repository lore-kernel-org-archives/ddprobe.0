Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449F13016E1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783189714; cv=none; b=PcAfysGi27BFlDZsI4UyAm3GbYkhrgogL/s3b7fGsV0YT2FyCReT8nAOGissTWGllR7qYwLARBwpzo9UbC/aQNZk9rGBerH5MH7wSXioyrQRewzuRbPdvSLwwbpQU1CYNIq6uNSGND8ZWMM15urVtWNEAi9tIbV1/7UhvbOnDlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783189714; c=relaxed/simple;
	bh=m3c17crYaoV04BvtNhqT4NqQlHgPQeoMjoSgN6vquu4=;
	h=To:Subject:From:Message-Id:Date; b=HjQEIBI6/urJK9FBQ9E4zIOQQWZntGvGY1Y3SvuWVx+dinGTn4/Q0jguwcD44obJfpsbtPMkVPOWbsmw25mzTPWU0Kw6XMGfq85k+4lCOctbcyyVKqMpriGomNtC72aMgAjhr76TwiMf8fvkurATRolnJEBvd/N6eW4Kl3E/O9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOm/t7jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOm/t7jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC74C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783189713;
	bh=m3c17crYaoV04BvtNhqT4NqQlHgPQeoMjoSgN6vquu4=;
	h=To:Subject:From:Date:From;
	b=lOm/t7jp6j+VrmpnIUfP71TY2ICElEdnCumsL/TotK/gXE56vUWo64X4woAxaiExj
	 IdtkPGUshgyDMaHU96BcQMe7K/yr2TILjhF4Hrxzk/NCXNEZOkzsHrvLtIDS7QOItX
	 PdGjP+gbDAxtEgB7jyYTKhJSKCdyoJ0sY/hnovPUKh+0LY1M8YVvtQY1f1Ihu1kVpe
	 q+QVUFZsAbrxzCMoHiFhRsspZFuT/y0aPhFrrWJislICWYYgjSVhrhV5QXkvOX4iez
	 dkur2rDpCclxS/1H/XDrQFK8d3258sJssF7B0InwgjLvPnxgZIgi6U7v6skRLf2Jv3
	 dUjKsGcCgxC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45FC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318971368.21848.15802405451022539600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d33b670f1a7615e232421989e2b389a216390c5dd7e661bde79f6c80f446a5b7
Date: Sat, 04 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783189713
