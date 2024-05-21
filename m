Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113518836
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716269543; cv=none; b=GPP7abQTqAK74I8OTG6PNdpshPhUfKyryhORS1Xs6DfgjmZGK55eAdoZhlj10tzTpHwnik229oJZxfu7Uot2uQxoSTuWqAWu+gSXxbGQd0qluGvqSZiLls2UpBLxZdfDEvaCD7mrmQu8sdkcWpb4DeCEDJVOrW/voNZh8FMLk0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716269543; c=relaxed/simple;
	bh=ECjL6Cs5xS/PrzvgiwieKdIsdrnD23aeI+BXoJZldqQ=;
	h=To:Subject:From:Message-Id:Date; b=Kh7OezwV2kqz8a173ILySjdOXO5z+ci9JRTWGadz/jD5VtpmlnyawlFzpEoLxHx3BVBusgf/r8JT4mj+8lbxMU7/B/iEVU9kBGDNuIfY20P+tCwFo7MXNvdiP+iT5/Oql3PnFFO05oE9ZPd87SadTsfzThlgmrcln5kQxgL5DBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZtI0f2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZtI0f2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABB7C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716269542;
	bh=ECjL6Cs5xS/PrzvgiwieKdIsdrnD23aeI+BXoJZldqQ=;
	h=To:Subject:From:Date:From;
	b=gZtI0f2uZQPfcYgCkCE0Deiyv82Yq62cewo8Sb4BsF1YOMh4Y73fIB875JrA+wv+6
	 qraYIxZfNm5cecIKpgNGlbGFhAVqeBLWeG92P3O0mv+7lHFhLOAY83RkDlNSpO0BLS
	 itoVYBOTzDDJegoIP3h5mpAsTm+aFr1YddctxzZJR2qeqyYGtm4p6+L7O46ekglTKw
	 lkrrUJru+NjCwEtggqv4/48wqEdR/H8doDSsGYg0ywJ597ZpmfRVOdRsvDf6RomFhI
	 q+/vNlvsOyeY1go4dFCyB/yYjYtwGnVKyXaELPB9oj2Po0Ds5PodayUDMY1HsM1y1f
	 zOTmQ8vrVpj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE33C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626954275.19101.6318695092220284355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e915de3c5b6d3013d633de35428b982f0040997f6d302a9381d70b1ecc4e29
Date: Tue, 21 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716269542
