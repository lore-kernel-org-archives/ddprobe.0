Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD241547DC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727963754; cv=none; b=gNuzy3uFg7Nh04Atj4oWqf7uPiZT25sstnqPzBCvvdrlXZ2bO9IPymOvfaEUSXjwHa8N/sQ0PXMw2BuDJ/vzkW5XuFQ+fUzy3IclLnj79wa67y06pbmbcS2WvhBXd8JEHdQjW+4jSZI/G/e0yTaF8xycWVcGUK9UESjRO6Y7JlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727963754; c=relaxed/simple;
	bh=ICswhF2nkbNpTu6FpPwDNCb/9vX1RBY8RFvcyMZgstg=;
	h=To:Subject:From:Message-Id:Date; b=bjVkNHih/TviNtNxY44By+IGfvVAjMGlu9dl+jGCqxT7SZi6wq/mL0UmLIFj26fXHYozeu4gi6RT5qFLPCUMOMbvB4yhSsD02AlEL+jvkviTNlM6IUnyRnHK07ipIUzpVPI5tViGKTrOBfl+3JuOjCsLYGaXhDqdIJBzJqEdq4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4qCsfDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4qCsfDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4852C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727963753;
	bh=ICswhF2nkbNpTu6FpPwDNCb/9vX1RBY8RFvcyMZgstg=;
	h=To:Subject:From:Date:From;
	b=U4qCsfDgAm7529ySZJCLgGiCQooiPps078aMW/ZZv26MOY7ob6zFHFsOT+8QJAnbq
	 LyvI60F+BzB8PK1b2vH0KzoESZeljF4/x3p0GAyDcx/rAb542PB+UfuzSK+bkwMCe1
	 /oOkSKMGmkq9ZtgyRkA7tfrlrnIVvDktKTPZw9AinbB28fROeyNilqGOFf1h9gbgd6
	 3sqKyoGvQBD0pvmeRwUK+HcyYtqU6j8wREyEhvHxciJudgeA7UkZDCcm1AZdRqpwp+
	 URI6mHpuwbtKUtRnPNsBcEYHj2MgmS5+GDax5NcBIfASsQ14nEevJJYzog7pLTaHWP
	 L/d6AFS76pJcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996FFCF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796375361.20609.11212817080127186297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637a414608d294bf8595967b4eaf2dfe8a7961c9cf92bed5e2a7283092041eb2
Date: Thu, 03 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727963753
