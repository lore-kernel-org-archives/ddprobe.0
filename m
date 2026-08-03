Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547F7349B19
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785795634; cv=none; b=MOw2V3HDern6xWI0QVYvZeNYB7HdCaKD2tMzda0dkgtvbAJdUoA0uJWqF5hja1wsSAbCs/OJ2X1cyLehQ7kCLwMCEE8oL6mtPTxa3Ko1iPVt1Gt6bVL06zWrUSfwMKwEvGUux6rgtCDvSzpJzv0J1BIS4c+79JyEBIYVwzBPgVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785795634; c=relaxed/simple;
	bh=OjdiS26Q4tFVAEMJvZwXKczKkpunA+rfcPCF7yxP+6k=;
	h=To:Subject:From:Message-Id:Date; b=FaobywTiIXSPlssK/sJOj0PXYIjgtb1lD2OiBiajNbbVOJl9HovdhRrdskw0cYfA8+jG8acxMAnLj/B9JJHbatmpoCeNoFr84gWegnETK8QS9YPhxLnHbPe/McAr8/N1i0UoiM/CjWLdD4l9GwpgM7Tp7uF8PKLE2M6iLXtl/GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVr6fuQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVr6fuQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0770C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785795633;
	bh=OjdiS26Q4tFVAEMJvZwXKczKkpunA+rfcPCF7yxP+6k=;
	h=To:Subject:From:Date:From;
	b=NVr6fuQZDPAnJRwY9SNh5M2hEBbrldfhT1+BWMUMIlXkr2A3vB79bsaDZNv7RtePc
	 Hlq1CgfLPAEUURmauilRKRbxrXQvjb/KwSSvUcdZxr52B2Q750vzGaN4AOHPpCQtT0
	 JV4d/db0SLyo1RqBDONBfaL2slcFjb7AnlSXSZvYgHIyRAEA7s7F9DfZVfBfe5QB1a
	 E/zEtSGMruQfyGVK8yPXn+kRHoGpqcNYEV1fDCmWz1q+64hTcsnmdbaMnyaKJ9d3pO
	 QdxY2VGBZ93UGxex9/WkE6/uWVSPhIzFn/xVmblzpIeikiLwlmwFOg8N2f+cCjZqYJ
	 W+XjO1ovSEUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD536C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579563368.14628.12079274184735526837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2e8eef1f8563417352105c3635a9942b906ac2d2b0c335e60e26b4892a4191
Date: Mon, 03 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785795633
