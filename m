Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F36F20EB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726559754; cv=none; b=r1svk/rmhDVt4aZNR7czwWAUaRRd0M4gR6HyDTjl9ph98VCMwU5QKk2czgFlqv9pNEsszE0P3AG/RKn6AcamaOQ9cq2loS+F4YTypz8STjt44PuFQbYau+rAQoyAq1GCJ8YJ9fePnK+efl/o94ct6cD1raMWrHnT+OMqNKwrkhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726559754; c=relaxed/simple;
	bh=POBsB9EfWECL0ouTauWH+CzHjvA4k04Wl5AVlxEhky8=;
	h=To:Subject:From:Message-Id:Date; b=XwKZdwJ7faRr0NcSsmOJcC6NnVruIWiYx+GYZRAA/YqAv1QRYE1zYhASwghQ1ZDUe7RFPh/aylWzFmlOmkum50Mem87PMbCT7tQ1BqjjLlo6O8j176D5zAyUCfuMbSNuAmGbq4IJKuuZwEeNlbzG4c5JydCBsn1n3Wa4r+DWvus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMArFGzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMArFGzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD809C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726559753;
	bh=POBsB9EfWECL0ouTauWH+CzHjvA4k04Wl5AVlxEhky8=;
	h=To:Subject:From:Date:From;
	b=CMArFGzlr3tu/el3TtlsdddA9ZDWP1M3/wnvPhkLGosrIT9thYLC/98x1OLs9Hb+r
	 VakOfqsD8S0pc9eCmk9LRNIYKpkpJ3VYtNh6l2McCWnbX8X82tyU5h51zhn1kBGglG
	 M9Nmec6nV4Du8jnbYeEOBcxvt/MkrFvohJlQZJfHeCHckfD9+ws4kRCDV0HyYvIAA9
	 uv5hgFjhJGKZrIlVGlGBN9jRzNAez9XM8eFF2VlML/mqN/q0Ini4La4Z3Gj3ruJOO0
	 tv46ecI1RO2CwstyRfxByGKOE33zUlSeoMx4dl9Hh2hriMdG7VM4Mp7oE20UkkZKiA
	 HGbfrt8S5nolQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF3BC35FF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655975359.12107.1551610256085771175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3662b6eb534202f94855c7141cd9f50457def2ea37e1f51a1942fe60af9bedcb
Date: Tue, 17 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726559753
