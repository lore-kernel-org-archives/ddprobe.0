Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C0A146D7F
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725489354; cv=none; b=ozMOTqPn7U8bJK8hzNA6hOrmdWbnGzhM99RRJoBtZqfSJAeX4Gr8b9aj/34YCN+lYYZubH8QBPbH5+Re1TkcnirwJnjqPeDMbT2nMxvpl+UWDwNv2zwIJLr81j43vVQXo4Yq73Ecvt4VztUekWeR2gNw2L0sW+MunOwjmIFO7w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725489354; c=relaxed/simple;
	bh=NbXLQJ6vul6oQV5BPTiiywBw9UjF9XfS9o0uD+HmQTM=;
	h=To:Subject:From:Message-Id:Date; b=OywE7PFEpzSFPP9SYZJPg/ll6Mdcbm9vzgkInuhJDXxjVumnx7Y5MM8YOeGFhw7Wyeey4zJgd2Iwqxyv9mXUwmYagQHIKCV3THToYoV7iZUArY5k5nyY2vu2XWLAROOlg9c4Ta1+DsYVo9UhyJF/jfrC2bEpGJ4Oc9/lgeiSwbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjkujaRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjkujaRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B848AC4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725489353;
	bh=NbXLQJ6vul6oQV5BPTiiywBw9UjF9XfS9o0uD+HmQTM=;
	h=To:Subject:From:Date:From;
	b=jjkujaRkuuwbTkvs64vvEX0xloaaDL4PljsqDFnWPvjO70N9sRB9fUDSD12HkkBcM
	 jYGmGK8DO9sZhg8gUHCeybwAO1US0qjffPGjPvRSqbC7v4FTiDX2CU/ZaAFJMRFm7U
	 Db9x56RtSzDENBHCWAD8jLRj8wTZM3sacY69ZNXVbXhLh66tva4JlIj0ZrNIP/qu0N
	 F5FBbuhsDHlA4Cuo+Pmoit7Sh6XfH3Woz+0oiZb2hlzMJMhYykfBTVLRodTQ0PnHgF
	 VrW4irT2KGlgUrQbqwiTk8oYYlSlJmFVWlxCgOe8NlSumjL6JFgnaMwRUGp2SjsL3n
	 ArMdxCbmUnuMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9C3CD4F3E
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172548935362.30461.14227418812562557604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d378d08f73f8f7da1f2daf87a9e89e9898a01e4db51a64a55d49db12a554640b
Date: Wed, 04 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725489353
