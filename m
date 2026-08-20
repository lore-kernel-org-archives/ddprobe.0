Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0A2470436
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787242234; cv=none; b=GnWxE89H+i6obgbwwKAb/EcCsJUpjb2IjoqvsXPiAM8bjNZJbxRtEAgReyByWaKYhv82jF58rA83ZXHds3rYuP/qPxrTqq6S7jrNEdxFfYWEVuctpqsCsJ9+l0mzBxfZiCCGOV6M3jP+aKJsUHAp9fL06MnUd7etNDZgEKA/PSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787242234; c=relaxed/simple;
	bh=YGXG16fcwfyte5e8JkR2pHA2pxvUOFSHC+hhCwPR69M=;
	h=To:Subject:From:Message-Id:Date; b=XMtTWDR1d2VJdoQIHJmdlMs0147kzCEcsXjV7cgGcLPhNKIJgUCclsurJk/oSmVJrw45Lz84+I/Cv0Fshikq/+CP6DHdN0TbVvuD+UL6kA9foDyZ28y5JfN2crWHj7KMXoWquamz4oQToJKIG4/2R+Fg+RzJJAPi41G3g2c/O/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu/ruoRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu/ruoRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90DDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787242233;
	bh=YGXG16fcwfyte5e8JkR2pHA2pxvUOFSHC+hhCwPR69M=;
	h=To:Subject:From:Date:From;
	b=iu/ruoRSYDxpB43SLO61018CNnUZj9HrnBhTF7bk2vLOyS9/pwdtxii1sjJgIw2z4
	 BECGiO0NeeQbH4VVwVYXtwObXOudIXsFeQlrlu5ryPLnARm9iN07VStkDC7B3cbA3f
	 0GJw3ZMW6AzYNHfqIXrwBf6kSjWf2XA1JN5AM63pTuk57McacUSkAGj9fgLjqN7CLA
	 SxbvWkwEFwmzdnoL7l/pTfl6E271qh1/pPq8F+I8hzyr8wqmaF5EsqHCGmQufkZ2U3
	 OgmtKG1aHHo4dteO0FZ1Rt4xt1/UYsEAJdWZ9dQfD6V90pdz6bu7I3za2xd8kLJ5+w
	 ZUnO8d4SfWGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1489C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724223371.23303.7716651103686907608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae81f674b5747fcc1e1f4793c52a6c9ef65138b910acf616c606c01e0147b20
Date: Thu, 20 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787242233
