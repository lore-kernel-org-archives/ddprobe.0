Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EE815ECCA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717619243; cv=none; b=bVqxaBhAA7d7TYapruALUCOY5rs2ESm3ucMfzKnJJthVyAeqQuiJQsccm91rT0WrjiPt1GPmPsrsnvreko3J38po2qYAKg9rZkQEdJVwbE9cwtz3dETgKDKC6M/3zK1OJzN1QVFNmRgv6F8KachPes7vpGa07w7LN4z3dZCk03o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717619243; c=relaxed/simple;
	bh=Gqd4Y3KgkWDXrLnSIqqKut06xMU2CiFEbop9rUF2BOQ=;
	h=To:Subject:From:Message-Id:Date; b=BqVnR5QG1iMOq9I4ztRykBpAimoUy59zyIzA0eucKm4X/+pNehEQnkT+3RGnW4J7nODrYE1NKTb5BldyLgUo20kimCSBW920UWVPDD3YLCl/1Zd8ZDDlGadQmxn6lntEtzFshcpVsiAFf48/IFUj06vQIxFXXWE5RVN10EJCMPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsWjEreS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsWjEreS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D86C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717619242;
	bh=Gqd4Y3KgkWDXrLnSIqqKut06xMU2CiFEbop9rUF2BOQ=;
	h=To:Subject:From:Date:From;
	b=PsWjEreSQ9kVrgJx2lw4H0uxu2q30dL4wxg5rwBfK4t5fxtj95uJLuZL7TJ7nab9J
	 lvQe4CfZIQjJ6tU94QhuE4qvz6/1Lq2EzjVJcFe6A7GJV5spYAVNWEjJVVU9s+6fI/
	 cCAMTdwffxXz+wihvFLVnMrRn7tXan82stg8GcX549vQOrKMSoFtwl0z7g7rAvHNKG
	 ZI3kM6HHyzfstWCenWf9+T6R2YNRQUlZcyIkxq5O5cXC0o9Y8wWQwkIZP7ZDI5yqyg
	 5CHrckUs2jJ8OPK8tjhUvOMuJJZlaKxkuhDYrf+g0JrRtRXCEFJN6xswgKTtQubXGa
	 BBiwfBOrXPKjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE3FC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761924277.28116.10893673310212173343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3df3cacf2b6298976bf4f7119b38e29c07f7d926ace70a9e368ca69870b21e3
Date: Wed, 05 Jun 2024 20:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717619242
