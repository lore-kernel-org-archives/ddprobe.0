Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066C01E878
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709826497; cv=none; b=BjFymIa//FwOSMCfzStNR58gwA6icMg+Q62L3ul+iKQN3rP06/HmIum2wjhfinjRKVshsx9sEEEzbSZQp7Ydh9ULfnbkPOlMM3sMaY/KHxfu0UOjUechmzEjFB+4VRinz4E+CFFPTFjACXc0k+4c7Sq9JV2Ss0VXfc6fs4qWa9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709826497; c=relaxed/simple;
	bh=3W/x8GJ3XScP0wJ0B2cltDWtik2hvv4Y4NGPCvK/VIk=;
	h=To:Subject:From:Message-Id:Date; b=jUdEJQdcIElX4QyMqOwqwgmeDYMydUlH+brTbKqVK2oi2oLB6M/Tgfej+N3AhgcsIWV43JZ6QPS5/2BCtcHu87ZVPfPwM0SwSB3xI8utffzjFXQww54AR1OUfyLc5Ny0jNaym+YMHW4H2BD+EuDtu449pWB99bAB65z0BYcEVCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXRxRH73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXRxRH73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B923C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709826496;
	bh=3W/x8GJ3XScP0wJ0B2cltDWtik2hvv4Y4NGPCvK/VIk=;
	h=To:Subject:From:Date:From;
	b=XXRxRH73hSu8BkAdg6BfDubjAXxR8Gdrg/0SBB725YATMLDsQZrGxDjMx8fVBjw0W
	 Sk+NNDQY4il47FcdBPEkE1IAhLTbsc2SGfqq2Q8MxnDxxL2++haDgjRD4JWRDGKUAM
	 QThTwoMNX0+NfLhPekw1snKLkNy6rR3NUcctzBO6uQL8mzNXFPVYkIxknqJWCNgosL
	 c6x+WUm27Th9R8xrHR23qPB1CRZxr8Kw03hQmEHL3LaytsvQ4uFv3oFNXoC5mn7Mp4
	 5lSVT1s+nu2Ec6bNZPcXWoxIAKO/+dGiD6Q3HHgOsIXINf8k+tMhju5UrVzeJhx1Tw
	 I/XMHEh+rxZLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64736C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170982649639.3168.10630401329313348081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28741c147acf04b2a556bf14db87e5e1e5de8d8da366cdd1eaa6af36c6741642
Date: Thu, 07 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709826496
