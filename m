Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB48433C9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718881223; cv=none; b=ZG1VjAeZ7O0P5AutmLx3Zymw2omMV30gDxDeJLvFETkz/fuRvsunEvOLKVElPP1QETsvpL7aRE4vOchD3ip6EoW52RspNUryMaYfFw6kJW/GfMO1PkSuvvboxBxLw8/Wu/hv1IUT/P609asVfZ18teO4vV2dtFfFoEQUji6+32k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718881223; c=relaxed/simple;
	bh=m9BZe6Scge4IAm+ePcuVdDF/sz59/tj8WO0x30nDx10=;
	h=To:Subject:From:Message-Id:Date; b=uqRdFKJx/jAmvYGjLZad3N5gs8ac3bLP1I+Bzz9J8SYgofv/eN7U8qI7D0imFWSvG5gXoIFPzcOl3PU2Cyl6ZCDxejygnhsVqWQ4WOdsbifaX2HiqXED0J5YQ8l1zZGmxZnNqS9vI5NtZZmU2IRigs/jZdlgNyKUcopa5BGJpFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqcZRdpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqcZRdpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E79C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718881222;
	bh=m9BZe6Scge4IAm+ePcuVdDF/sz59/tj8WO0x30nDx10=;
	h=To:Subject:From:Date:From;
	b=hqcZRdprppcz4JiU8/gZTAPo34eDRlN8IE1GFWR6sq32m6H8h0IRaPqCBt6IutFWz
	 Dq2Pp6Ajqh1We5m7YHybtTBT2NCAkMAvT6DJFOZKzFV+surU6AK9qrDxHwnZ9zSO33
	 lRqZSZ4bV7glYCVUBqUJe0nIBuPgAcRA3vD0l+m7Pnex/WoWdQtLcKrK6Beqh9ESbx
	 fixrE34rwxjg2P1mf7Gw/TPq4iT2mDQPtCyoKa1HZjswaiLsKEaPyhq1HkmLdE8avN
	 hTdSACZS+9GFpaKH5+rguLUGzmlHEFjgmTAJrbKioW+VWJpQFzqCInygg9XN0EjvaH
	 gj86Svl6Z4/SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0559C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 11:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888122277.22094.17859152032349962818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82729aa7bd8254fe432daf145118e470bc679b857ad452130903436ea50eb2a
Date: Thu, 20 Jun 2024 11:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718881222
