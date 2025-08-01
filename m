Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267B94A04
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754076594; cv=none; b=hP6C7xyzQfhulhqv6HrxxoLnorSLNBRqu7DuflI7+PqFQ6vdD8Ht/ICO4cFkNDHK/TwOLdqFSePVII/tcgrDTVuUOYymq+j0SQakH9Qgsa4Jf3u7Y9bMGQNJrgMlYOB7plukQlz1xhNe0nHiPoqg/IteMtYBhvj0zBPYEtEZ/hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754076594; c=relaxed/simple;
	bh=Vw8JFt1RNnguFuTec1caZV8SGiWvV5VyyEaxJ5qbxPo=;
	h=To:Subject:From:Message-Id:Date; b=TJHI7innpByxhTPUSHr2kZPmjwT/MEsm+K7Kx1JJjGUZgsOUAhUydq1UVgf9B5Q+Gkr2C/+fop40sIuFJCbCix0Q04yDpL1oh1i5jo+PXe6zr+kuNIDO+avt+qtoHcifM+J9Vz4QUoHq9X8RuxkZTcG553QM9+IScq2W+o77gLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Whi/8sUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Whi/8sUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0686C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754076593;
	bh=Vw8JFt1RNnguFuTec1caZV8SGiWvV5VyyEaxJ5qbxPo=;
	h=To:Subject:From:Date:From;
	b=Whi/8sUHDj1rcADPPqYWBZmZfjWFP+iqH06pVR4fp8Wo6LCf3xKygI3fYs6g8WeqV
	 Ymt6SdODZAzzds11k6VzPU5RPQIGieLXDT/dnJBpCK9YiQF6D7tgdG8GT2Zb6SR/EY
	 mhZf7c4c/c6j5yibCmzUXHsi9Erpprb5r98gWFFpeF4GDwtjWrfDRh4g0BIvnTTFWe
	 TpiBQmeGDBNEyWJVFEPowkmtewgv3swGyaGzhMXwZRXjB/EOjlLzTatAScOiIWcjA8
	 yaUgElIsOCxljRmFCx+cZ+lEH6KExr93zGeKNuokes4BJcf4gg0G/u8hr/gBHs1FpF
	 nW6+TjBOgqI1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9ADC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407659357.15691.9208989980782108572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea65220f270d92813ab66c6ce1c4f87974f1d5662b437d2ea56c4dcb3acdfa1f
Date: Fri, 01 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754076593
