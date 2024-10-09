Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A2B15380B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728452754; cv=none; b=mcWnLZzJe0dQB2uXyWEzQlwIYtKko7vfnYxxjb2jWiNUGub3n40nrvT/NdM9l9xR0IG/NoMa41sCZ6D0vcOhE88bjp4QoWSPHlpAkrKnuFD/lboGSjaauHNuG2O+BsU+4NQ9FQDLkTwvCBIuCLdA6jzyapLYHVDkzYr8KKHhPlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728452754; c=relaxed/simple;
	bh=n6YHImjje7BedkhrmXmV7hH+mbCCAKF9UV2OPZYZDWU=;
	h=To:Subject:From:Message-Id:Date; b=CWQphjyFRyy4dznHrfRrnqy0CMG5xLqABhE0mohv3iG9WnGM7gIP5HJClNqPJi51QqoTVEXBjgkOtWKzgu14Xh0tjErm5L0Cy0B1T00BCqR3vz6LSNZYN4XAb4srlTUzVeUZOZGAXD+FT+Fk5Snk3TZi30bEKpv1Wj3xFHKuqC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmo/X16n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmo/X16n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D37C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728452753;
	bh=n6YHImjje7BedkhrmXmV7hH+mbCCAKF9UV2OPZYZDWU=;
	h=To:Subject:From:Date:From;
	b=Lmo/X16n0MeWXhJ3y91wfihTmybOPRCCH7WQpxRBu1LrBkPNWjW71xgNOT/qLu9qB
	 A7WcuhUR3JOszsb+Im9vb7wAbl2N7s3hUCI+/ubhta6jH4Y0G6nNYfS2v46E+aheIt
	 2RBCyxY18g7ltXXm3sWrQxX+fHsC8NDz+hcui6vY/TL+ypLJ5gWsuLA+hbpyPsYl2D
	 dY++GNCh6aKuUQypWMUE0VI6l2Dfy27Oitnkw+IHp0cGFiVWBHJg1/yCzsMCI2LWJ/
	 TcetSKrjjuOMOo4bFLziH+hRSeBd58gGZRFTWcdxgBNncoYWQPdLZObo2U5FmcarTM
	 Lj67TpkNVS16w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90799CF0444
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845275358.14435.1196872102241343284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aff651b114996307477f4ab49d9e5fdc061f1a003062b70e22e570331ac0013
Date: Wed, 09 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728452753
