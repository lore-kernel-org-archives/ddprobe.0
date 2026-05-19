Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CEF3B6340
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779174634; cv=none; b=gqp2a5mBAo9ryEMp6xpB8JGvSbRFsWJhwC0ElTpu3RaCDFnnUL55tusux49c1WcAxikQdiv6BKn44e4HbTfs/eqojdrCANAIl76irryr/Qb8uOTQXYQzAgKYwmRlX4p1CctYXpNK15J12amMaeDREbtdSO98D+F/35IcQgQxFAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779174634; c=relaxed/simple;
	bh=N6SYU+p9VlHbhU2n51dys0CTkK43xkjX/Xw3LwFQ1Is=;
	h=To:Subject:From:Message-Id:Date; b=F2Sb1fG1s3wZaUimHViwM9b4JOX6JVUvT1VztFihmLZ0WK8W14qbxDfidl2zDCqJfV6qu2pv1JgdtYyvKg6m50IFA6pJ6QKooWWVICfgv3J+tZ1iG1wElQAwQaRoazqz53jO8DaT2SbQrYGdMdVV+Kz3D7VUltiVR4Nl/H775gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkeGxPB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkeGxPB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB169C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779174633;
	bh=N6SYU+p9VlHbhU2n51dys0CTkK43xkjX/Xw3LwFQ1Is=;
	h=To:Subject:From:Date:From;
	b=IkeGxPB7xJsceCasy+8tY10u1WaahUn7KsQA9qE1YFWFYgVBmidnjWCzgm7b1gK2t
	 TY+dQHqsQlflmYfpx/TaJfFQD1tfdjkQupOdV0khYMCAYe1HomGD61/lo+8KDnrX6/
	 8eXbw7nhelD30JEaxQrFFsniCKerx//p/Rfn40i360poRCjHTO8CTQVMqgx+5NIAtl
	 MxDdIHoh7YvMlCr8sqIxGNZ3aO3jJMSiTodCeCMoD2cUvts/34NZgrDb4JeZALBgpN
	 XGBcXkB2G3drA/jltT81RcVJuuuQlrMp4zmmaKO1+mUOcwhbwbk6aIIDjf/Cf/9yx1
	 imlDdgvhy9UEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1FECD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917463369.21992.7701273876362198799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c142ffa0ceb2b87545fe872055a1e6b2f02b57c6365fcb887b5b78069fa66488
Date: Tue, 19 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779174633
