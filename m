Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6719EC144
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716740663; cv=none; b=cJa67XjTbVSp9KaTsIGK8fa0NeFDOdDaZHa48nlOX25s2Np+t4JdrmCWepWbpAMEaHxps7yEzvpThlw8jIMxR95JttPWN2OS/GUPXjKbQcJYGzkp+RAaWFPaLDm8bryqkye2QA0HJnfQPv2bznXiBL9xLMOE0zSNoEowrdTWzqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716740663; c=relaxed/simple;
	bh=IeaXrhGzmRGL2Wj4OsXdd7qDiyhBvIi0QLSzBUVHwSo=;
	h=To:Subject:From:Message-Id:Date; b=NfRQXTngtAnArxk7YmFTYsPSftW8+siPdLrOKabivMS2EkRJu8pAa2wmIAmJF1QW/uPZM8wZQB1vr2BQHqG4zFQxMQglubB40vfkzZZVHxKb9S/boYR+VUXXEB9CFRANSqlRyx7VEL2L/O9mdPNqcOmXVu3AGp1aLkI5g6OioCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfwilE91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfwilE91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A03C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716740662;
	bh=IeaXrhGzmRGL2Wj4OsXdd7qDiyhBvIi0QLSzBUVHwSo=;
	h=To:Subject:From:Date:From;
	b=FfwilE91t++46SMTNagYCrc7JwgvJuJWxim5VFIlvHX0fKoLRl2XtOa4xCZuOvF71
	 rzYAz3bGfATU9e0dVb6xx+Zrwi0Y3iNyUuSJqZh7y27TPLlO8MbWe6+k5UsMMBnm9a
	 ElPi33TQ7X7s3+WQCvrVQpp2geoMrxLqGgK1Zp5F4Sjj65FkpPpETU86vn1vTzBj0O
	 VP2tOk2yM/L+1Oj2ZkP3qLXp/59zmR2pqz4aDKjtsvXzwaKqgjWXkXgD3OIaxlPc/G
	 Bvl0HdnlFv/bFezWYteoefhx1U1XoRPmLE4tRyqQyOaoNf1dFpvvFi/jrHnB/Wx3cK
	 OqAvzgi8je/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91ABC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674066278.22726.228331376303666617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d063d37158391eef5aff7e69e9577b272e6cad49bbd413c8476525cb184edc42
Date: Sun, 26 May 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716740662
