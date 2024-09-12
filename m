Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBBA15C3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726127154; cv=none; b=SVmN1U+ia6E/I+Ie/zs8hes+H3bxrKOjL+sHkJcjf51SGtJDA8ST1EQYl92UDSd5RST7mYhTW9kxxWaHbT0bCIlDOgilVX8PHNFDeRGuF4O+iHCIgqtiu35NWlHDc7XuS3TIqqOykOe5X1jm0+SIHQsr7SpAPBryKQGExtJVmYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726127154; c=relaxed/simple;
	bh=EOnZ8JmbGX8HnzR0Rwj5dW7ozzRVerQBNL4knbFBXFk=;
	h=To:Subject:From:Message-Id:Date; b=NfniEYWADh59DnzGb9hNZo5QLrUJVcPTarnMbKTeTjRFSH5MMZnIFfIh4U8iI2gEMXBFe4wcVgHRObrot9tEQzmlNqLdAJK2+wYug6fQzZdRddr1aUGKI8qLrBUC3zPpjVPye8WGLhRtKy9w/Q5hu04640OyvZwgmKjmD3mjRF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YC6ldMM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YC6ldMM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4462C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726127153;
	bh=EOnZ8JmbGX8HnzR0Rwj5dW7ozzRVerQBNL4knbFBXFk=;
	h=To:Subject:From:Date:From;
	b=YC6ldMM0c4wvEGmtJa2ILhrUJXuffvkMPo2NnyiefzKOGvt5JMAxkvQ4P3nk8p5cl
	 8Cdx6DQZ3hECXHNw2R/0cNe//lPhyaFWA+u6VkoPp4SFSk2e8u0kSKd8VSsIWs1sst
	 VeyU6JsORMNmYfO3aPpOQ6K9AqDJzvEkX6huCjrK0Y33mr5+eld48nLP3zxB6+0d2C
	 gLJK2kv6zOPxCmZCDrw5B95xsW9XFLSeDp0FaoWFb2bGEJYztIsuJycFC4QkfI0JPr
	 pyu3P28k3oi0HTCP4iRwUY85eQrXGabphNXeJnNSWAtTgMzO/SQMNLcEL+a6S8paMj
	 7SIDyTf12nEJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975E9EE6457
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172612715361.5589.3979871264301263092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2ca4e39c247581d663a965e827ac125530af653e86aeb95f433183f519c04b
Date: Thu, 12 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726127153
