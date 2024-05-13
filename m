Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FFC4AEE0
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715575943; cv=none; b=K72oNyXd2pTpYyEk24D8lbsMncB9HTxVUo1mviMYma1j5vMEDNrANN9SwvKI7QWbNt4gH1ebMuhV+ptBUPZ5/U8Bel1zSnBkmyTkLSwl5f+tUCFmopArab05ABRuwlXGId7IueepIxupE8NTVld2SOf9I61prj4vb7GycxTakoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715575943; c=relaxed/simple;
	bh=xI70hmuP1W4fnxY2PaZ6ZNwKx4uoGRIvuXyuvd9V72E=;
	h=To:Subject:From:Message-Id:Date; b=GV1HvJf37NLSNn+2B94rGUU0GSCMa9q45uCDzrGb1l5N4odjX7AXAcEB2Qq7YLbrFq+DXTYW6dgxjO6+YGmRcjBMCQc6YqyyY4reub7j1E5OqAdyRf2UAFp0RzU/kH1Pefh9MA1RATX53pKW0TB6CJuxB1/zbeTKPhdQFV44ihw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti+dk6jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti+dk6jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3720C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715575942;
	bh=xI70hmuP1W4fnxY2PaZ6ZNwKx4uoGRIvuXyuvd9V72E=;
	h=To:Subject:From:Date:From;
	b=Ti+dk6jcK6yr6/lkGnA62XmfxL5l13BAzdVzv1iS45CE8wr7GXxRHTjcFlL0m/9xw
	 ACzqaXWKeltWya2CgAQQLH4ZdDmfgKnsJgvtQCoSQA4qd/hFJ8R2nyrJz9TRAcni2J
	 kd2bfkChIKZCfwmLhPQvk7eR8gJHIxat0wVRrAUwrfloBcgk6QcD2zc8goHWIrfEBf
	 DnTMbQHHyLuLksV55sPwpQSrjSRMnuoewfNDS9m+bp9+pNWmCwLGiqyh5L0aPRQJVi
	 KoArqoISkkHiZteufdB+/X1QO7/UmBUKej6g/DaPvP6AGCVyBohO/p6lieaoFdQx8C
	 QUPEh+rvkvysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC9D9C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171557594276.12075.7686672745833419201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440184b720c0ff9cb9ae20ad1685afcb16d1920eaf45e1ef4b8c758704e0b11b
Date: Mon, 13 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715575942
