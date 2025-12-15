Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237957082D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765808574; cv=none; b=rDVrGC+goJlX6nWFdt/o/RZkkNDwIW9XOd7Q7RFujDlO3RoaY76WcPYNWrTSqzmccygVNxT7taO5F98QrCP4Y24wowN55o4shZ/LeXQbAJAR/FiPIcv+6JGnKUYkEbLo/trPCREvvea143JbyRXVZyRGVx+HmeW3/kUezPQuSwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765808574; c=relaxed/simple;
	bh=KXcAhw4WDE9gCWTkyxBGEU4QygP3gC5Nr/ICq12r8GI=;
	h=To:Subject:From:Message-Id:Date; b=uNk2v66G0bI7iEqU9j8N2Q7JSpggxJCi43c+3CQfoOXBB86zDSuG9qmPq7Chv8NBqyOh8pwMcN38CT/lDddpkWQQrtQXYNOt+JUhpXWsqYOSBlPvn1SDH/TsRAbX2LUVjDGwe5XZUzwGnsNjKbQE1X87szcgCiSgRoyp+minZEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/WU2lCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/WU2lCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37D5C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765808573;
	bh=KXcAhw4WDE9gCWTkyxBGEU4QygP3gC5Nr/ICq12r8GI=;
	h=To:Subject:From:Date:From;
	b=T/WU2lCoNGS/R4X269bqlXvDLu/RMZFpZp7VpcHoyJUWMq4i8aDI/VcCuYCX99spv
	 QvqIgC/dZjldZ94xhPefNy78uJsyDP/EKfkwXkBXd7/Nroas2l3JItXv6Fj1/nn/Hl
	 Ej94GhVMyVdDhJOvktG1WFpG+p/OQlDjkHzR6g4sXQdpUXWXmubxVH9QIa4uE7B4jg
	 abdCGFedpMgj07IBXLI55oEx5GGlRCIFGLvBja+tJAWlTiC/UcHt+c+IeAc58K0sDr
	 ioupW6WkKsSWmqqZXnbvk89lPHbapNdULCg2NTLpV3Ukf622g/rY+mpTrZ9N/zcF/p
	 HjwuWoDY93mjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1741D5B16C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580857364.23844.7597023688088739166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494d8350792be5d6a1ffe937b994028fcc13444c7884fbee2afade1f7f365f10
Date: Mon, 15 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765808573
