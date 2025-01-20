Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3806133E7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737382554; cv=none; b=uZYXKIEe3X+443sfpKGTvet9+Vup0s4mAqSu+ILxyKvgqkkg3XQSG34dUXto+TwORzVYKxuoxnTCSS+QNTqjejDdVYVf3MHA8p0gMBnpmjPo4QFQVFXSlg3E1+lVzFbZrl+HVy+L40bJnBvZ6ZT5HaARzzj+4dQh+VhBBIAR6uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737382554; c=relaxed/simple;
	bh=2PQeAxXMSETLejjJRjCAcZiJb2owINzPDn7zQRzBYSE=;
	h=To:Subject:From:Message-Id:Date; b=QkMAShe8mj2BFa510RFUFeDoj/MP9V7/un9GqjJQK3jzKruYYP0Qa8vLdSKWAbwL+E405ps6x4fdWOsOoqbqKCACxomAo1KNBya6lbOo/T25Ar3uacYuadXnwp+XbxuA6TUvhbs6IVkmEdYxWfzkMJDUkj88i7yNvHWFMfKuB30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzwlaEFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzwlaEFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE13BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737382553;
	bh=2PQeAxXMSETLejjJRjCAcZiJb2owINzPDn7zQRzBYSE=;
	h=To:Subject:From:Date:From;
	b=YzwlaEFYXYwsOyIbiYI+/OODohTAa7velwSgz9oUhSKbKPOtx27lcg+YfeSPUAqIi
	 rzlczjCs3u+SdZ8OlIhv0/IBh1PbhkL8DSr4ZoAASnJCjKla/J48V/MaUBmg872RkF
	 Bh0eVoAgzG+G4jDczXwPz5C9q2SRZD+2ZaaiIpqS8LUtrmECtlnTxgnfFkPIgY5nTO
	 wmlr2HUiLoyM5Q0UFQv5PcoJMac8kcqn9WcbZJ1Q+UHpOj1VgacfCWvkuoMdjVqEqM
	 +aBrxh52gzWcpHeUC9H4nwhp5WHMZ404gaLh63qxY/1h1YpMv9Ws/KW9GXNT8AXZNg
	 w6u2k2ZT5qBrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B9C02182
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738255358.13809.8525544975339796846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450d05fdc672c6ff43df520fe233fa8ceb58ee92ecafbafdeb5553cb436c4c8b
Date: Mon, 20 Jan 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737382553
