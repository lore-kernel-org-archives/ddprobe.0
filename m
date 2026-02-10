Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C13211A28
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770695634; cv=none; b=kvpeCBn0rPvzIdgKpFrup3qNr1aR03WH0ACOQbkwb2lDvf5sh0EY0W6CklnZdSykbuv7s8/1CrwPqWoCWpvihhZ0BTsENPKV16jDBbpVyYL/WfpivL6pH8/gL44lJKjNqcpqt/Q5ALTWkmtZKrLbrWBc9CQFQh9XFIAwc3cwOg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770695634; c=relaxed/simple;
	bh=Dt+7aY5GOflYwyA+mwCpE1ri+nvzYpLwyhgoaBLfBbw=;
	h=To:Subject:From:Message-Id:Date; b=bW8O+19mUub7RFuIfodg52oLogcxRDsKqEoUXlssWB+74UODTr4Ls0MTcy1s9ufH3fnTxEnPcX3FLZTeotlQ9FFKfLEOkml2IO5zNYuQ4AnFx8rEV3xrZbybRlqphR+/jzH/fcNyA1q3lzBj6uCnFkKaoo3i/55VENW7CNMMMaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQnGBVHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQnGBVHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3799C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770695633;
	bh=Dt+7aY5GOflYwyA+mwCpE1ri+nvzYpLwyhgoaBLfBbw=;
	h=To:Subject:From:Date:From;
	b=mQnGBVHprqM9qbfdbaLWRaDxinW9z7Tv0StZLQVS/gvaPt9zvtpg/pcJtkng41Lnw
	 LvEKJmuzzGhTAMYEaFmqB9BxaBXW8Y+/nauyhtAJJnhTB0e5CF5eEzB1f8tpBFMlPE
	 dW7lRYaYNy+QiAb2VYxQxP/fnjIv+bdDCBr9EE0mmxV3H/fBEDrK4kE6a13v4bQph1
	 acInzM5wq9pIrXarJhw/2psTCUf0sNqOldp/rIAsVV8cUHxHqk+eCuxsAZuxtWFJHy
	 Fezn69b9aoHQVL9adEPIUoP6vtvMabSOvhK/wEY17mlIOnyx7nPaMPKcfSJVDU7xcU
	 yl6rJBI6qB7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCCFEE6B73
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069563362.2325.8872400183796360863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a98b9143be26150b1bc3ba1ac079b2e84af1afaaf16a3f27f85a7e559a1cb61
Date: Tue, 10 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770695633
