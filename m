Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F511A6829
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773236694; cv=none; b=G9LBNoByA0JX8oGh1jtuIIOPNHsPreMCrNBVyERmaVuhl8Es/BwIjS4QDwlghArXvlTV184umFGDVGSl0NqAOZUae+CUx1cGUR3gFtYW5GIBG6Hh+L74TiJ5Vt40rvyBv3noqNROPOGPaZVzqDgvFDd27vFdz+KOmQBD7mBOuQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773236694; c=relaxed/simple;
	bh=IboZ04wcoWJ1nzfKCrjocmlKLHL1V2o6ZR40IEtP4iA=;
	h=To:Subject:From:Message-Id:Date; b=kVT7FkrjRBM8g99XSdgocWd1igpZKakw9XRapiz46rKJiCUT3XZWs5+mqcq/d1O9z1fCdV+HN3QBKDsyvApCvtgoMfKJypdTmMldki7CETkYU8Kbz2TbwWafra5HYec5l0GfoAZVzTtJ8RtYzlHJ2JxXBkLG0cup7IluLdtdZjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLqsrlto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLqsrlto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42EBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773236693;
	bh=IboZ04wcoWJ1nzfKCrjocmlKLHL1V2o6ZR40IEtP4iA=;
	h=To:Subject:From:Date:From;
	b=RLqsrlto5AGxJPArG+dtN5yRQE3uSAVxI5alpnVoEDTsHGptlvfMa81TqgJMr8p7U
	 hBbuDzFNMkAdXHmKYH4pu3E7trN/uNEHcd9stpovQUHrEwJy5gGN/E9z24Xu4kCIVO
	 +go5DJ5jX9BVK4RsKu4cbj1nKPPnJiB9XOp16XaqA0/nZ8aPrRwvQFBmVocbopkDDx
	 vO5T8iSmD3RUqO0mgyt0hcsdSfuBtmssScM9hsr/NsWEi3uuB8IOKJ8sqVYW7KpIYz
	 ZDtIHLbKk7Uk0MHA8cjEP6w4Cww8Hgn4UNmHguybNUuei+oyn0Gh3Lj9sSsVTtr13N
	 YrHU6Dz7qa3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9292D1125821
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323669358.24681.17294296329010852840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6ff5741d199a7954c4588b03f6eb4ca8597f09a752bb485284410d7eb08b2c
Date: Wed, 11 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773236693
