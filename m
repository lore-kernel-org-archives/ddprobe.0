Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB29F2C031B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769483033; cv=none; b=U8vUOPu4GXIxcTOLFSEVQWA7boEtk4XA+tm8IwWDO/l3/Ii3x+hbE7hFY8lW+J5/roedB1K64YtwakjkhbObKinUxM0oOjdnzL+RiJFNKPglMZBvbSYS97B4r90FcyeNyjqtHjn1YBSCP9JuR7a/5ujCWwIYpbl6GyaaQX5tmpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769483033; c=relaxed/simple;
	bh=BC+5MpOj16oPfm+K4koKufrXwSEzzzXZAeu3DCPiQRg=;
	h=To:Subject:From:Message-Id:Date; b=kGZRkqpaA+gcyoGS5IqTbWToPOj/hbnLJwmrRpS5+bZocaWWPoJFSOQj4cZ9xdxRPyO04tcsPwIJOgmZGvPuEk2qME6JjVhHTlz9FFtkj39qMGcbT5nCht/EOQolBdyz8EanJIJ04dWDztwOromOmp7nGX8fM2T/2o8WeT9ikU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7y7+qQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7y7+qQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E57C19421
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769483033;
	bh=BC+5MpOj16oPfm+K4koKufrXwSEzzzXZAeu3DCPiQRg=;
	h=To:Subject:From:Date:From;
	b=m7y7+qQq6Tq3m3MXKmeLzhyRTUP0FDVin2kVf9Dn63d/xcbmVXVOOv93Dts8f/XY0
	 fy6FcBvWLxzsV7r9M8tyhp0EJRu48PCvoCAGJv7CSed3pKtSONRDN4qcOVHCvtktCH
	 mbcxz5KI6GRnbhjnEA+pokN+g/TmssNJMZkSBWy9bdgJ8gGrGivPMAlhJa6ZcTaTda
	 whTQFqyaCyLjnPVQSpeEG1/QU2DLKMQp65YDaXIbd7SCU+kzSlvJdpmFzDhyya3DVO
	 f7CLFBAQ8vEszCEik/4ODGrNMt9deIEnemVUe2u1ZDjrlisWA7fgkMRdrd284aKpBS
	 i4WBZpT9OXhBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C8D25923
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948303358.21152.12869097236457419913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4f9d84473735b440d5a3a7e0d2853d7ffa0c3ba742f383295b7dafd009fe47
Date: Tue, 27 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769483033
