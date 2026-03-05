Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0434C37B3EC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772705694; cv=none; b=FXJ51uz+EliK2nNR4+uxMFr8Td0KLEj2V3fOya4pGFWIp6eFgYXxuTpYigIel7pMxK1+TF69A5PZOZSPrrsleBHBn1AbqUAkvlSYNATFiOSBVyG771f5UX4ZA+HURIrhSTc0dimzHbE0VushWZnpHR83NPixji0CYU1V8aKda3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772705694; c=relaxed/simple;
	bh=R7G3HmvNahDrpE2mr9QIa6tnfKC45Qi2SpOmOyijOrg=;
	h=To:Subject:From:Message-Id:Date; b=puW2Qqp65g5eagRfDX0Ku7Ax1n47qlWXSBIEzNKH+gtEybdcyHJU1Mq4b0CHP/17bJCGWGb2wWc6CUifRZCZGbI3Xo1C8M/xrhJkjw3UpQccra72ngjx7f4TJRrCpYdYin2Vnwl9tvq+C79r/StWfDHJOwQbNA8tXjKTgSg/tuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p11BHf6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p11BHf6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A8DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772705693;
	bh=R7G3HmvNahDrpE2mr9QIa6tnfKC45Qi2SpOmOyijOrg=;
	h=To:Subject:From:Date:From;
	b=p11BHf6iZ7s83d6Gi5TC/Xjo0NC/jvvmmGUDKAmY9HIL5jFYXESzHCtViRWSTT4Dp
	 dm+OdLzNE5km2wE9U7Dv2CBj+FB1Ya7EinVeogMfHRBBS7/BdvCvOZfuasGmMzbORy
	 oqdwqP/CzcPJSDhv8AeHlwudsudX7L3+vdvfCdScSzLGcQVnwAuyDQ2PAosz1DsM+5
	 YvZQ0V0aryT/x3LJLZ7LTZ1KQjQyjnnH6VoqeT1kd65HHmlpnyS/oOE7E39dwUD5Ad
	 qzg/B9UVqBpFY53AESrqPLUMKzYaRJQYGwcRbfrat1EinvVczusfpV/GHABwNj3klh
	 z5eRbqTPetiTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9863EF30928
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270569357.19097.18194798090249550882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0896c948881f7debf55a1cc224dc0ab083cf6f84af2b073fbb6f46709cb9853e
Date: Thu, 05 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772705693
