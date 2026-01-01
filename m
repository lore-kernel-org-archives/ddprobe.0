Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB59239E8D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258834; cv=none; b=D4SoeMCh93apAYnljrYJPcv/OexdqdDzlhjDdAcv9pwQ+LAsTaJdzYqIV1d8HZZQK6Pf0IxSBiH25AKtSnDq0lTwAs8OxIsdEuwhHTTllcveJ+Myz0U0hqnRcWerLj0MjfanRNqoHNd/uwzBZ1PzkbW0By4ZoUQSTmRHkQm645g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258834; c=relaxed/simple;
	bh=s02pm+q2nFYmhk+m6/tPx2AjTL6j4D209Amcf/7GlOk=;
	h=To:Subject:From:Message-Id:Date; b=XPOshsWz4o+o7kblWOHpV6pS3Jgyck0IFRS0HKkTkgqNHGqJjcfm3mupHn/ebD0gUnp7+W/u2ZwdreOX6lR2kxa9RbOzbAaLwMx6HQZGrgiBY9aQ0Y5iEB0nIwnlg1t9IPexni83q7FfAumxP3pq23uddpsDNDbpIqxPjgqK/U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irzy3fUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irzy3fUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6803C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767258833;
	bh=s02pm+q2nFYmhk+m6/tPx2AjTL6j4D209Amcf/7GlOk=;
	h=To:Subject:From:Date:From;
	b=irzy3fUsdvsN9CSvvQ2cfbEl3wtzufeFv53NNZGYYjaUv7ncLD0pI9oVcPShgAzFM
	 nu+s6Vt62c9hKBeF7/TsLYMwpnDdzXMaaqgc+7HscQGP44M0pC0osdgxClBbi4XJgH
	 aB75hIt7RcvSr0xOCbbgjhMN1cTcs63Eap1VHWqwlVYPc4DIV802PJ3EhFq2uMkwNA
	 fml+EqFwLjozOnJHcZgGZnI6v3SQuF2J6U06/Tv63nKfSwScWeMNTuGkM+MjYW6aYY
	 HcT53qldnsrfDoCtzXQHgpgwaUvHGn5uHyjtX8KfYDfmBDihlnPVNbtGUcO1ainL37
	 T3DpTm3Q0rcXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC5EEB56D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725883358.27225.16842313701020575578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2553f6be28356c2de65bc0ae40547507192570c4c794b628ff8ceeb3b6238af
Date: Thu, 01 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767258833
