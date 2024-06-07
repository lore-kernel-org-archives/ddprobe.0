Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727E715A86C
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717748844; cv=none; b=qGQcjr2N01SrJdkx3akZBp6N+khvMsySU4IrIDrCOUgezRaxCBl4DKgfIKWICUTFtF0tom9gifSROAY70Zufo04cO2cJKu8G3rarLcsJgBBcDgp0DTlRaWJMGQs+I3kC/1ZKkoeFsako9SoGZXao7JMnXWZepkbKwnmE4BgeT40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717748844; c=relaxed/simple;
	bh=u8yz379TJzeMr49q0l6AnCdSs6a9fsMlJ93xjebgK2c=;
	h=To:Subject:From:Message-Id:Date; b=L2cBwtHmZak1mlK0gyO7PS8m52ETa3FbxGGqjrV/4FuQSWYcM4IMA+Qdi5Ec0h0ETY/wfV7u9ZFKDJ9k9nNROmQ2p2mf2WuWt13bDXH/CnpOdIha92mz1WaoDErH7k4pyV2Sx2e5rSW9wMXNb0f4qa0x8bfhyetuLynB98uZaE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKh1w7RM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKh1w7RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F138DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717748844;
	bh=u8yz379TJzeMr49q0l6AnCdSs6a9fsMlJ93xjebgK2c=;
	h=To:Subject:From:Date:From;
	b=AKh1w7RME7drwCwlCn7epLui7WxyZAtqu950QgMSA1JtKLr19DNKTeGGZh9SnddQa
	 vj+JUXE0iDlEm1jXeaG+0meX8MdiTqv8QybqlwZoQQjwNFsNx4W6R0RWqiXM2K6IXI
	 TOYR0mcDUBSnQWOXPv8POJYn2ESeAuJhQRpIvDmf5WvrCj/+Oh1WE+TVA/KzM9m4ap
	 7hG7Ga/JG0kHtQ1BoV/0MBslkp5NVmq8hKzfZGiJwRzIjpNkRy3dcZWhFoUvH/5VZO
	 ZNWmOIdva3bbe+uy3pPKsoi+R8StF/sWhJOZ8ccpYjdAGr0WIad7vjnN40hFbMyxjD
	 ReVjwgEkdW56A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D745EC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 08:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774884287.17191.14822568921512178200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c8afd66f8e790c034cc4a6696ca02687f8af1e07a4da19796d2597a5d6ea14
Date: Fri, 07 Jun 2024 08:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717748842
