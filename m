Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254AA208D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760774394; cv=none; b=O8JI0qJnK9eQavdLWHrsJy1Q0z6AU83IqOao/qO8E/VsIjQ3B8WSMOI1F1MEr+5Ss090I31400vZW/jEmfxB3oKZ+814yWez5Su66acW9LwMlp/h7499JQsQnec5CnkEh+rCZKY6Tzyzwgl4wuoc7iAQEvFaENYNS2TLdrv12YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760774394; c=relaxed/simple;
	bh=CVzSKx8n8i8oPGTTLAaCfMu6fjsCHZnDo+wwjh00INI=;
	h=To:Subject:From:Message-Id:Date; b=mLYCbBtZY1n3sukghcUIlxSjaxwNOcUYf45Tae42b42qEGXV9xpUJ1ho/C4kXHMxpkyX3C/rz4yip3uA+BNVEhzcKDV+O1sZ6dv4bwrvIVcCJbEp2JXryIZ4+2qEt+a1VInWayrkW8eQ2IuHjA2J+o25YAkoc4JEcO5ykf4NxV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cglbk5KG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cglbk5KG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B02C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760774393;
	bh=CVzSKx8n8i8oPGTTLAaCfMu6fjsCHZnDo+wwjh00INI=;
	h=To:Subject:From:Date:From;
	b=Cglbk5KGXXWjyaFF++aSE8fHgumAI8n3InrsaJu3FSkrogjt4ysrswx4a8JLsE2p8
	 U8Hik4wpU7wnVaTiQlarnHqr7og5+FbcJo+hxG39lfpqrlPxpcOtpTeJ9wuOIMQYq8
	 eqs6gXvYdENjpQ8NoVKP+0tVKHQxWC7JEajTJn1AGgjNgGazJLrQG7/daQuvKRiTH3
	 HEM+BsnszOStm62Cde4VDFMDZ5YN0CccrrOtH1woXlT+BQkjQ3rKFBsaGAOZJZjm+1
	 DwLNkL+MOZkxYWSw/vLsnNjfJWkEESzhJoNGt9cVCA+2fZY0rpEyXAqZOHxMeT1i68
	 hI896gNdJjnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9341ACCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077439358.9330.561083216033083447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2414a9855c62b567c8595e91b7a81795cea5bf7a33cd9022da8ee5241b16f9
Date: Sat, 18 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760774393
