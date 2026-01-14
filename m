Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF74838737F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768385034; cv=none; b=W07KeF8iOs0miPcRFWd+dldDoaLhHJTgXJu/F2/7tJMSM9bBz/Ug8SxMZOrR9F6rl10Z230uCZcibkEBd63DNqjl2JRCSDSwYKHAP/ScC3Zm3CZscVNWAndbDU5cN4edMhkpJL0iuFa3fmJ2Cd575/q77MK0GPMuK1FBr6dBIek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768385034; c=relaxed/simple;
	bh=xPr2F2oPyLwJ9X1aNewFyjvv4NMiXDYVpO8mU4wj/zk=;
	h=To:Subject:From:Message-Id:Date; b=M7lQ2pMvb4iHif4yWL7K37+ScaNmZEbd66uymx4LSgRgm5sPjLJ5cq2RNVaE2p5wFAlnQljDKGS8z6gCa7hHsfAowkbDDhW7M+yElOvBueL3WOM6OuFsB3bG+zujWlWQyc8VkqSqTkYuLaIzTGtpdQH1sxvXlXl7YJz9L1xh/Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tua3hB9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tua3hB9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6CAC19423
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768385033;
	bh=xPr2F2oPyLwJ9X1aNewFyjvv4NMiXDYVpO8mU4wj/zk=;
	h=To:Subject:From:Date:From;
	b=tua3hB9dBlyI+ejlfWJ3t6+D9+r2YV7AFJz5B841Lypp6Mz7M2OdW9Ep8126eCgZ0
	 WtJGHBIoZMHA1GtqpgC7fa4Oidw6NwqA6jN8N1tVXz373UtY/ViDTSuIj0QzSu7PCu
	 5XRfdlcFlsFJ3CC7pe9qz9vFR941/zxP5J3yddLXUfsagLDbFkF+WdkYJ2aROJNNeG
	 lcfGOdtPS7jPyrSfaGWMVwfH7m5fD836CSblEf66c3BtQlNJxVmvanzznR3zfT0ERe
	 TYPutkLBfLuFAV2A4/9gJdrK72/vtCXPz7UR4Nd8Z6zKZ2nxrM0rrCBeBXWQJ8hgtj
	 6Q9QNn5mmEV7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912ADD31A3D
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838503358.1280.14920663265037102124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e9a51de1ea092a97f83aeb3703b71f8fd6e0af9e10c2dd4004040bc9f2c92e
Date: Wed, 14 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768385033
