Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20121230D35
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760464194; cv=none; b=pQ3IFGenMSjjNZLDQSQF2eQtIW+8DehDH+aZx7n/IupKAV3GdtzjWVCKYmiGYj2zo1yOKwrLIvWfYgIzgnWELD33G/lnB44OKb3MFt8LC0r+klbQTrurfIdQgS859483rxN2MsOCa1MLBuTQ6mkJ3f/BV2PAjikO69NYQxgSwm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760464194; c=relaxed/simple;
	bh=/slr0Vl6yGscGD/r7o1ARWK0gi1ZozMWPVQBJusfJAY=;
	h=To:Subject:From:Message-Id:Date; b=Jch6vVYqZPvtDzp/SklCeNqx/e49ptScBlNpwU4teBDJP+1RgliFPRAy/t1z49ysrlxcKpnu/w1l2U6JHmWHnQjDcBzn5qOZhbTZCTtMqZoK4mEKTOPvoxE8IL3rB2feZerOicnK6G4lL7Fvd9HUjg5WUI+9xGohR7ARZ1rf29M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4ySH7p8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4ySH7p8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34FDC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760464193;
	bh=/slr0Vl6yGscGD/r7o1ARWK0gi1ZozMWPVQBJusfJAY=;
	h=To:Subject:From:Date:From;
	b=B4ySH7p8lvcuFUo/duC0ivxb16LVGxpixGGPOdH1v7cnAkwx+738NkbDfqVC2/+yS
	 rvkwQTfJUWQlDQlp2FMdYOEo9pgO7e/fFm7gNsapuU7lvS8aAmS+9J7AEUBWT8uN6Z
	 UfvmDVELMBcamV2+d+0U3314cZ8DK9a5aMVcALS0brag27wEXxknjxYChCNaWkfe4X
	 NoqwBmvHy5zqjAfGaYzwR9ZVH9+mMzdEKN5FVwNflG0q0tpSpuB4pt5R9tp3BdmWod
	 3TOeFMBO4wfT24JGEHkT4mfezm/fFSh3Bg1yLq6D4nD0SEUbn8njJ9wmr836dAwolY
	 Gn4AcDG9a9f7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D75CCD193
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046419357.2759.2153912109105636502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3615229cc626968b6bff34a57a5a17ab3f164941cca37dfb23e7f1a448a3d1
Date: Tue, 14 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760464193
