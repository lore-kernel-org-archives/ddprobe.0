Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302F932548D
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555394; cv=none; b=sngPfRYzwGmwt1ncqheyfTdo7q4j52TT2+BB9+2ZP6UNZadpQP+xGVIMMSL1c53w2Ua1e30YIKfcnBmlmfZo0YqN2JwzNN1GxvjtD/jrskeMkjnus5JedwpLHL5t3jk7lUMOO1JJDd0ux8qkcP2fy1idXryjmZMAj6deYCkqjCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555394; c=relaxed/simple;
	bh=UOEZHqr2YngGg0K7lrbxLvHAreG/ed96NXLJX7X25u8=;
	h=To:Subject:From:Message-Id:Date; b=gUoisQFkL/bdM+lpg3klLQDSGx1ttA45sLfqImMDrggH7Nw62lFUJFTTovzTBGPN1Y2UyeCG16WQ+UspNAQz2xgxVCNMO0oDo1Jz/ik7oqQFgCbi2ZzfKgIhiV95sdeEi3JOgmCkjbH53SeRQb6D7wPX5BUtmae2bet6S08H8hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTDExN+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTDExN+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE7FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760555393;
	bh=UOEZHqr2YngGg0K7lrbxLvHAreG/ed96NXLJX7X25u8=;
	h=To:Subject:From:Date:From;
	b=UTDExN+SeNkGtemo6afqU7ZZ/HnNFmL2Lg2c1iAiBFZyuTNtbEsZAY/XjCHmaUOZf
	 FyR5JdmIg1+5prPWbGvAWUMoCDSlebf+vT9hDaKGZpbpcsEG/zf53afN1mpRtKy3P2
	 kPrT6v3npE8CuGdrkXeL0aWqcku9R6YebIcd8NBvNFdVnYlAwbM4TWG2nzDR1NtoYQ
	 gi74jB3fAtrAOwxYsLsse84Ucix9rKx7D1JXNbKn3pRkBNvPk4Lh+P1zoYC0VjQJT0
	 YFP+KZ8GvnY0IosbmaevLjMd59lnk+vvKu9vTRDnOyJYyR+6TJoyWF59wShHEZb+6s
	 zPHPBxa066o3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90828CCD195
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055539358.25098.15498402803237263617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb0289bcf068249b308ca3e8041964ee50a7876b1211d50e21d982da897980e
Date: Wed, 15 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760555393
