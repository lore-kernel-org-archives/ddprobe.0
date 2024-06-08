Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614CD1FBB
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717860443; cv=none; b=WCXKfH2uh6zITkCW54qv+6eSGfU7lknYmqV0freLKwZMywdrs8sFrhQ5SQe2YHdA0w/MDNtP+mJG9dhY0GoEMq8SPcCHol+B3vkXyaW8+Ssll2q1bRIHiQYt89xDE1LBbiSkYgg82Dxv6BXgI9uDjpmH6H8syRrRcK2NTQRvREk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717860443; c=relaxed/simple;
	bh=c+h6WpdA05EfBz0DvHj5w3mDhiQtQPLkG6RINvi76qQ=;
	h=To:Subject:From:Message-Id:Date; b=DmIfskjyleRRkLKkEF+kbS5Ao3VGOpqny62Kl236HvPwYo156fU2CJPc55icGVVWJQ/ObzUAaYQKpHWOhP2qhD0t8R+pPe+oq/4cw4WLd4VpJNC88eyG4vyDoR0Omvo8zbPu8Ff+neAXlQnzpOEvCDZpp+0SZtYcdX1vcNEjn58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVoa1PRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVoa1PRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F7CC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717860442;
	bh=c+h6WpdA05EfBz0DvHj5w3mDhiQtQPLkG6RINvi76qQ=;
	h=To:Subject:From:Date:From;
	b=OVoa1PRBPNCSbymeS8cZPbo2JmBtlYZmC9W1+4hQN5thhgwPhxKhBjSuTbqxOr4D4
	 4ypYvOUnBHcMfyEacCH5zJ+hiNADQwuzg85u6wTWkayCBEgO8Bk/C4xesrI4R0ayv+
	 oXMi+UjgFQW6ZkCCemnLv4DXhtecq3L/YuPXK255EXozzCT8DxS9tjvQ625pzFWXmQ
	 nrIOISR0FjTDJ10kwhtKaGmAcXLvVngtlBJQt3mqU8IZW07b8jVm8OLNe0ecG3YtgN
	 SC62c36CvsuHNscpj9gR9iobyTuAdn++u545ByXrvOm52fPR7DjnJU4XBWqJYMLqmk
	 61tdd2GVdVB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7403C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786044279.12878.16794245101328525380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8520d204ef78c6e58531c16322cb9cac42c866c7675e63e721924b42f48104d3
Date: Sat, 08 Jun 2024 15:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717860442
