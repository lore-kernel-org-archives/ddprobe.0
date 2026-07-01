Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064F13A5E88
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782933514; cv=none; b=My8ABuUL3f5wjUp4puUfLgn8USvkdtiU7wL8pfZq97TMKVRhVJgCk4g8Cpan3C8BY2i3IPQmrpX4edJSGWKQiDspGscwxWiFf11R5OT7QvwX2NaO39xXUq4FhoFrlROB4HQd8oKq2C+STIyXjv/cjKSUCmvwx1dq/eoDGugAIBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782933514; c=relaxed/simple;
	bh=5EyGr5wouWNRj0rQuKuCvwYU5wrEhzRS8llkHzmNLY0=;
	h=To:Subject:From:Message-Id:Date; b=BNj1AmzdSeU+YfttTfAd0kSmdWQDIFqOh3jm9g13TZx4I+a30juQ1GFkL86nj8NhahYe+6LeUBFQz7emNtieq8PfnTJ1TWJouWpxp8mhcs8uHcgKVuI0M4r3PY+20w1bbj2i6aUSzC38RyodieWmnOPqIFZ5GmSaKEwRSdp+9bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Se4LIWiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Se4LIWiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4245C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782933513;
	bh=5EyGr5wouWNRj0rQuKuCvwYU5wrEhzRS8llkHzmNLY0=;
	h=To:Subject:From:Date:From;
	b=Se4LIWiE3SuCdwnlSKEruqd6djuX/a7kPXCltdFc3ceo/RKDIDOqsPcSf05xX4h8Q
	 Xof1SG+9TMwPPY/McLerv/muKs9eIdjNu22R20R+QwYMX5XVQ7Wmq3ElByJOVNJV//
	 YSD575W40TEobhoDSR+AQlGkiOCRG5d4Pa0ldT55Nn+qCtMmH6wxfVX2ECiafBfXtN
	 PynDFcNn+xsng67k0UXWmxuJ5H5uDhpd9QBIaGqMNZ2AoGkNmhHBMdoEnDU3UkwlNj
	 /71RhRiLj7g4Fb8LBmDaWDXE4gP/bsGc2d9mFmRXJFKJ/McvHBeBXGL5RspAvEZVpX
	 gIAbXRCC6pwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E6C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293351368.15865.8266078088618675391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ca3b779a51b71fd4b1730df69ebeb4d6c4684e814eedb801070eaa11600ea1
Date: Wed, 01 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782933513
