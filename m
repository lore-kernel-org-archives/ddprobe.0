Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C135599A28
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789066834; cv=none; b=Vi7vfoMTHhPqbfDU9zFTzARyVqfM/8A/1cfx6BfBWlR6e/d6dYuWDv3pupHnRuURMj/pvlWDiJtqnR8DRVFuSwQmjiuArZ6PtwqiiqM97p/nIBXAQyjJD2P2O16PKvL97A1VGu6eTu1NftuAlBnX6zqMjT1pqjnYLhRdNJ075yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789066834; c=relaxed/simple;
	bh=3z8Sxnb3soYIuCr/2NTvfiOSr+zrKTH7RFJXjdqGQMA=;
	h=To:Subject:From:Message-Id:Date; b=pGrt56qreDnd6H5o2ZWajDpraOttCRJd0zcI7M5eou391A1p73THpjejZ83Vg046XLows3tTdy6vfrpEfvd+m6646pGtbqYnn+T71+YpgOLsLnnja4+VRlFS4hqrYHh5pYDocNhIL4bzMBFgZ4VkPAWL0UV7CKxLG4gXZ9rDYa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRLG0l0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRLG0l0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D2CC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789066833;
	bh=3z8Sxnb3soYIuCr/2NTvfiOSr+zrKTH7RFJXjdqGQMA=;
	h=To:Subject:From:Date:From;
	b=pRLG0l0tURuSLUEPwwvti49lisqHxMrJtgb1sLF2NkNZ6SqtZ9Q5k/iJ0SDq92QGK
	 s3lVMEkTG41s/dHX+Cnp2T249YjB8aKgdHDVOpxSibnAZx2MZsjIxe45H7DLhQ76fy
	 jh2x541XXylBEiy1pdTMCj5Fsf/bdDKyeySXkMiWGH/014jFyIKQBoJ4JdwrEs8QvH
	 2SD3mvlEcUT5NjEUqslf9zI0N6BthSV+Yii30nPZLQczj6+FIZowr9iy2rgoEw4hWU
	 Dg1BXf5knXJiYR5ma590kJAZWRt7ZWL8KvlDYv/wtTlaMYlN9fkP4ILxPDQ5+Z7TOx
	 HdkanSjrjzsZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA60FC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906683368.3350.9055182771643050165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e1c742aa2a3c9d86c1b453c71c27cc1ce1668ca1eb9719fe2d7aad121d8120
Date: Thu, 10 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789066833
