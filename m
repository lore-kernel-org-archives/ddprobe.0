Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5A93EFD05
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781305594; cv=none; b=TqnhrxKNDMsq9rgswJDfQI8PHhyqDuVwnTBY/8qIbGlsmXSm6sGpzxgbLif8LEcloRAwUzqep9NyuV+HWBq/rS85u34jFNoa6gHVnRdaZonHOwKXV0s78rkvL0lyIQtdeyAedJ3Rl51hE2Qty5JJrvcIBY4QLlqu/em3Grtfqnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781305594; c=relaxed/simple;
	bh=MDipKlFjFIx5wyxQ45XU1X45PdiK4oLyaw8ZoVHMIz0=;
	h=To:Subject:From:Message-Id:Date; b=MmD2VMmVHPFkGuMWRlmT6ITACRUwouko5jBI5OpLl02hrU1nSBrp3sQgLNuT/Y0I7fv7a/gkl48y9E/vOUu9q8UDOGjIARSZ4NE7LGlLjbUFNZYGSeJoPsZYmdN3UOufMPl0iCY8OI1hsj90fq3XUADhIZAaJBmbx03C+a0gQLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXEYvIsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXEYvIsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA43BC4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781305593;
	bh=MDipKlFjFIx5wyxQ45XU1X45PdiK4oLyaw8ZoVHMIz0=;
	h=To:Subject:From:Date:From;
	b=jXEYvIsmSxStiUDxY5FObSWUBxkbts32fVcuaRVDVw1FKK8P5F20bPcN3ipGpgU0a
	 CRqT6Fc6++G2222VmlKwdqXHvJg3kkkcpdshD5u+S35QipxXgqjL7IVJsVmUDhgjaP
	 IUvozOk7Zxnv+o531N483dUoDhJ9HgqXbRLzkn7ZkIQeYgvtFUMBy+mgCbjfUyVFYs
	 qwJyqw9Qwn4cSu0poLnRn7g5MGyzO+Qgu64onTfy6fayzaKR7ccJX0RMKOnyFcbscA
	 3iaGLf/6Wx8SvswAQOcRTZvkpAF8IpdXdHanyJuriDap5vlPVuiJjlkX1o2cbR1BLK
	 q9aH8U8K9jrcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F33CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130559369.27025.11930847742450277749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cba49e5e76eca198a8f9dd74898addb751d7ac670d10e284ebd5f96f77a8851
Date: Fri, 12 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781305593
