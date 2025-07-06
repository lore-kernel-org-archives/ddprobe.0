Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297451891AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751771394; cv=none; b=rZysb7a8j8OVGnjaZyPB5a3Z4fOLi7Gl8ZrNDUULfLR/b1R+eQ4n9Qu6Yj22caCyl4o9413saaeom/X8ig4Qd0MEeiRZHzxpa0lIXfnS5AiA288oRDoVxnzn8K5b6l/1EdOfKzil32imZUznOLyUPN4NKyrUXmCFmKw43iNTTFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751771394; c=relaxed/simple;
	bh=/XNL1zmjEI82VrdLsvuagYa4reFDI0L/gKFV0+L9JYg=;
	h=To:Subject:From:Message-Id:Date; b=UDMBAwnghIeLiB44sotNxjO8jKnWDLeJ0mdE/CX2IRqKop5/N6fRh+22cI4HcmdTFqpy4cjyfROVql+WbaaL8s8oVK2vJFFiTl2LfsjVoYQbp+SYAhunVFd7Ff7IUdSieeL98JbKg7TP3WzS/S4T/77AsNxOnQ9AJaN1diFr1d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuDdCkun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuDdCkun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A256CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751771393;
	bh=/XNL1zmjEI82VrdLsvuagYa4reFDI0L/gKFV0+L9JYg=;
	h=To:Subject:From:Date:From;
	b=AuDdCkunDDTFv5SPv7JAMAJgbw/paLhT+o9lGBLPwjBgjrVsx9HUeCwix+jAgomQM
	 VldhWQBp8D/ExbHmAJRPSW69wxian3wbfRD/cW6Sd/QWsnXVemNXJnSBwgfkCjy8Mo
	 EiTjKPkwkxFIDi1GSrv054fUYS8rn6UdoQPMiFD0jtvyNYdblfFkJllqCu8pP7r5lN
	 6sjn5LgUXvjl1wpq5ZsPHn69ewmTOH6khiUN8euylc0XkInXypOlmVdbWRc3WbMpTC
	 fNXx4MKx9Od5DLBXFTj5LiuYFEGyHis6vIkxIqwLQztGlCQvM37DVXiEizh/kw8cLO
	 G9lPdsJBmNQeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A18C83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177139357.28050.2181609888086328762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76725c9fcac57008af97176e2f354adc4f96d3f275dc4335c613cf8a56d0d04b
Date: Sun, 06 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751771393
