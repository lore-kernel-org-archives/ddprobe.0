Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C88E3ED3D8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779207034; cv=none; b=OISNc627qljf1VhAAwoMOh8n1s+It4XXu6qhq+zjmWlJ24CcqUFC1FpMZfWOa8+JF3K2rQJVCg0BDjJBfXNtRn77U5pGhQoW631XYCVxnx/BAiI7qDHDwgCoPodc9DAvi5YUvsxASv9hcSDrdaiXOUKfOUDthQHlAep4A7V0gzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779207034; c=relaxed/simple;
	bh=n9Z+ahvs1ihAYEoV5HnqL7U80SbIW+lkQpBi0HJGuqs=;
	h=To:Subject:From:Message-Id:Date; b=gIYDUZgnJht0BUKEKmAUptuDf3EmsiM+o6/UL5Fgxdmq3onTCn3A6oHAK3w+n26IxOYg0y5BLEWlbZ/JnIvyKA3UYfeZTlfHzZeo3HAcix+nLUyr2vzbaqvHrdh46yfszeBfWJX9tZFndSI0lCBVa8fNIcVfl02yTDSUW7UOy6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmamDjfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmamDjfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09C52C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779207034;
	bh=n9Z+ahvs1ihAYEoV5HnqL7U80SbIW+lkQpBi0HJGuqs=;
	h=To:Subject:From:Date:From;
	b=QmamDjfpRc7AEZ8jlMwj2bEeLCrSk/GUa/zSs8Q7/a8arKt9x/+GT79WmanGyBZYp
	 78cfkSKycB9f7cw5TU1UUXDG5zIEblhO1NfQMa6oiMZuo5A7aFhzmTVJM2oNPk/H68
	 Flt4fB9RbYFBxyoq1wPPzM3mpYkAIFJ7bvG8/eErDKmfvqZ4xi1CYYAPPOXqxunZPg
	 JKdfYA697Rd9pIRSuCTXAYBsrghJC1dg28FvSo6Fg7Cfdw+tNZSFJJ1X5Pt60qQxCZ
	 Iv6Cp+3zcB+lQHJsVSkZ++vFmyDIUMRhdBQfbqJuVhw8N4Xvo/KF7gqW0ToL90lIn5
	 7y0yL90zM2cyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D594BCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920703385.30974.6143809087576041239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4159ca432edc8fd4b1723780c03c25680b27789f92a321aaebe4e2bebd7cb722
Date: Tue, 19 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779207033
