Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2072430F957
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756388394; cv=none; b=a5RwZtOCH7IqLh++RW9p4pQGqvIBbJixFvPm0y5YHwgdZZxU/cfLMGngC0iQvRwN3y1FlQ5X+aF8mDkqQqdpVF75Ua147/NB14qQxFTcUlhA7v2W+bW0lRqgvKvm70i9hgth50ioasrsWm5TxzP0j5GFvFxwRmEJbinzAeu2n0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756388394; c=relaxed/simple;
	bh=+59Q73MJ3c42SWqIYtbOYNRf+hfDzMPQcj5RFHh5AsA=;
	h=To:Subject:From:Message-Id:Date; b=ekV7Ufx2ai/awfmbMRMiwKpTxSxfrzZWDZxw5LIMGkftEl4/VQUTPVVQEkc9m2rlwQNuFYDYGQltWzgv/QUmHT151kJztWK8xMgVC2jHxSkAwgjS35KS5tJtqRxJUPnCU9XqfXM+dgL3gPCIGjR0VX5KZISbMKIiJ8YrCjiEPpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrwtAmtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrwtAmtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A173FC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756388393;
	bh=+59Q73MJ3c42SWqIYtbOYNRf+hfDzMPQcj5RFHh5AsA=;
	h=To:Subject:From:Date:From;
	b=WrwtAmtpkiD0FttlN1XaTOEC5WxVGqn7kEaJr0OI5xhrQ/cam29VY/QTW2fnGXDHM
	 SpQQHVF30L6lGfAJ+2ymBP0lxtwkUeDXBNFZkZLolGHDXCwHHrZ+SmBGATEBQ43CnL
	 WipJrVg2+o1uh//XPHhmzymhGvFIi5dJEvASxDg3/VAbdE9HoxtPGlH7aBMFhYbbG7
	 gVbCr52wcYOjxQtJpVdro2GUVOvGfNykVb0kxDtmKlR0R+8t/gIZpj4pECyI8Bi6uI
	 Rt4tL7Ax+jDxb0klmJzafzZe29NEPvLphuz6z4S0Map0kA6GaEUGi44tQ9eF3nRdIR
	 oQE8e2nNtQi7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7BACA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638839357.8611.16877119114794496566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8e0ae9e1cfaa963268739a389bbb99f3fc3ce8efed80f31ec2ef2612c82795
Date: Thu, 28 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756388393
