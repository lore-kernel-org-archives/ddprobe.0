Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2311C3BA254
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777459054; cv=none; b=GkZJfiq+bOWSrw2ie680P6I+kcHg1z55skXE1csVoltD/fSoX+rMsQ2jNmBeGgXjn8Zq42Dkfc0CZZX8BgeH0FD5ulFZFUyQ2LV7TDemrnjZ7Y7jF9aBWtx2zaT+FLSEJ0Po8/KsuWZ2iLHgeylXd33ehT3Rjcd4/N6cStrGjCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777459054; c=relaxed/simple;
	bh=ZUn49MZ/gu/Gd0Y/KJC3/ruYBxkBJI1Gfy1kGOqsODg=;
	h=To:Subject:From:Message-Id:Date; b=rTAFrD+pmkXGhrZ50RaUIXSLhl8JnzdlT1iMxJxj/6GVvAVTGM5V2NmjzQI5VnA0ApPAtzaYYP8+Zy9/BrWwse8/rTTFfKB3OPVdMyr7RMf1331odpQtmmjfbqleFTNaG/u6J3RZ0bx0w3igQBCdfkfjupf+CVO/ruI4UHbdL3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP5WVzPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP5WVzPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC07AC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777459053;
	bh=ZUn49MZ/gu/Gd0Y/KJC3/ruYBxkBJI1Gfy1kGOqsODg=;
	h=To:Subject:From:Date:From;
	b=lP5WVzPdqbIro4UxJelI1hX6KKm/x3yShp/ERJmaCpf5VXm01fIOBAgqopTngykRo
	 s6nCs+BnfaV0lAEBkBTKaq6LxjsE4Owm+VaqpZ2pDrOZJs6f015sr5p557eOQM1qmq
	 ao8QODPAfa5m9T+YA7iZmdM5pgs2SQ9vCxoLPwOh4rHYMeEZw6bB0g5hB/LHSKmCk3
	 s3qQLr67PtqyufNM2kVJ5xHV5oITA18hyRH91syZKEL/CCaYQBakxheg5UqKKWYqPy
	 6tTxzRqf+MAxYK516ReaiW49ru03qylDtrhced3y9EfraAnT2LrSnC06GsUd4LpUNU
	 N3MG7GTM84WAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F5FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745905368.12782.4031532014620100287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96869965e335a9a33a41fb041387cb4caa976535692d0094a6ba7e76feab8602
Date: Wed, 29 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777459053
