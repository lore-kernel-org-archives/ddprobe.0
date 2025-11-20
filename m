Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E541F03D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763629314; cv=none; b=kuXI1jLbo+BXPHo0J3PumbWtIR3dGdkDj4RoNRFoed/uBR6cmTVjN00MV8/dTaJt/w40d1bgBVlSSvp4y3LQNOlTTphC8+l+TRPxY8lwCcVy63Q2mwDHQgz1ojNy1F/Dg4z9I90SXNh8rWP/62JzzCDlEinoNEXvGSNGLdDMwec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763629314; c=relaxed/simple;
	bh=9Rzgr3+OFJcjLEioU4oL147t9kb9KfDNqtDikN9fuvw=;
	h=To:Subject:From:Message-Id:Date; b=sb7wmPWd2qz3/74AboqweNtyjTHDCLigSCDb0cFGxNBwQBy2/o0vgkQc6F06ySensQddIUvNx/J5TKJjabddETwfYaKgmHcJuTzlz/87NW68RD6Otj4W6lFFfaDuMVGh5usL/Thvk4IIjWc1exBnJZnwS54zxyIxk1+CoQh0x4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1eEHOWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1eEHOWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA60C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763629313;
	bh=9Rzgr3+OFJcjLEioU4oL147t9kb9KfDNqtDikN9fuvw=;
	h=To:Subject:From:Date:From;
	b=h1eEHOWrMQrYHdYpLz40p361tZMqAwyE+TebEPhHfpsHImvAY/8KR1q1SbGI9V/n/
	 4Vmr+g6ALEu5+83cK+Dt+c7bm/7MkvMNMTsIEnr2uiWsA0LrJK8QYKXYE9BdT1tgQI
	 y3AMdXhx965PpLja0aUUPTQ+BrZ+aL5iItm9mu8g+SiHxQWcROtcCKlquZW9OessW5
	 lLMkeyapT28nKh6wroXAvoGvzCmYmxY4WCJOxEtA9VjIXQU3dqtjBi2WXzDCy7cGbr
	 P+Na1dWcZAa3BfBBQTpsLnGnmcpXDkXnIhKjLK9Kpo0mhD9EMX6Szdg2Z//Tm6ZoxS
	 X8YmRAQsl6Xpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64D7CF8561
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362931365.18206.13911370131339678913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028838676b081d4573691a1af746ed46562800ad8e1091ac6448449eebd54dad
Date: Thu, 20 Nov 2025 09:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763629313
