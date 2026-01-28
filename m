Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A77334C2C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769597634; cv=none; b=e7On4QmpN7rNt03HgPbPytFqR3tW9qDzsixyCs606VeSSZZeswW/S5DwpnGrIkzXsovq4ODfgGfDpmXu9HzmBWdVTGBkuIWRVCFT9FXSmMPekhjFNKiOjvAjqOnxxsXwQmEUFdJowNwMJItXVBUdV0FrdxU1OvFWXXOlTsRkSCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769597634; c=relaxed/simple;
	bh=EWg811HGeO4YReY59/xf17SxODQOsKmz+lxGUlzdG+8=;
	h=To:Subject:From:Message-Id:Date; b=LDtaH8E0ONqKscezCPkFyPG3QfeYtVqFmfkWGc60HzfxpyXwk4mwI618DYAXyl2D4Bt+YgfLCTZR4+9v2hoKBRGo6x3a+A3ui235/0UgPO0yaUahIlLpUPdl9d3is2L7kUSxzl0WcOCKenLriJX/hfjifMSoii07KZbpIlqx9qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/sMasIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/sMasIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3724C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769597633;
	bh=EWg811HGeO4YReY59/xf17SxODQOsKmz+lxGUlzdG+8=;
	h=To:Subject:From:Date:From;
	b=I/sMasIVp0+IhFPzUjogyFFUEEYhW7GBwTCqZWhKMNos0AvemZgFu8BCfGlrN953X
	 FZvmcka6O9JqGWqvY82O7PyKmVRdEGyYzfXYUaoN9Ylo4v3KmrnqQMAKjdd2eFXTTu
	 zINzgQ3Rxi6wEVs8Fy3PFymS4U8OJwZ1QKLBb9RMHEQpzcUwq8d7scX7ulNOrBk5Rr
	 K/bKLgRTm7mDRmAWOW0avSBw4lHNuDTrPvp+Frna0hIVqtOjpImYbZPJZ+y/1boqXy
	 U3EAoSEtSdvI5SxTfDC4rUtTg9YXiEO+IqJk/y8QOJYK1R92wc9nB775w7JAnec3l4
	 SpK4u2aX2BLpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91022D35693
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959763358.6563.11091028996805564594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6e75d9d89be9b10ed0af7a9ead48a5f8001d295cbf84965e0defd33a4ea08f
Date: Wed, 28 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769597633
