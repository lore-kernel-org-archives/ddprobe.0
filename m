Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43857480DC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792059634; cv=none; b=r/FasTSgTQ01N+WrKa6RyH9EpUCcumAGiwuA3RJSKyk2y0ZTGKFm1IryRO339ZVnANwaVJQ7VtRMYiGweD1/CrfKiM1ZL45hILOmGchlbwTaXTGcp4VHeusNYiSo0lGSforJuAwmYw0e0l3n/569w8YNvq11v4H3uKE0X8tYBG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792059634; c=relaxed/simple;
	bh=u5NvpIi1KuU2KwLDwMmKBoTBIeX47OcKtBZN+ASV3LI=;
	h=To:Subject:From:Message-Id:Date; b=HbRJI39pcYJcFBs8wkwpZdq5s6OPh+DWq0ZvYhPyNplRzLROz9IFrC6PLFx8ihc/e8ZUCsOIgtcUUg9uh2lOPQRJqXrt2iojDs1VylO/1ULb3nlwaeLvX6oboMMdXIhQcj93d/HPA1kbR0bMY43cZJZQ6T1uorpsTOEFX6LNBMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFEQvMlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFEQvMlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE899C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792059633;
	bh=u5NvpIi1KuU2KwLDwMmKBoTBIeX47OcKtBZN+ASV3LI=;
	h=To:Subject:From:Date:From;
	b=OFEQvMluHjnwAgNfig1OwYgm0duTdc23EM7um8JfZWzLHbkahaz/LKAa+CvhEpO+T
	 MCQ0Gvn1I0+/sgGv08mjJwjCAZXZXLNIIy+ep8p7VQzs3ILAEjeA8f/9ObPcmVQx+d
	 S0p5CgKfkyIvHz19JMFupxCzATfoeRrCoQS/jRMJyCuScQ8w16SsC84QlecukMyqxA
	 dxNQPh5CsyL0LPyIxXo4sB4wHTGHj2pxipNAWAyt0DRT4HCv+D8mPtvqqjU6T3K8X8
	 qE4Q1z8LCTGlvaD0BpEHVQ7XpuTcuyuWoH0ZMls8kOb94W8JBGGk7g3gbTDQElHyzY
	 AwGrNUtTW/SbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC4CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205963369.5363.16108676558587651358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae4fc945732fe7745db421d505a6998ce2796970ed00b1fa363ba7cf56484fb
Date: Thu, 15 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792059633
