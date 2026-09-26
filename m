Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3231B3EB0F4
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790423434; cv=none; b=M+QW43aLqxlTmnIalDUt+D077enUg1bajQAaSH4S+jp6CXAdx9TtWjUV45YV8/nEBzc6Lmud2cq+VIQx9h5+EUbxtibg/9md3ReG3D0RtDtTnYdbbQzynb1Mu7sLK0+YO1uAIEdXuTIi/j9ptGz1mlQ4LzWCGBAy5kp8zZn+YNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790423434; c=relaxed/simple;
	bh=0JVo51EQ/mqjM0CCH71YZx1/w9khDpUDiSl17hJoyao=;
	h=To:Subject:From:Message-Id:Date; b=l8THWiD7L09S0upi//jcHRX7rgWi5Ys7yVo7VgF+L1l7zOuceMUVc3abnyBCl26Cu2q4+c7CtrPiZUW2shW4pAJlw1/aXjvgvI5gwE2K0JZ0sKWEa26CKuwZyXB03uZY0X1mFFjVM+d/9DjrokDUYX4kcs5AIrmQO46VZtdHh0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjHIfhEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjHIfhEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A9FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790423433;
	bh=0JVo51EQ/mqjM0CCH71YZx1/w9khDpUDiSl17hJoyao=;
	h=To:Subject:From:Date:From;
	b=kjHIfhEEHkginltDTA6v90BilP1EdT137+GGSc0MNk/59TqbVmWvSZCkTq3pnlyQa
	 SyCJicIifu+BtDsm0B+f7Ug6fnn0GiqFQp1Rji2X4Cf76dgKTC4eyeuGdIGutWTgD4
	 tTk6/+g719vG+G/vytCI/nGjDLRRUyv0bo/mTcd6OvdqlgQorMQHFcoST9bg58oJA7
	 tRIEXNytZhPO2IY5dFEPt8pmJZEyrg6mrNH3O7otXiIScRKo0MQ9VVJD9FmJt8lmzp
	 ENlOqNeP+EGqnEEYbFB9SgCb3RtClKB1OrvhahDdKxj9UKPFWsBEBP56rXqKxeo/gb
	 ygIb5rw9djLeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A7C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042343368.5156.8848195155648804142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d986da69c9945c132441d6bd686334c03ceff49655879d98b50eb72fd52dab
Date: Sat, 26 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790423433
