Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436A8137750
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780200874; cv=none; b=m4g1YgD02vW5VMUmaTx2BCiCALenMtpgNlopXKJDoplGbIwH0ekF6gGDct6AuIzL/Z/zDTwuZyvnLu+xuEAgYRW3UTXh64O08r/1MESXliSB4T7I0HnTBYP4sKgWV+a5H8z8sgEf/23cVGTy7mxuK54f0jpnOt5BmZNWZj8AqNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780200874; c=relaxed/simple;
	bh=G5xF56DKtOyowi0k2j/pei0qE61cNXU60CiHig+HZmk=;
	h=To:Subject:From:Message-Id:Date; b=QsAdeR1w3Z0SxGvuyg9P55gVgj++lOsnFzR21FaETGsx5MwLaQno1NhnLry22xXYyEG7flpXLVBuRHRY4AJjetyVUVJKfbi6u+wx1CVm3r2m0MZlhoTDqVtS7DDFrK3qgnVmvOjcFGsVW9mJ0yg7zCz7vxxF0PUboNluv1j3PmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHC65JnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHC65JnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4531C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780200873;
	bh=G5xF56DKtOyowi0k2j/pei0qE61cNXU60CiHig+HZmk=;
	h=To:Subject:From:Date:From;
	b=DHC65JnWB12nADifZ010TuaABILzjyy+BO0ul5E4gC3V+Dq/Q8pSyVINRz6a917jk
	 HlwLtB4nZ3gmiGbsfYRcZ/S7+ICc0Q2qwXANMBzEsYweV+jSSoK3rGmU53NblK9FD3
	 4d6LFxX6xj2GJDqTV0xLGProO7ATIrPv3FVD8gRT0IqmtrNIt74SeeM9snEt23fbpt
	 WMfeCafayeXd372vSH1RFFIH6sYOfiT7hg/sSv3yc6EiS5RWRSIlfWpi6HdGWVoy24
	 jKVPJfpMvtY5dKCoMnjEKGBoqwWabQrfhAuxxOzM4mQPooZ5n9mXU0QT1puixbYiLz
	 fQF1PNWg9Hkbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9161CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020087368.18083.16672097243402706157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b317a77f69f9e4c39e745aac45667d9d53ef81655dd4f010b19e444816f08f
Date: Sun, 31 May 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780200873
