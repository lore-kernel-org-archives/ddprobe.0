Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6D220A5EA
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760090394; cv=none; b=k6ju/M36XoQ8y1Z/rdcOj3CZKggkWDogw8hxydKaJ9fFZQlJpyWUYzaEtMrx/EunEL4efc0mv7QwoAsUbkbi+Lfr2X2q2CWBldShM/x2sxXU+8fgxMO3KcvxDqE8L9fjt2sH8tNllCMip++bSEqm0vTAY8xCgs6io7qHwsFu0e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760090394; c=relaxed/simple;
	bh=x6bI0+/7YkP6zgut0G/18bHKPGdsNu8PKp0BkJ2Hxyo=;
	h=To:Subject:From:Message-Id:Date; b=ngmleGA46a2HsigUzbf89J2g9+MtsWNxDTN56+AUgPaRD2S3vqPdi/PPB1kjqxdodHtGhGUXJ2GJIX1TFXaiLAITr4v4wv61I+DponsX7wCWhZ4eev15L+StAfZUwo1OQ0cyljmiwb/GvguiKA8+7JK8HIPOO1Qp5CZiNovn9MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/QDUjC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/QDUjC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A230BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760090393;
	bh=x6bI0+/7YkP6zgut0G/18bHKPGdsNu8PKp0BkJ2Hxyo=;
	h=To:Subject:From:Date:From;
	b=V/QDUjC9JJ+bQJ7phBjQtla1Ss0ZjnGKV+H80fKjGDoK1ScszWlMcObDF8yHmvNlE
	 +0/aNZpl4vAC4RGHyBQzb8IVFGQNIZcdWTH3Qhrr+Mva7bodT5jH9eKuUxlfQFcMqT
	 IZWKco9T++TQ2S+8ZlTi5FsoHCYTGcvXVubcIPgSQurwmGI51wTSYKmy1fZuyJauPS
	 NrGTJL3Pxa74Mp/jZA+CeqgXoRUFflM2f4hURMkFN/UmXHHR8yJE+8FVK5g3kL/f8+
	 mTpvLL8bVQGiijE8+Br5VvQTW8VyctthxPRVdYA8yZGDKeg9+Ey8R+znSmfGMU/Ewu
	 vYcBa/QFmrY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F148CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009039357.11113.9111572691803696897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21693e230fd2cb303d3c61ab824a7470cfeeb8ad7f2457911269067fb883712d
Date: Fri, 10 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760090393
