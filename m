Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB223191CB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760512794; cv=none; b=J/JNf9x3ddgHX6XY03fSlQ52Lz4BilLiU5JCSTkahSSpNHbno0ZciA5aH5vD68TyR1fBJKo6lOxXPh3YaCkhcMxs1zcR1rDmI23vaSwaueqL7aaAAsH/nIdu72reKP7ZDZLO3mQFn4oA1Jm8sn1ET0Opw/wkgdR+owfklcxPP14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760512794; c=relaxed/simple;
	bh=2F30u9AMTraIdq3wncb+XQgPhELjuotXxfBI6bPkaeI=;
	h=To:Subject:From:Message-Id:Date; b=VhafBJ5oS6Udxxo+SUeoMLt2DQcyjnfy31FS5mKPu7esKkzeq95TQ4P2XskBub7OsuSk/bEJIRJIsizCkUtXba5Ls1w2H9d6nCnwUXhfWoKWORMvac+J6nBowYH9IqcR3ioxk9k2J1lm99QEsE0IeqpnIB4iPZukDBkV3LRMCek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwS9z3Zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwS9z3Zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A100DC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760512793;
	bh=2F30u9AMTraIdq3wncb+XQgPhELjuotXxfBI6bPkaeI=;
	h=To:Subject:From:Date:From;
	b=YwS9z3ZdGd87DOLQNsz2Eue1XcZ5Qdh4ZmQWwkNllqeR6bM/FvYZ94zdU429RKPox
	 Hb3/OEK0iQgTk8werae8MLpHQYD92oFoGcoc6/1S7nZNj181SBC2tELZXBdcUtUD5a
	 OdvbrwR5ATw/3WcSVUo3deucTZOdL6Rfg6IyY8RbpFUDKaU+yLa2wecHxdhxjnqz/8
	 niSHoj7ED5coV7KTUxkMVChzaMblSLB/PXjTcPc2ZeXxUGrmM0Uiby0Ih/kuZHI55L
	 9pE1xunt/VYX+9vHE+p8Mq0gMIaRGhZIiqAM7XYoOnfbA/J1kFKx/zF7FiSRI2CicD
	 jREgqOndn/lvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B8CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051279358.23402.15517225692323063674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e98c2736627b050fdd6c5782a097a9111401abdc634c5d8f757ce199ca7d4aa
Date: Wed, 15 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760512793
