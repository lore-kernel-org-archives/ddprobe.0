Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515EF233923
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786185034; cv=none; b=jEP9y3mHcyYDjGZO+eZWQPEXMSubdt/j8m7MCFXs9xAHd8ZDkONmlTZTPykJypEN1V7MMvXH0TnWlJCTOYPsvSzlMpRplAA0GXxeYf/pGkyNZbFYbdIRIOqXpVGsjp35iAJ+JSqCUcsoDK2SDdaShIfs1LMD0LBdCKLswE+4cMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786185034; c=relaxed/simple;
	bh=m8fdbczKKPRCiVD3ICdnW+rV4Yy/sXdaRzRPtkDgUuE=;
	h=To:Subject:From:Message-Id:Date; b=EV1scHuVyFLIozbptYaiYv1R4s5PkvEvArFk9YLvWsPgGs4tY2xQz/LRITdjkAfGKPdp5zlyPaUaRmTsf/mv+zMy7PxBM6JSpNc1k2hHoArM2y93urwg4NHCa4OpFuZMRLMa/TymS58htswF41IYxStKzEfQ2gIQFE+8DMzklg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otmhsIeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otmhsIeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D770DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786185033;
	bh=m8fdbczKKPRCiVD3ICdnW+rV4Yy/sXdaRzRPtkDgUuE=;
	h=To:Subject:From:Date:From;
	b=otmhsIeHYwSb/UnTmnc+W5sDvi2Nky5dXL1LBSGj2gDeQfvUeqKRYnzECkNZMMdq6
	 23VHxWPHa4jz5asFlpMIc6yTHRospIZtRKdXFU2TbVc3yGGn6P8/4DGuz1zisi/cX4
	 64xZ4bLs3PIAZcN3pl338IN7eRFloCZi4dXgsFYI7iSRjGQdktrZgf1pvwA7jVx/Go
	 GnoCOo5lJ85v+1gLbCOeXa/ouSbnEphDHB0eg7ScWupgE92fsex9dHx23XmBvb6ZuM
	 Bf263d8DJaYDhRFR4R5JpeKEC27jFaXfYtVvrwvHGqFXOPmqQKOvXR/f5llQiZJALb
	 UggX4XvvuRiOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14FCC5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618503370.3064.16370470508076338041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67148c4867eb1163214314033d017ef41b69295b20d0d78db09e9facc0496c44
Date: Sat, 08 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786185033
