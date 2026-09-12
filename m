Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C56388E76
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789251034; cv=none; b=nvbu70faP7xN1ROThIwsyq5ZiDOpiF7oQUWmsDivYZwmZNJ4XImYlEC7Kt1Yn1foJp/QBhFyoC1X75kZZSSacV3NmrmrWlta+EtIjFp12qXERAZUjWvj3IQEDmozX+pahRgZmr8V+ukTJRyWJr2bIkkmiYur8h2/uPKLyVmM07c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789251034; c=relaxed/simple;
	bh=0oC8W2Plmidg3y8EBGaOlbixDRK+aJ5caY494/eN81E=;
	h=To:Subject:From:Message-Id:Date; b=qIF7nEhry2r/JN3msI686c9bmpUnpbhQomjpXILqcC8ayMYANA9AXjkK0lBeyFPBkJObOebk7hX5lxUL2c727KMSc0Z0HrJKtyUyUeS5uaHEbEbBm+xZruZIgecDkymzeLjNmrWgZpQ6F2pqNsLQbqmqGcarBnh6SlleYmiqcgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkjLltHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkjLltHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62CAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789251033;
	bh=0oC8W2Plmidg3y8EBGaOlbixDRK+aJ5caY494/eN81E=;
	h=To:Subject:From:Date:From;
	b=rkjLltHatoRE4egOfzrerYNyi82b1LvVRqDdbAUK7VD+GTvcm6xgW05PE/xMXYNix
	 PZcc9nmX6ap/2rLxtih3nLRdbfSGqiufVvA/8eOwjj9xIzMAFTptzqaUkfaH0Xdpab
	 KVg8tJteXasIij311bqyjl4cgKIW3TIwopRpmeseog2pdSt1v6UNDEbInQyUDXOafa
	 IbNsA2+EDUw3/PqZmGNUOIRoqIa7gLF1fL+pDRSx8za/ea2CLcaIjpYSWiOp6rtovR
	 GsEjyIFnAFHl/z/LgnSPeYwwGS9/aHPfGusDILMQy4rTkCsvW3QFwmu7qngZzDCSKv
	 9tSMhkbs7tihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B174EC88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925103368.22457.1345912981717044832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5f040171064034c4221cb2ec4abc3e13e0ee7be9f4116a84cdad03da1d11d7
Date: Sat, 12 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789251033
