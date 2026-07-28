Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6FB3A9014
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785261034; cv=none; b=AgANS6o8VRIYyCg4KYPZJnpxZrHzVCDxgc1Kwy2VYTuyw9Z0hgxyp/MWwkRsbyWBavDUmkimcXFMPWapKunal8ICc68O5JDKlDBtkw97L9M8nrhE0DnAj0IPIgkGrLplWJMI/uQMdYD6HGNsMoChZmJC12QBHyiOYT71rK3g1s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785261034; c=relaxed/simple;
	bh=chc3Ymk2MBWLxIAWeGhuWqy6+26MjGjJvlr+oJ5IAqE=;
	h=To:Subject:From:Message-Id:Date; b=pDiDB+LhApjXiP9m0SXxZfhYe79jAENonPlNI+ZIWd2yp7psB4sRN8Gb68ZVoD7AnoeYj9KfLvkxkHSPMmG8jZdngILl5ppqA/izbugGku9z3CYG1WaBwKAz+Ve9U5FyiS3IC+WlpAWd+/KpbEmffeUC8Lf/8MBhQaiaGLEk2wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irHoYjQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irHoYjQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFAAC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785261033;
	bh=chc3Ymk2MBWLxIAWeGhuWqy6+26MjGjJvlr+oJ5IAqE=;
	h=To:Subject:From:Date:From;
	b=irHoYjQSwINjymip4Jz/2tfocy8q41fY8z0wnEQaDN6e8Gw4rYLL9X4qQF3HAy7WR
	 lwje6Ghf9w6xCaOvKW5jyktjW+56IPUSKhzp2q4N8l4CO+C8Ud7pf1II7JD0zW71PK
	 RuSkfeLZ8bkyfkRamK92Zb02TQL5luJ6dLCVZmDBjFgwnime2TCQKE1V/spZeFCkS7
	 LwU9j4ooBkqLYm2aJC5YZy10RGAx9Au0QTkhrOgFfE0MAlCScDVPqQ1/OPg+xRdYB3
	 D7UnUBA9HZjpL6my11DexDUgDYQVze5Gwa5vM0EoYM5Ar6/AlWs0tzaiXjUcfKfdNz
	 zypdmBhnb2v/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C32C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526103368.8639.14999129852693776254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4162990c2c40c576c74f1e60d97c483b960e1226b71f3b79f9bf8e462d1a38
Date: Tue, 28 Jul 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785261033
