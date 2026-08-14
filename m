Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55FD486621
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786722635; cv=none; b=KTY1WIHmzxDbXCYkhJVrbuYzrMc03ddMTV4y+zKzR+hRJswKFYyDD8RojDHKS/30se8pEfaFS2CGHr/K5SzhGfiQtglods8m7rL6VvGcldodjFv/2wuo4eFBN9ru4oGycEA9BpLL0RquBgac3k8fkIMKCVDL/xS2XQeyIPLgeo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786722635; c=relaxed/simple;
	bh=wYVLfJLGfjcpC0y3LUbbChdyM2qvC7Y4U79hHw8oq+o=;
	h=To:Subject:From:Message-Id:Date; b=fh4eZU0DnmQLZBgZsADdhGkNOqk09MVc/QJx8DjrSIZDLpRB6rKwsr1/2/PrvKAdsnEmJXI82ct1Jio0qKch0IyOOrOvugFaqxp0t0XWIAbnycMPy4Cg/iJ5nFUhXmJkfE/focJCUSBp2fvKYsbKm0JxacYAnHv9zPJgvYZEQaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjNTTRdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjNTTRdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB44CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786722633;
	bh=wYVLfJLGfjcpC0y3LUbbChdyM2qvC7Y4U79hHw8oq+o=;
	h=To:Subject:From:Date:From;
	b=jjNTTRdPwBqlGTgkiYYE5jEfPc+T7d/+dc7pcvvV6RqIMk8ED9v6BOPFg6ZDllXrg
	 jbrfBnzynIofpolBPjasqxoKzRfQGCEMY9cxb7N24EtyV3oqYds9hLjqDBzSUaObxv
	 4aBU7p1t0StJHxPS8malmL6Kd6BDUK90cOHPNnoI5U9qs6Z10WGnX0mNmU+7SiE+GP
	 BLhaNv6ox9XNUqPrRdX1tIIE7Cq/y1IHXtJ5OSB6AuZJqTreuLMu+bCR798vxF47QS
	 g9esWOu/u21HgqqWlOLA0ihbx1l5isol2BIo2h5fPthLa5lVENrxqWJYR6mIRgOYDB
	 /bi02C18eMKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A861FC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672263368.8095.13245580078292711051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ec2089d0165ca359a326c401d9f5d93bedaaa6a90e7b98fc4a9df670b85d69
Date: Fri, 14 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786722633
