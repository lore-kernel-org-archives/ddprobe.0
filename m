Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8B4221733
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745487594; cv=none; b=raUVZD/kZRSqWPbXGozxc2InfILcjbo0UGna5SeLtKNxJyXB6aqahKFQUdRbrQRxEjc5J2O31T/cmS//EUfFOV5zxLdIdexGVAKAa849KWZxeNfrsZatPQMEbHfWoGDy38rM8RgbAmT/Y70W3u2dxwozDSzVf3bS3Jb+oe316Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745487594; c=relaxed/simple;
	bh=Xuo1vagtjaKv1tETG9pUPuAyiDVErPO6GOFEeHv2EEk=;
	h=To:Subject:From:Message-Id:Date; b=BU7UeKAuSt2AwribbdDC5HvsIX0zTOYw78avjob2AKeVe+3E9bslxUOk1wkyFHp7I1e4/iy/ZD7XXWNXVMSRFMBUYXpmwmCk7Varyj4od/V3ta+0CBtQgGUsuM22Pm5EOd9doeoMPIS++TM3/Hgnx52/TpqMdMnZ/I9TVTfUxDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+4UEB5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+4UEB5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D16C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745487593;
	bh=Xuo1vagtjaKv1tETG9pUPuAyiDVErPO6GOFEeHv2EEk=;
	h=To:Subject:From:Date:From;
	b=u+4UEB5dmSn/KKyoIO03PXeM08dFs7AJzE4DLtMTUE+GXISVNrrT9Jal4m8CDZ4qf
	 dnFykwXIniPQ7GFMNKFyf2hvwePeMVF3Hly2g3/TGhLYdivonArKAHO30v33y4LSv/
	 VcjMtjfwq+qphl7eygweg1V79ogUByBekfV3B3saa0/FlCh2+nGsf6lDE400MNkTfa
	 45iQBBDoU1JbhNRDMko4AxjHHTnP3KST0movoNd4Hvz6c/giFjSP0Qzrpt/Axl+nXl
	 sewPARwzRhIAIR5COiT+lrp6dTVGGUq4zEChn98gxEVCYej/bsrxju+us8akftcH74
	 kOxuVSbm7/n1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F572C369D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548759357.2239.3342381933147596144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8dbab11a60352f936c460a1da331280233bcc92452aead609a8c4b951de85d6
Date: Thu, 24 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745487593
