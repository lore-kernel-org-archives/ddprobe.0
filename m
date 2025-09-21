Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9782B9B9
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758428394; cv=none; b=ZSzApB0zotKLPtw/nPFo5QKC3wCPiiqwGKapHwI3SQv0pbub1v0Hj1UiNetrufAf+/gnxFKu+AOA6ajq7FwDJpe2kMF20FpVOOxNRn8Y1QAprc1yvxu2P2ENJYVO43ALZ6ezKPgZ98GpZFNghHJT0zAK2o2qJJ66zZw+2LiCEeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758428394; c=relaxed/simple;
	bh=fKehkX6NOvLPdfdFstWYNglgLjlYDjedu4FghIOI8Vk=;
	h=To:Subject:From:Message-Id:Date; b=FW3s9x7wy4pfeJhsb3REV1jt7GVWyrBHdBxKud7FenUwqxttVhlKaGpLziSbDme64uzezKBydDKaXk5zPndiv9lnSFnPU50rllmY7Ay6CZ5l0/W7d78FyQMDaUWdhJGcI+irtbWYZBNYCjTfDlzJwtveMQfFXHZD45/Ao0BdqR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By3oGTqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By3oGTqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC81C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758428393;
	bh=fKehkX6NOvLPdfdFstWYNglgLjlYDjedu4FghIOI8Vk=;
	h=To:Subject:From:Date:From;
	b=By3oGTqalCcw09FUhO9bXCJ9O+Iqax6g0n1XVB8W7AqlooBIaY6WNUQ5TNySzGQMH
	 fHo68yhrqpULVnwX8+IXyy4x38JW1Le2Y+D9Jhyh5py3gpJQlDZPvK5sgZoLTCPL55
	 R8fDsDkGm/WJ1b0HiANAMlJ28t7FUf/W7lrzsY637S4m6ueIxSA8EIt41DoBRiesXQ
	 sLfhw7jItHJdMTj9mpMRVXbBxYSTZCXDHcARbe/FNPtkUTNHQP5dMUhuCRmo24K2+9
	 yWYNpeNTVt6MmtpKQWPwxWtR7IERofdvtaxRPEJ1wqrDV3MAHC22CinwIzUnv4BwI9
	 DWoq4e/k06QtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B11CCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842839359.31725.9042761976478502138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2adc1da5588636324f515a7e6716c390e84e281316f885c9b2992000954cb40
Date: Sun, 21 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758428393
