Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DA628EB
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736561154; cv=none; b=Dbt8jbjyZmnvpv+efji73/kIOvYkQRQ+2uDKzJU0Jvrqvja6PMlnsGBKL87oRf0woC6B37fv5G/UCQHo9bdAktAwDkxj0GvAiVu78/PKIq3ITNKGf83Kf59ob+436gvtT9JeOKEzp0hhtQIIqtzZIPm0L4lB24oPyqp4fQ2TeiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736561154; c=relaxed/simple;
	bh=1CIEitVXEBbDxW3Yg8std+Qn5PlK/XcOR7W7tJh4xWg=;
	h=To:Subject:From:Message-Id:Date; b=BX2hCMXAW0DRgMNkJ/h9fchwEUYuNMaT8+YimB7ZZlYyGYI/1Gf+IAvVM4EAPyDoO7bNcqqCOdkt2Cam5UsDNdnZWDnrup9oW8engytb1mONIHJqs3/xlRPRt/C2z+D/KYEs4ovLAEsU5duqK7wW7a0fe/m5Zb+GS1IubkxKZgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZ/Pv1EF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZ/Pv1EF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB35C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736561153;
	bh=1CIEitVXEBbDxW3Yg8std+Qn5PlK/XcOR7W7tJh4xWg=;
	h=To:Subject:From:Date:From;
	b=NZ/Pv1EFB++jT93Sd9rvnp1OLoX0Oy8xcjQpRDl3lXHeO4QmDRkEtfzYuk5Vh06qC
	 VJ2VMkjr71YkhH75Xn+dcfwaQxvJajG8w2cHGAU3bN2OVkjHQyBiNOM5qaf/JA2Wje
	 hggsmoEZS7AF33ZNuswIUOJMKp/gqLDJoZo0cyjxSpzNOe+NyTBFZ1eT6pmNOOMky+
	 9t8zj+aJ6LCRwNqO9+1zauiGJirgfxfeUwsdpFHRDbZQO1rklf9C/5WyOM7fUj+8ZF
	 tEQSSjCW7SIOGPj6DRQABadQlQCQDBvePcL7OIsDM7KDCzwc4QDMhAPk91Rawfzwm4
	 ad/pEF98aO7OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D57E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656115358.16779.9069140711637552280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00097ad0a4584527017907c9a62786c4a86465e566282f7f88cb2f5dc903c2d2
Date: Sat, 11 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736561153
