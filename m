Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F6A13B293
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757985595; cv=none; b=pgZScl/YCnKIHHDY7qafsLwcSrWEhjzhR5l0euYPGi9uOTtudjMkHkmOw2wtNIy4B85lqYJ166BDfzCKF4pZoZz+XwoGafgrzOd2wfFwO7N52Yd5WgGwtH34grVLCsIKQEcsnp8VOhB1WIRo3vtDfCpe0z5W5N/ODMfsr6OlnxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757985595; c=relaxed/simple;
	bh=xauIMQnZGLAUCVB/QslNQLQdL1L2HpfjmvObGvo3PFo=;
	h=To:Subject:From:Message-Id:Date; b=IgLz/TOSoaAvk3fQ8qncOWJqljnrixNjhw0l5/5NqLRTyBJk28+XkOrAMvYa/WXWsYyauvow46IyP3M0fULpOhTzcfwn0yoWxRh94+ZYUh4xfCZupzt8wx13tH20QPdhSgq8gKjKveBR1qzOHijgdfq7neGhbOzC26yylvNyBNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBC//F4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBC//F4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8528C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757985593;
	bh=xauIMQnZGLAUCVB/QslNQLQdL1L2HpfjmvObGvo3PFo=;
	h=To:Subject:From:Date:From;
	b=sBC//F4RRBuC5xob2BNoDYWOZXLLKZGf6i+zJiDwiTdZgLhP6Vl7XS5qYfiY+nh/X
	 qvVt/+eYgyHWUCLxOkQnTzzfC20sWEfgqaSBr7WR6UwyPuRTmwB+r0so/oGTvy43U5
	 lFZu5E90Tpw+F6YXjwt9DwghLdxZ7EL1H3UUCMNyGCT3BdMM0TCf9+QKXmBzzRI6RO
	 k6h6up4QVyun8RPkMIWQrOP3DlBbkqqkQdjt6sFGMSHGiQb5yN4Sg2L8FAPHUyN+fl
	 JAhs9w+CTH8hz8FQfGuUThN9yJ8edtZBfWksGj1HsWLlBenJGBL8UmkP+bCAdjFKE3
	 vJfxzp4Wt94vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D33CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798559358.32260.10212565559897227196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b92b99877e4f539f65705b90cfa835d52c49b5cc33f6fc8f86e76ec20ec828
Date: Tue, 16 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757985593
