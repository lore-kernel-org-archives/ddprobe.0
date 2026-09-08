Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579993B3BFE
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788910834; cv=none; b=FgozuiFIr3uuTKPeUbEf3wEpy8E3G2527M/kfmrlSO1Yy5AdJu/fSyLi0gOIIzObDqAlI9lalb3aQyxhoDisPMbaTSw7jvJELjlNfCRkYEQiFo0YFqVSUU5Rxh+uIboZjL6yNv4nt7m6R4uiJedgWW2FQ95jV5rPqEsK4rQHxes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788910834; c=relaxed/simple;
	bh=jGHCGwTFSFCp17kG7Mr2SLudokyKlFOkXH7IL2BCkq4=;
	h=To:Subject:From:Message-Id:Date; b=bZI3CZsqH0VHKUvT3EfkTwWvcIAhslrH/x1gcAv/M74MwjRJCax5cB6QCjsgim2xEta2OUqfmBfwSChr04gA4+kBWXHIZXj83tJUD8rfURyesUjm8pxL3AZ/EpnPOPZ8ktSjr7cmY+duyqQZE8w0VC+EAFl6oh506c+5iCMJ6SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGNXmli/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGNXmli/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAE2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788910833;
	bh=jGHCGwTFSFCp17kG7Mr2SLudokyKlFOkXH7IL2BCkq4=;
	h=To:Subject:From:Date:From;
	b=GGNXmli/9Z2TrWTmpvzcaWGEXGN1el2cZ4hcRHdRKDROaCrtN8RvzTpDj+sISzULO
	 siSlNBAtUXHWrWfEhPgsvAOCv+lZhI/vP6GGgnL5tLQHORCunOIlGb4SU1v1UWZB7I
	 UNbc9izZ7nv1cg3W7vrnyZu2OQ5VJvpBPYGj0G2L+A/Urvik3gpfJahcuognJlC+kv
	 Onv9uF+6U6tlu9Qa3knCVIeytngBn6qsYl5jUqQaj/eZDO1cd/Ne0Yys/Jy4gP2LjV
	 klZVaSwvLXOFYN6xEW74EbZuvITz9uOD/q7ugDVyFxKRRnqJKBneB3bGividwn80wk
	 TS7t9ejItRtwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB848C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891083369.17979.7761333563052675129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1f8afab30f542e0abab3bf9c2906f588196afec8a16e94f10b08e42a2fb4c2
Date: Tue, 08 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788910833
