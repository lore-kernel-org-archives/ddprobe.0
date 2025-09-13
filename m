Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6752ECE8C
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757776793; cv=none; b=VNYrVlve67W4uqaBe7M0pvsZEN4EHGmhilJLbxJLQpDGMY46YAKKV08cKspKLNgjnfp/Qq2LenR+XLp05CwVfiLN9hkACpuJTUcorBUcfbCeDqM8L5ESZBdyelg3mtXNeZrErvHZOIqYEGfzB/wmTOrRRctZiI7tAzbu6XtY5OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757776793; c=relaxed/simple;
	bh=dxFj4urkhDjFLlzz9wUdk+ZRf/oCOIje6yZFGCHBALI=;
	h=To:Subject:From:Message-Id:Date; b=S+EKDsnpHxIRh27AFPVfZwOnMirVpLhsJA+MPn/YSJaSlojd8DcafeDEqcJZrfJI5iihcnpDuNggDPP4VPLcajiB+4Ls1an5d86A8pE0JNjo87Zys+bdqqL+5dr7UASx1qBFXXFdH6u12z+YIzQUOcDlpNiAtcSuM6bE5zW23l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShVGVnj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShVGVnj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE80C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757776793;
	bh=dxFj4urkhDjFLlzz9wUdk+ZRf/oCOIje6yZFGCHBALI=;
	h=To:Subject:From:Date:From;
	b=ShVGVnj53V7PhzDwTo85roS6Ry4pzsaKDecM6+SnnvVCsaAnGn2okzQpXDUOQKD4h
	 6uwX7Mv4gckVE1JjqyaBkm1+WPyf/D2Hlme1ObbHd8/If0lHaaWlPVB/oX42FZRq98
	 7h/1RBYKr6mCnIx5dAGxcFO4K1Qig709TMuASfV6kAH1CWLnH9KnDXlpyQ89QZWPXF
	 Srm1hMZY2WH7zjomEBn8rdBnvTWtcICQpZTMmc9CSdCx4tquPIKzWGrBP201JYovLO
	 CiomZG5hgdVqcBsyFW229BOUBV8VDgtzrFivQ4RkTYsBOFDZabJvEmmebC6TijseBy
	 73GzXyuo3q9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E803CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777679357.23303.16382787601911809711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f597a8d596999029335dd2aca66d7f8fc140cd0a0904be6522268ad8cf9f9ad
Date: Sat, 13 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757776793
