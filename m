Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE702D94BA
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782936514; cv=none; b=CkYf8NOYwdSfi1VLu1oSLa1ekoFCST6G0ZVGwko52Of2/YaTT7tBfU+ik1dT2poUpj3fsDMMEcJRCjewcxsI4yoT4k/43GlNVm7l89Wo66GatMtpcNUefrvvC33/hMvmQmWAPg9s3otq4QBmZd2SZJPcMQUkSmGToEnzltWSXqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782936514; c=relaxed/simple;
	bh=zOHI1GfjL+T8ScGONIQSie5jMAkjkKzGdbgtW63j2XI=;
	h=To:Subject:From:Message-Id:Date; b=nIhi0K/AbWpxi5pxzCwpDP1iXDuOVOAwu8KrJHwAzdRl4gsY2YWN0dRcufl4YNDHd1ztpstpHlp07CFqIElINxIlEl780mR4GQLAFq791PNiQZVXnlsBBtvhtGO3+yIJKVjc3zowFFwXbX5lOtjYVS63wDEXs/et2ylwL7X6Gds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxXLdl/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxXLdl/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F17C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782936513;
	bh=zOHI1GfjL+T8ScGONIQSie5jMAkjkKzGdbgtW63j2XI=;
	h=To:Subject:From:Date:From;
	b=hxXLdl/PnIDt0MARQKE3EuPURfbDdmQGprg0s7D5rNxXZ6kEbGLfSC7di/D9OzVWg
	 UB/1pc4OqOLNoRZ0+vFE8mWNXBXksTG2LZIK91lhpombniuLtj8faMU4j0eksPTdqN
	 6MHC8s00+AX38cB3R6oSW2sJcr7IWfMfbaB50CBFHGer69sW2WJeOrA7zvSDg4YVh3
	 V0MRxZtiXi3KBF8NLrfwktuRGWc6EKTIh+fhawk4+6koUlH8KjF637IQUmuZcD7LD9
	 ifpeAcV+nG/zzB327+yZDCX4tQ4OQS7aSOyosLt5fG722fRtpQZgyfF6Wkrfk/G3cx
	 VLYianElkwasw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981FC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293651368.7621.958582864976898706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 065c2ca162ce1202ec4e918e6fe1926755dafdbda713d611de15936537bdd631
Date: Wed, 01 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782936513
