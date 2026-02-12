Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0D83EBF1B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770939294; cv=none; b=WLUCFlwaDclbKh6iLqFAPW44+1JunVycsr7APeKxfkS05etfOeK/jhmOQtE+XpAUZ6vbslo18MGkLpWdcgJLPbHwDAFo8QTp9ginoRUdLUnOrpC4MJdhbnm2NaOFmjU+S38X3XmGn0D9zkZpxYiFF/wyKgNtzGLZL+8bRVJ3GLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770939294; c=relaxed/simple;
	bh=0zE9X9pYP0gagjDIxXgpDRhRnxKWfDlLbYvv8i/sMF8=;
	h=To:Subject:From:Message-Id:Date; b=uPXc7amWyDkjFGLiYC7bc3e9fZrSQ2ievaQ1CuptJkRGf6qlu3dwnlcw052qtHZ31W64feEBlsSd0869oWy3sINhV1DGrpzg98lWxra1ZxYh+EsdO/QlOVK3auz96361M+JcywHNIIB3D9jFpWxMVLf3mBa33J1SkGx2w55yM84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNDDMMZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNDDMMZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FABC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770939293;
	bh=0zE9X9pYP0gagjDIxXgpDRhRnxKWfDlLbYvv8i/sMF8=;
	h=To:Subject:From:Date:From;
	b=bNDDMMZ4zuVRStEEGsZinmZkki8ELx86n8PAXTBjZ7m5Vvm0Ra2uKgnxiq8/rRvaT
	 2zhkgKwpmlx75ZO0mdO7l7/IS+vxjZFSE0sH7d1zIurPpod1UD+iOUNmYdKl6PjnJC
	 oCXPekgCg6XEBJJxLLIRVW3d8t/yFEDx03vjbMApD16ld1Jg4HAC3S3pH0Wh3UZYkS
	 3ulo+ULdOF1+rKtarCoR9vg5RDl/VtT9ztrItzntPBdhSkAzfel8kPU/1mu4ZVRTDA
	 B4VJfqRqK1izGpSWK52EO7ZE01P4mQaN4RB9zJ0n2C5/mx3SjYN+m4PffgTUYJ8T8X
	 6YyuSfguGVNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32DCEEA86F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093929366.6771.16599240317962216760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb82ef70640b9f9dce03c1ae3a3c0658d54d097d49fe7356727d9881d191543
Date: Thu, 12 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770939293
