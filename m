Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EEF48CFC
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775915854; cv=none; b=JUD7p0BvXjWlRbQlzaKPRxikFmF5qVmFH36k93S2KdE+vi7zLB9EDiUfyrRYP+uwTzXRqmJtnofVXn180i9D6A2zXwkjcx6cmHvv4sEOt1e3wTjpjR5TbDZ46zfyBEl486eTnlfK1eEJfK4RXJRNvbFgsQb3vNwRWX3qHhytgPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775915854; c=relaxed/simple;
	bh=uXxb+hqJ68geoK0WcmPKsXxnhDmNep+ncoKNI+yKSRw=;
	h=To:Subject:From:Message-Id:Date; b=inNb2VsXrXegxXCjPBlJhdke8VkZhmkkbZ3mexhhVDHa+/qT/oOD4PYJQ/9lJO5mOFSzdf6+7vHH3UkKC2JPZqwyAiXZC4MZjMTYEBEactq0a9UKKmAFQ141lPBIslattKbjXRpJH8q5kYQNj2JF23yEwcX/6MnQlZiwvdhMhzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYmKC8M1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYmKC8M1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1DCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775915853;
	bh=uXxb+hqJ68geoK0WcmPKsXxnhDmNep+ncoKNI+yKSRw=;
	h=To:Subject:From:Date:From;
	b=cYmKC8M1sIzjy33BTmI/tkXM2gmyAjwkK6GhG8WfK/IMxaeskC/buCPOF+RPH8Rli
	 BnvRUz6VdqkLizUiLJi9noGqSHZASlTX03b7wlH3BnCI88JNPzjTejYBdTB7aJJyRc
	 DCvsVb0YNnqdCJrH73TQZE5PNMsIKAbfDEsadd50n0kf76/gPPFmXkoHIiqBOUsDzO
	 /xN8I0x0HMVkLx6cdll/I1q8i2izK8bn1p4kGwUU5qDn3rXeRqa+5sIQqEo9GHMf+v
	 V72hRWOnPADGknhst8ciFeUq1Rb0ocTZ6ufKk2Ct2oU1bzXY2r2qy4sjlEubExS4tC
	 SCVPRPvXGt4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A902EF3ED4F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591585368.24180.10325070766562540402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a89d313f7c1a09246509d72d3962ee6545b797580082114d94c0ff5cd01105
Date: Sat, 11 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775915853
