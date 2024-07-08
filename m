Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6405913ACC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720428983; cv=none; b=bLXryvSj6AHAp/SrYq0E67KV4Jv8WjERNYdcsR9ziu4AJWIkSrOW3/PbWEO1CbbYjWuZKLgTQJpMFsOGMM4YYVXcOxTpuqVz4aTiNNhRa2+rgH7AcSXkNEHfqavPAg07ATqoySJSpg6E3InHod4cp/qr/BxxlQ5G4XADgehD8KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720428983; c=relaxed/simple;
	bh=CuUnHP8EiqNg5u7HAc2izUKIb4hUMayQRsil10JoN7M=;
	h=To:Subject:From:Message-Id:Date; b=K/ZsssxNtKYI6bRY6M8a87oZLky+L61uxGcF7cKzfX4svOSWARZ1rWo+a3hu1UTalpnWNU8PMa1IE88EXKg4vJf8AFfoS77uTFuD2abfkJkEBaGGcDFb1OTG5qE0qLq1KAWYLF2+xJAZibEJaIl5JxkhrpkjUPn3kiqnuHIg8Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LO2JPqoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LO2JPqoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91F3C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720428982;
	bh=CuUnHP8EiqNg5u7HAc2izUKIb4hUMayQRsil10JoN7M=;
	h=To:Subject:From:Date:From;
	b=LO2JPqoy5XHOTvcm88l/wPMJ5JL7Mm1Vmcn2vuqwtAK8qUJMvyLN9j/UbwRtvxGr1
	 /4LMmpckINDtuDAQYqb9RClebOvx/ntP6fYju4C+1yzqxaWH5eLD4qWU4RPpQgQSVH
	 b0fbAu77hqH9lNR6cOO37MM4sVxKjM2QTL4be0WHmkkrpuUUqLVSuSHVL4gIscDtih
	 b4LJUGFYT4bZSFOTdixkt8yrTqEnSNuctr7rErolABtatU7wou+5HGaBQLVyvT0ldP
	 /0pHFV6zhg6jNOt5Glb5rP0hcz21D30e8L8XECSk0dRdYP9aOBpvaAu2umg/z+BiXp
	 KA3lOVO2rlfng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CB4C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042898280.26317.5755580304554587934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc1e3480ebc92004c4349b199370070e4b34fc96c4d75a1ddc7df1137642b81
Date: Mon, 08 Jul 2024 08:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720428982
