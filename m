Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A90F3783AC
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785976834; cv=none; b=iWVjURtmSIWFUS2nbMg7J5gtwDpcyZkVB+1xHv/Ee576AdkXw489Ni/cBbDRc8gRJbSlLvwmDDOCwuwLm2CMznle8uIZc5SX897snTAFUE72VAZb6ktJKtayypUrG1M8w7wiZOwvLtC7yXiWc+BHq/5X8kTvIs4gE3TiLy3kiSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785976834; c=relaxed/simple;
	bh=Uy5PDEIpy0gQTHVjFLUSROZ7x9dmx/N5a5148UBh48o=;
	h=To:Subject:From:Message-Id:Date; b=RLjiM8j0O81UL6eeOURQO7C3qVdCFx67yEFGyrnpAKLWoCl6msHhYz3xCYbTLyYkgMW1RnQBf1XMekIlDow2Q/EhoCP3fuejx3w3bm1JZcJwx/WddHyvUcIfGgs29CvaLKbntHsavbi+PUCPuZP18eWCMVx+xxTyGe3zNks/HD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHN5XkNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHN5XkNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE314C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785976833;
	bh=Uy5PDEIpy0gQTHVjFLUSROZ7x9dmx/N5a5148UBh48o=;
	h=To:Subject:From:Date:From;
	b=aHN5XkNUlVI5prhbaWxPEpk6GyJnXrz/JW0xsd7VvMPEScXkhZWY7nMn6dCZQqEPd
	 GDhE7IavT4DhrNCpIEwBs2Aot4nN3508kqTxWXyMYnu2hz0poYrtmoZ1IuoBWa31Mq
	 AP/7SYwiJSUsijd709opSjBz0/S9Tl/VzH/iaUIt15tSl3gx0lvB7JIRICJ/dO+grT
	 VyR6SCiiqcYJjJ1qum+bpPHrFwHvIeo3WogVD1MniuTM/v5OETT4GfI+oYc6BXXbVw
	 yzPm6tnysE3SpqEK7ru4kE1X+bkcIZlvS1yXP0IrMpYF5u2eSKMZD7wEc1Zg8GyZm0
	 M0B/HA4ADF6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46EC55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597683368.23184.4862140235261862348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c510eadad69d006aa6504e5957b57ea3e7ea7fe7330eadc92326c18bf77c80
Date: Thu, 06 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785976833
