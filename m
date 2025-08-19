Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F8E21A434
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755602394; cv=none; b=ZJX654Y6YynSOghA5rBAJE1EC2eGrrppr3d6F93j4lsjdj0vMpCIiZxQx1WxYS9Sl1oCGfxZOtUsNfIgQzhyFzKVDWuXPu0U/BuZ7fj74MjneqoX+CAiXgzvQeMC7ZK+j0yQwnrj2R4u6pB/TOoPFjmXAKnxVEDObQ3ekolBlo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755602394; c=relaxed/simple;
	bh=5or4fv4n7VYWT/4sSH1eGB1QZk8zBCreXGEbmXog5NA=;
	h=To:Subject:From:Message-Id:Date; b=PxTxZmtUtc66gCW7LSrZbhUAwemCQ6WmrWYkHqU4AtYOfGqKxoi/69ZgFn7ilrqSXZZI3mRIlSCbmyYL7Zc9ENLrAetTOXk9GVbh/qcJCxWbvYq3nvVebVGec4S7CXo7ZJxB3D1h7ghn0mMYLhRaI0pLsVwwTOWh3o3fjt1s/4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVfuS/ER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVfuS/ER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0A4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755602393;
	bh=5or4fv4n7VYWT/4sSH1eGB1QZk8zBCreXGEbmXog5NA=;
	h=To:Subject:From:Date:From;
	b=cVfuS/ERN4sIVxR3XbneIVWW7A2zEHycjf3JQU6lgzpOBCUfNg1wwqqGAO9h6J2xG
	 qaO0pRuwk9NEBDFNaeR7YR0qt1mxEAxdMyo8/Q8FGuvQlVaaWwSh0Gq2uTWo0PTt0x
	 aaeyupyMYXdHbDheEF/FN1/xo/SO3ObwuuL9KYSpeQKGCRKmC1I9vVXkWNViqqVsZ0
	 37gZyd1hnRXJeabzFXUEDvNpztRRYWxyi4Xyx5pBQeko0kEey9xtc3cOGDnbZMZDOW
	 STtWo4AnPmuHYtbkzy2+h0UYBSDK3OAH7wGVL4J+SM0PDYO0DKQIim29IEscTFuzRy
	 385d57+ZIfHlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E0CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560239357.14526.1904467378394849309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6480816342b3cfe7b5b0f96a259dfc4741ecf06559faeaea6f0718c1f2f2249c
Date: Tue, 19 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755602393
