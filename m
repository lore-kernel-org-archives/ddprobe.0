Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D824503E8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790291434; cv=none; b=Cq19CLgawbejAWwS43jOfVSwcPsY7YiAb+t30tL4Ujj5R3hHKZX15Cclqur9CAkejP5WE5ICXB5k8SxcJQA3AHUBDkzi8KH17G4JURRWf3YZGNpEgoPYyK/6xrArdJaBt76DIW/baTu4g0KOGDpHRnysfrTCJQmtZADc88+tXvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790291434; c=relaxed/simple;
	bh=7YLUYfrHt4+AGaoOeY4NhsJqZOlb1in+W691hW8MqcA=;
	h=To:Subject:From:Message-Id:Date; b=J0+pCUQrSDWsfFBnVbBdlckfE3cWaOCUDga9mwuEbgBpEpMaKcrlG6yfOWlHNR7CBvnDy+Mqp+8E9J83af6EDHtJopPU1bFc3aygl1bhYWclXfx/oVe5DtlkOnOhESUZDItujNsipkb2fAshYgkWEGCdk4hJYtLK49XvY6KR8+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8lw1NG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8lw1NG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E286CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790291433;
	bh=7YLUYfrHt4+AGaoOeY4NhsJqZOlb1in+W691hW8MqcA=;
	h=To:Subject:From:Date:From;
	b=M8lw1NG6KuiakDSr4XekyHDXZ+xcp8RAv5rxiYmzLjzuAZ0TRsVt2Do3VOXbKSYr8
	 fUw2HwY1ZNKgzfFrpj4r5ktq0pUQ/fc2GuZgdALf5ZtQ58zwPo7HrR/8AgGdmB7b7A
	 OQQkBz4AJNg7UauOzUhqdAr2G3b8uq2WFwHz3vBeFGthStYxS9STXoFFf+1Gd5oJBm
	 314qy0l1ujRMoELgwJyOXXjTqYTNKj7sYcsRcwMo+0lsDVFr1LxXP1wmePnJBhFCP9
	 Pj2+jjXGP1jd6h+2bomJ4E6a+3qrpl0KJS88AKO0Wb2KYGA746jmwgLajiXOvY/v5E
	 iyZ0Nw9/pmeTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5CFC98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029143374.3454.3341868401848145001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252a6a865ac04f4fbea71e8b2f3e0a834e2614ce418aabeac25a1bcd1082c0d2
Date: Thu, 24 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790291433
