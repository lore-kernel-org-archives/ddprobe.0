Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF5D30BBA3
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763682714; cv=none; b=EPwmL4OFbhhgqJ+igLlGFKJWSuGpyoMXNHqKbR5j30cgiTzSFjT63YNMymlTN0/yksx+Am0co4QOjPe1Cc4Y0+qa+zIIqnIPtX23wPPgXWC54/52t5nxBJA2iii5MOIzTPHe6x8yQdZcghUn6dXYsmGWgHF4eoa3Jacvy2QrK/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763682714; c=relaxed/simple;
	bh=UHhcWN7N+E7Q5ziZ+WXXumeZaFd7zfqhw1WNuW69pPM=;
	h=To:Subject:From:Message-Id:Date; b=JEuZ0l31vRWsYtYg7haU1Te/cplyW+vuG645UDpQ7mU/iKblvDvPxW/TZa9hlt7WRjxGPmGwLhv6605KZwuY7Hxkq5MYRh7Jbo/sCV7Kov8vC11ViwyEz9qhctTn6Ej9Rj70cAn/uvZY5ar3Cl7aARyRfEq1wSUiLp40wkP0o9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXdC779I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXdC779I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6299C113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763682713;
	bh=UHhcWN7N+E7Q5ziZ+WXXumeZaFd7zfqhw1WNuW69pPM=;
	h=To:Subject:From:Date:From;
	b=gXdC779Ip5Ci1vq4vK2eA9jBIfetCUywqEsVcQDKKG0z0uLV4cUKul6eo1FlN2g/4
	 zVl1uIIDyaKAhX7OaTYJ+hj50841CnK1EptZ8opMGPpUcSIOB3O3VidxP6/a0ToURj
	 wnxoL3vpTnP7lE28XGe5hSdBpA90QQv9qSQdmc1hobMH8cC6JMwo4QCAG5G4yOZ9zs
	 R4lBcrAJ15d9MQFDGKMzJKVNXQ4vNl6faQIxe3fls6c3T0QU5Oq/gS3r6mgJeoOjdP
	 MdlgO38GvAD8iKHokZ47UPHzaE6mj6nE3sIRDn/Pd2ZePSwcI7SRqBJ2RQfTWwWduU
	 u9AuzR2sse98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9384ECFA457
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368271359.8586.15316600050783513949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d14a6983ad99c197836b7d822e512b0c184a8d79f3f4f1e4b982d2140df9693
Date: Thu, 20 Nov 2025 23:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763682713
