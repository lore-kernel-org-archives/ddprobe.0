Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA854D5A1
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790255434; cv=none; b=hDBWixJ26PMnr/Nqnf8JZd32GrOm2tRI5BVmR7/jEZLYSf3w/Mmr63+ygvFGr+5m0keu9gNKZQvgO9Prz9yh1ukLD0L+/IHwxRag+LWIvC6xjw/yqw9WOEEhEzYyBNuD4tbsCDa5CnVYm2t6pKeXtnJ2sqji3sBaRpDv3P6XOn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790255434; c=relaxed/simple;
	bh=uuYKzkm+WFY6FbQtjRRay/GVh3F9M/QzHDXL4c8F9Nc=;
	h=To:Subject:From:Message-Id:Date; b=WmVtMCL33v3oAniFdziAzCJeW0QROBP4sRsfeuX5qQGmkA0eQZ963JzJaLNwixt68PNVBsyTkP0ncMklG9HwYEqoznnljXqLbGKt17OLTPsV0Gw0/+vnkEGFLgMO7hkDuQSvUzFefkDyTx53I6QOjzB6Aw7gTH4YGgGAPsSR6dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QF/zNqbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QF/zNqbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DD0C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790255433;
	bh=uuYKzkm+WFY6FbQtjRRay/GVh3F9M/QzHDXL4c8F9Nc=;
	h=To:Subject:From:Date:From;
	b=QF/zNqbqDV0QXkP0T6v6feiCax4akYebs0MJE/FOwurnc/M/NGLTCwzPYn7IBg0NL
	 UDZcLWpDeyijk+NAYYEcaj1Bb8B+ifxHApecjck9Lx3CLx/kODopz77gimDoj1f083
	 nSvxdVUh0SCGahfh7iXKkN3rhHe3hmTVDNFkTxuyGFm21Z8dDWTz46cCZR6+7HiyXO
	 QArB0Flh7PbxsMHdKtdhYHKmqwVsiofBymmwcZQGfWE3ixnFsTLg+jEnw93Ci0Lrwn
	 wmBEqsD38n9IFGolOj7ZOd2hocGJjFNWCHuVZgb7y3vFfVuM0/4uEeM11/xIH9HJz8
	 hJSAvunE5x2bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED07C98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025543370.17849.5068440095097906097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0debb6ded99a587a2a14681ee4c1594855078b4f5837692b95a939c808e865fa
Date: Thu, 24 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790255433
