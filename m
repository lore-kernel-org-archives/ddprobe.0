Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDA11CAA90
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740955134; cv=none; b=Cb0FIXhQFXplS3/c61Hj9mLgUwFZ5CcbVNM1ebBg/XrXOYXS/fFARJbYXEArc19zcTkZpNFILcFQUKJ878xoaDGDKH586C+5xOLEtgzhg02m5+6wQ2Rzsbt40NaRSs2hQtQ5sQZkx4Xa0JBCeoGnIRf3cWw064wResucsSXgxEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740955134; c=relaxed/simple;
	bh=BppWrcFv63GnYoji2wWJlJmA9BolU22YuyfhYo74ftk=;
	h=To:Subject:From:Message-Id:Date; b=vE+YbWP9bmbVNanVouyYV0kGCSQi2PMGzi5ZjdWkBtq5ApJhkWvwwcXDdgNBYiF/9GnwsAUeGUizm1+DyCLWMeI68ihzJn+knfPArfcp5u8eNU105lh0lty7xLLYz5Zvta9uRUWdhFSHGkZevgDE1PBzCzklNEVwfXSBeIAUOeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nc2lieXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nc2lieXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF635C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740955133;
	bh=BppWrcFv63GnYoji2wWJlJmA9BolU22YuyfhYo74ftk=;
	h=To:Subject:From:Date:From;
	b=nc2lieXnV+OSNusZg3djjuWQIVH94QLX9sGpjMdTI+DYd2P84pz6HLu1qRzAqgUGb
	 Sout5H9Yo4/TuP0pcmdTypCknE6UZdlgXF9ehyUsvPk8SKMQYBbito8JbwjpqRD7ct
	 RH03zgWLnGlaEAQC8lbygkZmYHNYcWoBdxgmE6bAbizcSJjZvq5mjsbh1KYL5jE2Q/
	 FBpHORfPPHSoAhskkTJqOE6CiVy1VfholqdOBat+sF+ddN6sGg0mvYUO6BFAvaxf32
	 9h/yvvIa0x5QhhZjv8uC3mCy0vR+cV5Rm6Ygl0a8fIUI+5N0nupsBrxUvygS6B60k5
	 9G9qQVpTvzaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98193C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095513360.5694.1592248365148637384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08aa234bc71437691f88ea4c5100599170e4127348805fcef5c9b1b864df5f3e
Date: Sun, 02 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740955133
