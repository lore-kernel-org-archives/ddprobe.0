Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE2C323D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742951394; cv=none; b=eyJ9ommhmzX4aJJoSmJNnmC2BUixTIpBoKWaLR7KTI1E16QuMijfy937bcii0MQNHU0Y0ZwdaCjiiwM01Hr8DzrFHSk/VTeibpLmsOFocO/+GE/lnynhqTu+e1dQoSKlG2uEL8RrnqrgLSOLcHvVkOqkB0mzuWiQlbCE15TP/I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742951394; c=relaxed/simple;
	bh=tQ66v648JAExODZeIgfwDozPr2qTgIP3HXTavGsm3Qw=;
	h=To:Subject:From:Message-Id:Date; b=hz3tQtnUebsB560f7GR6cri4Xr6jbSvDmts+HB4CkpCnwUQQ1SzpCSOrkCwbrWKpbkvnQO1LJoPsbtSQpC8qugCz15ZfMzF2dqDE/dct80vncfS8nZHot+k7zFCnACjrxc5rT+MF2sFia8Df6kPzELTik4aMcC3Nwzv0ykCruBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TljBO7IM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TljBO7IM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0399C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742951393;
	bh=tQ66v648JAExODZeIgfwDozPr2qTgIP3HXTavGsm3Qw=;
	h=To:Subject:From:Date:From;
	b=TljBO7IMFtWsuWPqe4Ug4yS56Kz4zkWx8ZJgebbDS4XsQAUFbuLNtp2PZrOQ8gpGD
	 8gFV2EjVbTky/qq5YE1GW35A3euUxww//wbiNtXcgHGrnay619qQJSMDP5n3G4AKk7
	 t/w/ydU0OL/lzU0zAQMk9XPieb3N4s6BVnYr1oWBX9BaFVFkk3JSCRSmZVgge89uI8
	 0FrOklyyvjR6G3ww9/SIVrYeUSBug/fD7l9FU/k9y2DgixYYOlZ3nL6SmVTX2Cl4tG
	 8mu/g4S/Ehy0S6BTDUIk6eJLtC2Kiv/B0HfgRysjJSeYDqbi5VKjmbmx1GxLEtLSmb
	 G1qErM8bkcnjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9E0C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295139360.16007.1525983417383953810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e36b8b93a3eb1d336aa4bf577f9251b68743dde983a2dadeb31743693a70a8f
Date: Wed, 26 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742951393
