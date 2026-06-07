Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422AE175A91
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780813474; cv=none; b=NWxMSEE+YMSalE+ZVi2h2JMLerMMB9A+jLoqVYulRh/mRmJ0s1iOvxJrkQm20H1WmeWIkGtxVgPhFfWtSnca/d4QoIvRRV8tjjso8YNRoTQtt2o1lXUolBeU3ElLviZuZox0J1fI2PhFfgBfFH2jsvX8ny86VtvNXBpYYDMPEKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780813474; c=relaxed/simple;
	bh=emsSZx9W8xXFjw7x4Bh9D4sXTIUBOlGuwbRgHuELV4A=;
	h=To:Subject:From:Message-Id:Date; b=mFQv5JfjAOlidK8VOsNEJ29t6KOorVUOPQ3WpqXM28Cb9NJiP65cKIH+K1SljkPBG7LJr5IPEBcuxmlEVBVxO5m/gh0Fhx3tbYoraCPlpaX3eYg4IS6PdSgALnru0SZFVjyfXp7A3WDBQBcD4GnzbTLLIDTNq1JRK8JPmBpksKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpGm72Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpGm72Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C37C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780813473;
	bh=emsSZx9W8xXFjw7x4Bh9D4sXTIUBOlGuwbRgHuELV4A=;
	h=To:Subject:From:Date:From;
	b=FpGm72Ka3mFGv6VTCzfUNxuhsp02Wpd+un1AICK5nlvdPOmZ9MRg1Jy+oFXCRga1n
	 q4yjLSvhOwPsOSBwEZiIygGe6H99WJC+e37RGTkC3tsFIRive8gc1TP08Ws4smy1H6
	 bRJbbPKNG1ada+lB0Jt/A/FdRMOEzltTvUrviXp82HxYmJhsDC23xaye9CRFPfRBSW
	 aRfHywiUFM3Bqt6HpMte0SHxfXhXAlQXEclHz6Gcen5ugAcAAmhS33Ld+E4veFlvXf
	 lR9zaxLvbtT6dDlJOoO0nBA3kS+Inuh4blAhE116rCITBzPDyX+hm7N0AteDxm/PXH
	 UDETMt3fKKB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEA0CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081347368.27634.385651836107833342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256978117a0c75623cbe5d6024787167af06ce8962e961357bcaee2c949aac2b
Date: Sun, 07 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780813473
