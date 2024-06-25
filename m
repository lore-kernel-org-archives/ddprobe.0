Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0637317E8E8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719353603; cv=none; b=M5ELNaNFjqpqD56go0AwJn1x0d/ASGtdLIFIOiJNTok0YjcWjr548JCtThudlhGYGwzQP/1nDiSB1auUCprUF9kW1OFkKx0BSYFYl3Y/LtLDiOHlJpuACrh+1J9veaavgvJnBQ+e9ZLdDMQjYV/JfCtBcH0ynRYMLRa+ZdWeDQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719353603; c=relaxed/simple;
	bh=37C/cIoQ68hmwbjN6JPXZkU/sKC+xothOanaWTUds24=;
	h=To:Subject:From:Message-Id:Date; b=b1QajkoBk8vgMEW1/Ad64PeP7ikHk7u/eu3PDC2cTk7HCIG1r1yYOgQLCW0XMsfpKkOz3YtYfE7czoZW4PmCYPwva961T8bLaogfrgZa3DOS/82G+rR7r/aaIQzfuUt6TV5lK16TnXXFFZNJvRq0zBKA7eEzHMlWrqd+7x8cbVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXM2Y5fM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXM2Y5fM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08E6C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719353602;
	bh=37C/cIoQ68hmwbjN6JPXZkU/sKC+xothOanaWTUds24=;
	h=To:Subject:From:Date:From;
	b=kXM2Y5fMV/m41yI1IzXGndZm0teCXincPf19gK9CLJW1tn45cfBEtRCaYEFM3YPEZ
	 i5tAo9KtW3jxu7ssGwnMbeVbeK8SGJ8llb6Ts+Pk/b705oqRrbjcou6KWfuznnlvGF
	 Yw0Q6j6J40vb+2DIk754ToiPmGMD1zEiSRaTTPaM1aeVFOpaekmV/eydPytE4UL2+F
	 +ebJdVKL2RA09/FB2WBcuixuvfx2Zgoh5m1+O7gxeOwBdRSWUn6PyyvSx047qoOIgN
	 bTRBaI7OHQ/DtB0zWV8zAklpy4OYYyEBs3rdZbGZo0jqw6DFKTg8ccaS0SEBHZelDQ
	 JANhowMup1D1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD595C30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935360276.14659.18352247319723789432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d87b2f4254e794e40973fbc0a1e33c13e30f2798d462acb5cd55466a2487ea3
Date: Tue, 25 Jun 2024 22:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719353602
