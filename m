Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4150F86326
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733951754; cv=none; b=JYE2RfzHX4glXUB906jb1BEdQJT7+tVIiUzsHxAmlZCTpIzIqlYrjRNNGTqpQQcVY8UJzkX3aCCbTLx20VWagwi73rw+qAvAuUFA81HDW5ztVRU25r7oE3vUz18CH3QTQKhBzCetIwMZRdEpzxOLA0Ur6pvI8PA1qrKkj4geHwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733951754; c=relaxed/simple;
	bh=7RsGlJh814Ky8lde5kOaw61JZJsTYyhLProOezIyxAk=;
	h=To:Subject:From:Message-Id:Date; b=IOCGsxxb3VJz0X2ZX/n3X/iienK76orKxzqUfpLlAiBmMGaKjzc9XBoqZLZvXiJCcuR7k4UJ+vxKSBtNs5IKf+iRpf0VEVyeaWmtjRF5pNWddafzfH1med/2R00n7K+UQgEx2Wg4X3E75xCAhZgpaleE1jZOPah7zmLxvn+qmbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/kuLTAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/kuLTAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9263C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733951753;
	bh=7RsGlJh814Ky8lde5kOaw61JZJsTYyhLProOezIyxAk=;
	h=To:Subject:From:Date:From;
	b=J/kuLTAMB2/hMjq2TdldWYSykpKtTRYGQbCPXVQ2vkqMMVwGAYUTXu6UTC0vy3BCK
	 QEat/vizYFjhLILQwllj0bU+HgLSOwNRerCxrqLPVipdHwG4+vVu1LRxj30cyGvRrp
	 d7hTGsMpN4B0wtVCB9JuO6VKirGZ4xVMv4uBcAiiYeLamV3VzAJ2yXsHZmleBxVqbT
	 o1UTL+e0JEwd52IFqp+CQIBNYhmkXoWYzu6WR6p+A6t2bpk0qnIr7A2UP0QKRAEU6E
	 OcPkeG4VoXuUSYOxQGDOqB7y3M8ILAsyYZOAznza/wHhJ3LSkEqixR2IDtc+ZcrwKw
	 v//GOen8XmJkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A5EE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395175366.11284.1484662220144059375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7157ec5479b0e1986d1e9ba56a370d0528a91a85be339356ca96742e61fe2e3
Date: Wed, 11 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733951753
