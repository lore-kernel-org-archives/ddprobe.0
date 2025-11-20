Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D75216F288
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763602314; cv=none; b=mo4wf2FHJNTobkzW47G0JGbPoGkxrjpaFSQOhJg45kFZrV0NPXMahmg7cyzhq1gtaguSKu6Ow570GdzmTgSXBOi/C7GhgCcj0Zqq3EKqWFjR5T3jBaRWDRcC4ye/k5hVK3ay2sXvHQT491Y7WRnDE4IH9L//7EM6bcS9TkFRRvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763602314; c=relaxed/simple;
	bh=DDhsMeDd2JAJcBEtlcK5tLBb7MnSLrcqFqJq907yY2I=;
	h=To:Subject:From:Message-Id:Date; b=nL5ymYwgk6nKOdVRTL8O652smboUGGi2UC2ozAB0obovoeDDV6iskp0pJr7gMyBZNJkrcYo0qik+IsEuiU7CVhMLjgD7B5hy9ti23drBNTI4zwBueqGBHVV2G7M4y2Mx/Ob+w9m1T0eXc55NqcEkf8Vtqx9hxNMPQGr2n67reb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy574u8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy574u8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FC9C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763602313;
	bh=DDhsMeDd2JAJcBEtlcK5tLBb7MnSLrcqFqJq907yY2I=;
	h=To:Subject:From:Date:From;
	b=Yy574u8lM3RCvbONCavu9wGFm8sIJ04l4V7Y3mE/euiH4x/a4J5UPFhkjB7DNVVVK
	 OWgiBmsiuQENWNNVcNpcxgyv+ff+MkTYH1kMNaglrk4bszWnOTkFS1PKKns2T79D3G
	 FqfbXOzsyAn1hccbCBgKpkabPYqCEa0fMl2MmI6mKzuxFLluERjpJcTlHu9ZftrCj9
	 gH+ytaU9Fr0bzACw+doGdgTdmIOAXkMDLIe+2y4bENtCH6JXSIS+lF731rblmtZcwG
	 JcW8MUuA3BP2w+6sOKBwXHDKheoH9Npq/gkRy7lq4x4PJNP6JThJaCelnTT3cs77i1
	 Y7/F4Hk+TBidA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119FCF58D1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360231358.29467.13833414930957758175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d00830823a5da9409174546a4a42d1e91f3a34d34da3cded1e138ca1328e175
Date: Thu, 20 Nov 2025 01:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763602313
