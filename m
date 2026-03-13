Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DADE220F2D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773377094; cv=none; b=etBfyjBhWSWIgI2hjUB1wTGTJL7au6VA35s5T6QEZtm/cuwKedICJN1a6+uVcjF8fDzRR8ttIySJCx48PxBUmln7w0IvpzmhWlm0Ka6EI5Bi2Y3hMOxkfwFs4+2viTeo383o1ygPIq6tPQfNCNw5p1e86u3nvTekbPRjskLmwg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773377094; c=relaxed/simple;
	bh=pAZxF9SslYv9v+X3kW03UcYt5OTsbedgFGQ8pPPt6FE=;
	h=To:Subject:From:Message-Id:Date; b=DU/RVqeWk+TLfL01UGrmrcMinIDHRWbKVecPXkUsDWjvf4oodJkAOdGhTc4GJH2WFDzEtc+XhLhCFMNQJcwbom2hzMnak3D1AOHx2oOwnIOh9ozM3JX77Kx48qRAp9QQiwoEz1SmFCkPE760hheUqEzsp/kiXWPQlBXcFjedkLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOE6U75h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOE6U75h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42D6C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773377093;
	bh=pAZxF9SslYv9v+X3kW03UcYt5OTsbedgFGQ8pPPt6FE=;
	h=To:Subject:From:Date:From;
	b=lOE6U75hNhm+PKZ8fMEB6jmFLDNxJM3EBd7JrN2lv6uI2f4lnDAGyDWbFOCuF1jN7
	 /EjVaAegC40h2lzXeYkr03PuHJHQ5cE+tC1BsoBOd+efdk5BiB9iqEWv3s57U8ct2f
	 6vRKaD4lgLK/EekeFOSdvhajmRfUPSIi7p1tE7U7XZk6J3+sC1PTff4tFzJ5kdgCyY
	 eUJr/0fjkQaxizma8NWCdor+8DOyS3lC0UhnHXCMIBI9fbXRhHDowUxbkQHhQt1O8E
	 yLO4cdl3/V3860m3lk3Kvb3SjvdaUB7Rbpl9t9rNkRLkS9r8h4wPiq8fji3waG10HJ
	 TqJ+BqBCrRilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A264E106FD7B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337709363.11630.13016393187352977041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db1e8d3d2f5d91cba5bfd10e825648e70bd08950aa512de8d91ce5e35e19a4b
Date: Fri, 13 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773377093
