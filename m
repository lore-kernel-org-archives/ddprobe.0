Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE2936606C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772813094; cv=none; b=La8rCe44SQ5p463zACWlmAfaHwFM+WC1WN0RGAVrzVI6KhH54j6Ay+UHdFoTgjlMLZNjJAqNqSilt4FvuOcJefOlgHx0qsRE8DrBZadum688gAsmwGsrytIgd7b3PX+7TrBXUwcqrv9Goqhwk2Etmcq4mwtd9z8Bk4Vcn72G/UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772813094; c=relaxed/simple;
	bh=KjBLcUg4js9+mv20DOukgaVWcFASijlewinrI2JzJa8=;
	h=To:Subject:From:Message-Id:Date; b=BuAPuRLAJkUNDsXIBaJU9Yd75rHejOhv1+afHLxRSEP5K1oGi0OG1IEkhxQUYWByrib4jqDUhDKoUzDwe4a9VxOlM9zxZ5elVXPiy/a/1S7y9rPwPxnZwQPtR31gKMDZjdkZ+cac99SE9wlNWyv+iyKv0gB2P+w14Q8mAb3+/Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvO8/klJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvO8/klJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1256C2BC86
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772813093;
	bh=KjBLcUg4js9+mv20DOukgaVWcFASijlewinrI2JzJa8=;
	h=To:Subject:From:Date:From;
	b=AvO8/klJK0Ivumh4Vs50fhNDolQLqtsG6MT1U9+b4on+snoWQHMkl8fDrVWx2Mskl
	 i1IqGy+lKoW8oWqR9R7sRxTOw/XMFF1pg5gXGKyv9jBbiIj4nVbNrUH1p47tqroK+5
	 8d649EGp/Esdh9sCt2+d2Ch/OFFK6uS6oU0BknX9SwI9aH3grvVgR3VN+7odhtM8AC
	 Y7VN4MfWEB9CntqP1+w7VPMIhzsd3GjhKEN6YDJ8ebvHyOvs790U7QGB0LXTt5kIXH
	 YngZr0yTX+U4xFNCdU/OfhbCNH8JBhurXsw5464IaVYUPga4S48cpn0RU0m3OM+ONG
	 Z0pk2rBHC4EQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98409FCB61E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281309360.19413.13312217254108433438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223a9e6b28a5cb7675ba91a7aa6a5545fa47dc1b6094ae17694049458dfd1150
Date: Fri, 06 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772813093
