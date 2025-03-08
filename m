Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D0AD528
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741456134; cv=none; b=Fb/36prBKZHYXmYBh264o98/r28qMU7vz4TbzHN0qKIs6LKeQLkY8vGXVp95NdEcTqk9iOpioP/bdS4n5dHHEK5VPhyfFJsr5Z4kabStYPuAXkrB4bExv893eNygj18HpNLvIUiqzY8/dKzQ5CesQ5zGdwopIANNBqSQgBmhOds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741456134; c=relaxed/simple;
	bh=UCYc2v0N3UD/5K0Fc74n5+P0+6RoIvMVJETxRp3RvJk=;
	h=To:Subject:From:Message-Id:Date; b=V4015mKZISdJoYu/nWlj4Yl0voX/B6nJZyyit9amybwbC21+W8FVc28KPEUdfAKEO0Anwj8IMc0tBQmLV3rLBNvfb4EZGerYdKB15F0zCoTFTMI4M+oVpYWqQja0oLpJE1sx11034eFGXLFCASVgC0hD2jUZdRDR9FOUKu+cdBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF5J2G/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF5J2G/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC86C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741456133;
	bh=UCYc2v0N3UD/5K0Fc74n5+P0+6RoIvMVJETxRp3RvJk=;
	h=To:Subject:From:Date:From;
	b=KF5J2G/luQOWKsS0Ow2OiD6bDjnQREX1CVgGeKhDmjYU+oJ8MR5Qz2wXXYBhUNs54
	 rIW2N6e33tIAUOUWQRlSDsDjYUcN8pIMjry3hlxBcit7NiztIptSHWfim9nET57vkF
	 L3HTJx6/LGOZkSw9asuk5zTGXGrh15jRrkLVay1jy0ZM3VcDqWec+RZIvPOEvrpjDL
	 zdtXfWFIUfQteIoTE0ehWWwpF+FLLf1Bn9124zbea7HDrIOyn6kveoOiL3liZeTDgv
	 WCYZBC85zv/PnOTpY/QGINMi4FTAeiG28vljhR1fRSDaDDiUA2lFXY47NtpFw6CprU
	 efUBVDX1Ee1HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96481C28B28
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174145613359.6336.12038813585568339416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e644f0fb2ecbd83de627a4ddb048b608940c42f5e9783d8ca8c4e711674e66
Date: Sat, 08 Mar 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741456133
