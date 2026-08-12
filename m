Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD4435E1BD
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786519834; cv=none; b=YfQkILSO5CFN4+aaN7/PpnsBrnx5DluJPpaVUVQMe1pHRlR6Q7IjgXPoVd6IvXj6O7fG5UFCJWrcNhD75bBxJir/fvk75TACbrFAivQp5JJ1H8Rwb1Ek5Vj6o9YqoE26q/TgEMIshVc0FaAtyqRFr7kzLwjpMfwNWF3s890cOfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786519834; c=relaxed/simple;
	bh=GC9EQ3RZRCFrSQN8Djfg9vXkqKKrR8jJKIVp+s/w1go=;
	h=To:Subject:From:Message-Id:Date; b=otBY8Yk5FLNYh/cupmI7dkuqS30OA/+zK3JCDz0WwnPqT6Ck6n58JSwK9fJ6u7MdUMQhBpbri0VJZifM2vrPdSlkhBMIXg9b6rzRlGDTXa0q1I9Y+7wbCpn55P9pggt4IBY+u/C6S75Y3jQd2q+Oj+Y8peS6mJxXAFwIJnR6Idw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYB59/HL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYB59/HL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA571C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786519833;
	bh=GC9EQ3RZRCFrSQN8Djfg9vXkqKKrR8jJKIVp+s/w1go=;
	h=To:Subject:From:Date:From;
	b=qYB59/HLamzPsA0oEhKk4zIuHIqkcLPcWz/SqscuG6sfSSqG9KqRVczIS4Jf/Mtxd
	 W6BD51GJCofIClyvAsfbFVWhgO1rEABuEHze/gOS9qqX6meTDi+o7Oy0bTNkFkkDhz
	 ylaMbGMCX8h+FZqTk+izD+WhTe/UHRpI8UKji5KPgKIme8VTJKGQnzbfPBk2UYHEx1
	 VP+sT1VNplTWPL0xrK3I5o2uxHH4aoFkDh1lflY4HyuheXOpkKiRRR2Xm0uSfOp8RP
	 x8hXBgSdoGaMTnpamnnMESTG6cD1nhJKHLA4+g/TvR3wbAUWNQJVJEUoMkEfzBLIY/
	 3T40qjcuHipmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8609C5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651983368.3244.12143318848137216029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dda093702e84b3f985c327c7f4640bb46b9805e917e03f4441fbb6db070b8a
Date: Wed, 12 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786519833
