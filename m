Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4606637F8B6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782682114; cv=none; b=KjZFRjVrfev8+Ej+QP/A+DiW2l6/e9PWhG1ANVKViIeCCOrK/o2lgCSlfvKWyrC8COa+RlCXW7zMXCJUjH6rR02LyHFHrludgXUkpXmYShA5I0R3Gt+oaV4/hfdOUiouQbBRAgldR7iB4Pwl5x7d1uknfskHBDU571KewU+DRb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782682114; c=relaxed/simple;
	bh=pAEZDOtXTJwrSpRPOXRYzwcxOKlaTjtO68glSqF4+Ls=;
	h=To:Subject:From:Message-Id:Date; b=ABGttALlDhmVsS8ic7enDagkIPFhKkwYoc/RiKaa/ssTG5/3jfm1JraVJtPkoQK6SB99CjixP3csHEDIcKCPTEXT58Ge7SOPnjQlcx6SnUMLmyLRPyjiujawB7wKWDxeU18dPBeAuSFyAOe4kp5+8w/KX/qTU8t2G0Vs/HQc1Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4DyeI+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4DyeI+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8443C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782682113;
	bh=pAEZDOtXTJwrSpRPOXRYzwcxOKlaTjtO68glSqF4+Ls=;
	h=To:Subject:From:Date:From;
	b=n4DyeI+GJcCkL4H0viAMchEkoG5QoYuRAI8+v4+C/VkiBTBoAflwJQ4KcAFYGM69F
	 G4+nmyVSsxXPw54AR/ssV00tCLa/7WuRct1yOd1l2eMUZoavv3/wCcrnBN0I58dlkH
	 l0pj9uYmNP9vz212IbRWfGZsCzLzBLXcrhBCTQXBdnbyFxywKsEskS3f7uL9mX/a5s
	 drNE1fk3/sYw7W0toTmv8loUPyFDF8c7fWvaCN5jkFnu472pzUCz99WMdtGnYJX+ft
	 lJQfBNQnKcuZoYKL/Zc7XndfoFrUcnTOWemHTP1yZEdGy2CzV/7KnecI3FoEcnpLW9
	 /iNtturW3eh4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4A1C43327
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268211370.6130.15243822044028809250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534c2131ecf60786c5ca99f2463f6164557994891a904ddbeca9502e863419e0
Date: Sun, 28 Jun 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782682113
