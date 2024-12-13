Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FAA1DF75E
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734099354; cv=none; b=TfVZnFmbjGUowo7mGEzQKj2hOVvQ3EhpmZ7RZi2jHw4V6cZk4S3bOHBAOEPChOIQFB3R29j0pi2ha5Ej6FEWPFWs4Lbzu0o6jP/vDPSeFpvQv62geEmM2ApTJz5nAYpeLc1alhTYynNodlYj1qn4LkoK+ef/EdLLdReheQzolCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734099354; c=relaxed/simple;
	bh=jUCYBohp/LIfft0rPUE0XAg4zOQT2e84j9nTO7NurAw=;
	h=To:Subject:From:Message-Id:Date; b=Ri3H0xzZocsFt57qQfJK2gXhBshOStr2etm7alBZI0NMssz82zSV+akLl1wlibJ1M+wnNDdIGCsYs1HHTh27ee/jxFOa1/0R37Tf89CmGAlnm/DZ/MiGX84uqUqfNxYiQZNY4S1HJXAa8Ij9CBK0JqLdxvzlU0Ico0hmJcHRm30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+vbZY8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+vbZY8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9B6C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734099353;
	bh=jUCYBohp/LIfft0rPUE0XAg4zOQT2e84j9nTO7NurAw=;
	h=To:Subject:From:Date:From;
	b=Q+vbZY8SxHsJFaJRALmtc7l8dV7pswqhDbULIk1svFbM3Za1ktTJk6SGSuIfBx9Ol
	 oiSbfz56VwwemA5H02VddJVw7NjiWgaWZCQcNzoQH0KmSKQctApUGcGVlLQVmgyhg6
	 F2dS4HixznDsKaThHBMbc9XP05aAtYmIG3cPB7sp8m7Td+dqwo8QR3aeRzP16BDBjI
	 LGIrFUxW2GhXUrGulf3k58m7DemqrRZDAMgnaOraZj5PagIBH6uSDqr+CaLr0T42R2
	 AnGDHhelsTZyCKus+iDlTYfr+NDV1iEGPcLmevJNZF25m+m7R2R0XNV7moZ2qjmPHO
	 f8FdEnr5uW3Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D21BE77182
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409935363.27048.2287153491156644145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6f8fd59429c44048dfbd1341aa18a40d632a3ea423522cebcb7eae0a32a76d
Date: Fri, 13 Dec 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734099353
