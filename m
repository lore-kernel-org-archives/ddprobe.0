Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4263D23C8C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744145394; cv=none; b=UExzZ5ICBy4LEWlbu+JlJLapLZ8KGtS5t2/3deXWYWI09bGz9JnUufLZJEO+/pO7DtpJiHSHtYbFJO9Blpgy/QJEDx7fIex+TF6bxtU0X5RHHiFFZ+Bd4LsORYEgD5U4BliJk9v3cOzgdZCDDmLjW81cLmaOxsvAnfAdFImmqK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744145394; c=relaxed/simple;
	bh=yvWEZG90TK6SGaJFFgQIB3+v5wIBIAWJ0dGv3YvqFdA=;
	h=To:Subject:From:Message-Id:Date; b=EjmP0vGwpfJZl01Ohk+k+55Z0/HkHTfcKoLKmus7x8WNayvssg9bNjvKKn2euvXTWcalCT3Va+beeobefKPLd6FO4VkNBp4X+BeaA7mvr9GsXQx5iCEO9k8ronVNK8sUoCqxjtysMWaAY0DIYvwUHEc2zxePP3Mh60KXggWPI5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+N9ApMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+N9ApMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FA7C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744145393;
	bh=yvWEZG90TK6SGaJFFgQIB3+v5wIBIAWJ0dGv3YvqFdA=;
	h=To:Subject:From:Date:From;
	b=R+N9ApMVMpw4x/Agv58WFQBaXcnNBXvguj1PLyadTeoRUR3hyzzlZbNY3RPbQgUTz
	 riqXvGbIn3DftCG2Kw95H4sn/2OpcyiTpVIKTqKGSunZC4qmnrmbjtglvMZy0N339G
	 Szq0blzzCCJKnI2ZMYr7b+rg7cqMvQbf4zAHt/9SFxdB/1Q3oJw9YKH5jdqy8ONMwW
	 EoaQ0XkqHc/f8iYDAu8N/Wj17QBBUFlIBLlHKaBGFk0g/yc+IboEO0xJxIQVZPlLB5
	 mqfjGfEajJpYpYhEA2XkqwcHLsR5dW0nkpDxqXUdxQ9O5sOY6IZGNTeAs+RxoB+K20
	 beVpKczT9nrtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9357BC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414539359.30055.11616681854666060326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc3a8e36b61e88b0656f693e719731cf87c17b0a3e9992bca31f1afa9fbc1ca
Date: Tue, 08 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744145393
