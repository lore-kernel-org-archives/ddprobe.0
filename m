Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEAD22C6F7
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733696154; cv=none; b=NAH+Wp8Jhe54zpqAkt3oDjIzJzasfLvXlKDkjZc0HrW4XhEj33/GpK2xWELLePrCaCaatPcrGOr7I2jkMs+q86x9K+DeTlHCbWzh+DSLmd3cSZMJ0eKL2V18RaqMuf10W2H4t+L++yoO3v4TF/mDtPrrfTJFdiLtPDBl7OPYa3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733696154; c=relaxed/simple;
	bh=AM4+f/zw0idPeS6V5+mikXctqel6Ehl21cxlHApmt+I=;
	h=To:Subject:From:Message-Id:Date; b=N20ve5T1FPkJKwVHpdVLByzgwKusB0Z+xGH/PbFnoQat2YLner5gQmRzWqksZIrOTChJ7s+J/rCsvqjS8cK3ZUWPW6ggwXSsTef+hoWjXMObF0fGs2kyBVVMcs7YOqj1IftViAZa+mYl/UHsDi7TseiolP5SL8rTi6t2CLaUaf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF/5lXxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF/5lXxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B637EC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733696153;
	bh=AM4+f/zw0idPeS6V5+mikXctqel6Ehl21cxlHApmt+I=;
	h=To:Subject:From:Date:From;
	b=TF/5lXxCAWbG2rzdgevfyHJ51aMwUb0SlZ/j2c2wXdt/w5vRx5bCzf2AjTbcUEHCx
	 PqQoxfraavKzP0OLLXCS4aEvmPtGBT/B635OAX+3uq5CunfvSSPDudUD1kazkYkja9
	 u3vKMlcOnRe624S+yQLYGZA6ixMAg7yY9895L8LF7QWc3jV+TJ0+rcOa9OFwxFJ/8v
	 f6SUZeF1jW7zjv3BcTDt9rh/YIDvygqCzMPPGs8ZPLnZz41xQ1GllBG4UfrdUNwGO5
	 K0ZScqOEjUJuhoKvDNjDi+8/cGebISzC+XoFSK5Ap11FwokUZPW7a/G9soW/DOEEnZ
	 faDBj0K434ZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D812E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173369615361.19920.587218560375039348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fbb05a808a6d4bc1f8edbec0c2d0e7f2e05ae7322e8b0dadf7128ab9f9d050
Date: Sun, 08 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733696153
