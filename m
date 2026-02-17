Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346FB35965
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771299894; cv=none; b=rfCOpxt82z4FFgCbpVZEwXi8yawF5rCszbAxgt107e+4JoocuaaOiUtmVc2afAE7BjeplkTR1vCGoOiRJQz6LHTPkT3o2dI2Kby3dzuJNKSCx080oWHx0tYR25hMboCyIw+o0kitUFzkS4+4Q2Y8SVdwQCe0/0L/yc2g5uaDtk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771299894; c=relaxed/simple;
	bh=+2CbYPTnHsgWbW4koxq8EFVpSySzCWHEtgcMdrWBxTU=;
	h=To:Subject:From:Message-Id:Date; b=gMYVVNUudrg7NmJonHMQ9doX+2HAypUMUx+UEn0nio5r08CwahIr2n270GS8y5gkw8VmRfdRR5vKiGKe1znxbncWNgPej0NZgi6E0KIPs0QpS3A04tjAz5S8TL8g88G1BUhboj6mwJjULMICJnWpKSAudWtp90rzZDX0kaP6V2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYew00gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYew00gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD662C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771299893;
	bh=+2CbYPTnHsgWbW4koxq8EFVpSySzCWHEtgcMdrWBxTU=;
	h=To:Subject:From:Date:From;
	b=OYew00gd63U4GFCAoG7AYAr6z1ceqtYqcRQfC0+TG8aYryct5J92ejV10ke0syP+6
	 /34DdBwl0EtZzNpu0AF8dnbowteQcpaGVRhh5k9Gol+Q4j2iYI8V/1O5RgRv3gGf/Q
	 9R40UOGd9SAQmo73GUVKtJpXba5Ls85gbacMSVHpOITXqrNkLoAtnh1ANGT+xZO/+Q
	 frVniFfcXQZrelBiCq1hkUczXsypTnUDwk/hjmy3d2rtGTaRiC6cv/xz8DhgTTGyG/
	 /qtOLV9BMpFujdkm/Hax1OCSndkaxk48FNovtkxLmo7+yHenerfjNu8hWLlv9K52GJ
	 SzoIYhzmUpeTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BCCE83831
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129989358.11441.12000061135253852905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94fa33fd7c5cc06b6594aa1103101d3dc4b866a21f71fd3cdf9a6838f6c6040
Date: Tue, 17 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771299893
