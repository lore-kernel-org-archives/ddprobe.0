Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265AA1D6DB9
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752264594; cv=none; b=NzTQWe1XLJz5MOdsBabfwbAO8JYH/inuNR5ZMkpbZDQaWGU25VpukwU/Ba7kVl3ZxcNzL24tfG5+nsY3hkwg9vdBV5g8EQl9ABezL+luFt/+bJ2pjFxvHVTWMo+Ub85qbj67Pxh2kVYybZnhuQuE/EVV/D9fFAZHZMgZ7zCG59Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752264594; c=relaxed/simple;
	bh=w9T/xDvSMu6MyOIgDVNGspW+gdcfktAO8j589DerXc4=;
	h=To:Subject:From:Message-Id:Date; b=GLkjEtswxKsuRE2k8JTA2n7XoN91HxR10WPGuOgra3jc9Dfoy8CpnurbQJ4djWFkQu9qgxqnI4NuGT1TDFXEi2xnNMhTyGxdL8PohWGSg6c/Px6VhedAl288UbQtlrWIzjlMnd6GCFt+8qZ2HVGTBgL5ONJcvnZhW4bBbhLisk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmM13hS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmM13hS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752264593;
	bh=w9T/xDvSMu6MyOIgDVNGspW+gdcfktAO8j589DerXc4=;
	h=To:Subject:From:Date:From;
	b=gmM13hS+EwdtVtRofuOAQMolL3xAvlxa4OVDtWPBdzWuSBlMMQqHRmTFDMyDqIT0M
	 DTM2MVZVr1dqV1o4d9Zp5RI9KnbWsvqVAsYPouUqoiT+hDSbNucvBSbP/NcP9rpZ24
	 oMJic2mzpBTF1MrfLK6ihSFMuAUSv7wF7qnti3DRaMuQ9dV/sKRsM3Q3EMsP3pm0y+
	 veFjzKHC1mTWF0VfYRdj698oxiuf0yDXUx2qEGP2hAA7zVIRzCXzBvRU/Az8sqjoPE
	 evBDIVQQqISrI8zmoJY2U7TviYwXyL5BjscCnoA/MYXGfy75NMHCfcsBHZb/+8TFZ8
	 tb50divT5cJSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B98C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226459358.30287.5819419123174173444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b0fef5e0d47af729c8996fd282d0c7c21dbdbfc45f2d21fd3bbd124b73501f
Date: Fri, 11 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752264593
