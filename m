Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5B918733D
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726872954; cv=none; b=ThrN1B1Hc+mZBOwo/DOfncACodKDxpnoTRNRCM+2U90/5Iv04zSWgGyrzk/ogpIm6Yvaq8XiMSgzi1or2P93RFhJRY9QVR+sgkVGbcMJCCeko7r9rt97LFzD7HgnDQ3H+BEgTMp4k5UqowXtari3Ot5PUQrCJ4GDv1ZArUNuVj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726872954; c=relaxed/simple;
	bh=goEu+97vIIkwBun8V/IkGOOMbfVVADewTvv3N4G3MJ0=;
	h=To:Subject:From:Message-Id:Date; b=DzDZQKvQCiDwN+neuBOn4pUxyxqsBsHErwtx+QC7BsnM+DDhs5I83UUbS6jI9F/97eSZi+AxVt/JWc9VWzPUm8RZcrpof3bcmfJ3cqp8qU3b1ogAl/BtkFMgAx9eb0Mz6nkWm9CATy0ZWdu83TMoVpnmddJo53UyRs6Dmgk1rhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxWb03Xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxWb03Xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0354C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726872953;
	bh=goEu+97vIIkwBun8V/IkGOOMbfVVADewTvv3N4G3MJ0=;
	h=To:Subject:From:Date:From;
	b=gxWb03XhywBZszGvWy0gip7p9N6joagQAESbMdCBsca8rq4xVENyRttdpKGmZrFng
	 e8OJflQa25XA6gu3YKBO2UhvvFmw8Gm8a1WCvgU5RngP2KeVnDfz4JtUhXvueJTtLZ
	 /wKKekuvSQ/FtosogVqensbQvvVWPlLr5Xvztv+Ds8Ky9xHpSELKJ5hFeufk1dWyQo
	 Fjo9dzMRJXngd9LX8190PZM9o0y1EH+pX0a8xX06mA1PsuE6iA/BD1TtnP3yRquhWk
	 jjdYHnzmmzq5xlhe7AU9vdhMcK+OGMjjcuYkETy0sHfjfU+Y495wEyitY+vjldmucC
	 2IDouTFIRdJZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C382CF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687295360.18015.6927239520920922755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9070e26fba5c14070ff96c254e1785f25aad0582b2f2a5225bc9297fa2e7a2c
Date: Fri, 20 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726872953
