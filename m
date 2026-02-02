Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD5735DD09
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770033834; cv=none; b=L0dHvALe7vdeWlpXEXSWvI25mmq8PrZb3NJI7FgLTmcUylZ2VNlN/ZEn5I54RhmU0mFPW+GVwEJqnnijR/e4QOe+IwUBlZsb+Aw+2UcqMlK8wWDezCcc6BUe6QUmBV9Ot9uokenJ3nQGXoIJNqHJlijx1rGy32jP74cWDCMFFoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770033834; c=relaxed/simple;
	bh=1tfzKmmY/EvkIQyK3BvERL+aBilS35bkDbs5QrkmQgg=;
	h=To:Subject:From:Message-Id:Date; b=unfgjetKYiv4RZK7kauZR99VlkEPhuK1bWH9CNEAunfzhmISSUgqJ8WBpPKe243S2vd0gMTbLr7nn+k9lgQFP7EDqPFrVjDs7+RlwKNIqjIhdwIM0AYQfKH3x/Og8NqLV6STCc8OHsxqAoNMtdfX+V4QbZgzBslpjxzwyaIp8No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiyNz4cW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiyNz4cW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC9BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770033833;
	bh=1tfzKmmY/EvkIQyK3BvERL+aBilS35bkDbs5QrkmQgg=;
	h=To:Subject:From:Date:From;
	b=MiyNz4cWLjL70qfhxxw7xXVa4OZ9fyCdaHm8sT08wVZPcWbIrgAjv20kC89yJFvYH
	 xGQYA3QTaxTtpnnp7HZZMElmjLyyWvdSQA6Co2fIYPUDDnpsDg6eKR5riuvc+MI+Ln
	 2kT8q+I6svqdUdwyX8I937eRvHmbOOddJW05DJbaoznjYeTnRfOZ73NfOFIOnZXS27
	 9cMlM5lS/sDs29icYeiywulSevGXJGRAfzTBt5ZRAubPmVI8zYDVik18wsY24a/QWv
	 Le1EMnXPSEwJiLMR6bQ51aFpIumm8uRrmLQtnMMSAfxXVDrNTqd7PYFWEhgCMYo3F5
	 Tva28TNWDHV1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48F1E73158
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003383365.7905.1234872090067168326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c00fc150cda1c31a83f323995f92b4d91725f4f70d1993f15d14d5dac44ae42
Date: Mon, 02 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770033833
