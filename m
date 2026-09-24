Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34912416125
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790274034; cv=none; b=fIYpXCC/vVs9k+DM16OUHgtdH+u6MmOKMicgC5lix1O6iAt9ThyOPeMbUbhkGSsAwL3zPSEqaa3IOECorwsKLJ1QuBu6rByWtWNcs6ZBEB/CMVhrt4F+KP12H1IP9cCGFgH9tULBBkaMyomVRQwiJ8BxyiCpFjVovBRyBNJZ+is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790274034; c=relaxed/simple;
	bh=Nd2Ux09cUHdlZqErZCEPC+XC/L4ns8IC6n0ySB8Gw2M=;
	h=To:Subject:From:Message-Id:Date; b=MvYcN2RRqi51/kXFMFTjsV+LDIph/u+SxEsqHlXwAx5HTL3W3Q7uTKfuMLLK8ZNr8zbVXINzsEags/oTc5xKP1MP7iLq6crRRnTX4xTGZ9nYpAKaVFlLs3AXVWrjDcHG5mRTBd/317EwYHw5R3ynBIammB51ELPwbw+6NtSmrYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZp7q3D/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZp7q3D/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64B6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790274033;
	bh=Nd2Ux09cUHdlZqErZCEPC+XC/L4ns8IC6n0ySB8Gw2M=;
	h=To:Subject:From:Date:From;
	b=hZp7q3D/KhzKyDpLoypDG3XJFHa0nk1pMMH95yrK2KN3imRSIQLiDwiPF+3MH+/eO
	 nyXBnWQjNPI+hSLVMxowN6qOmpb5NF2dfCgLZ88zEDLZb1LbaFwNpOyyEmwuaBtIL8
	 r3vIFMteRV2C1zeB2A3PYvchClxjMpUISRzMypggY2ZYGJsAtmmcdNX2/eAUCyZ9fX
	 RUXg15daWQtp/+Ztz2TOCPn6IcwkV2dOJ3ScMGM6tqNOhv5oKz8Ij9oB9jsziNkgHp
	 irNAvIQOSJyej+YVjgru+4lTt88nn9z2XsCT8F+DOL+6NERHqhC+8u8pbqsmfZh+zu
	 KmcxfxwwtZx3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07ADC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027403371.29276.4251361920110723550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ed780a49eb57f16b0f4ab3cc716f076afee9c5c2a52194a7b552ee37d71e3d
Date: Thu, 24 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790274033
