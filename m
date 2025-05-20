Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D0025B682
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747724994; cv=none; b=jPNxojW+t371jq8cYDVNvkkmYXgNV7LMatY3WCQYpcZz5g738vBuMeNRc1aRIZziiPnf37MURiHN9tUVOW+SThPMMjVkNSacmh07/CgQCajAmnuJBm6Cxa1Y8JAREo2jVvVN+nCWP+8zgSy2dxaMDdoZHV0Qd+c/LGLGZV66F+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747724994; c=relaxed/simple;
	bh=wDOS6oaWNuaea/rg3bv8fsJUl3keOgb/hwY1WXkniFE=;
	h=To:Subject:From:Message-Id:Date; b=nI7+Y34JqHjtcFvS7ndz9c8jcSwkDzTAI4H5kalCeRDxkjCoBnpjpsaGok+GFYYyO4NJ9bA9b/qEx+zo2Ed2eUBgSv/1DzqlrRE4N+SBZQxy1sAvGJKDEID/W5GwILLXbJ1KR8A3vO8KagB60SRB0O18iWhsIeJ2lHiTPscajfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssdj8BGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssdj8BGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747724993;
	bh=wDOS6oaWNuaea/rg3bv8fsJUl3keOgb/hwY1WXkniFE=;
	h=To:Subject:From:Date:From;
	b=ssdj8BGJ+0OoEGy82qejNWQwqJp1FW4gUCrQqND7RzwowRyb0nqxEd3CK0VkD2kTF
	 jZvt/b0SXJebofSPvAOCe0DX+JJmHCx+eJLjlBEK+yT9U3iITiiyKFEh0fVln9ynKS
	 38kzFVyR/rF5p4NrQ+CWbtZMcZ2VAZC3ePEg60HBA0eyvx3ej1KUdC+6sdKaqpWqL2
	 Cm7VPsNWguUnr37vYZMdEe9xuopqDEzhMsrftg2OfT3aIBWfR0vF7TPiZrUxBwokJL
	 KUWSdqh3W0nYZWh7kOAzA5orauAcGIfpO+tcAWrbJNcVZVi9WjOG9FOnA2JNCfeiZk
	 3ZATw2qVqv/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B5AC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772499357.8903.17125499059098363474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e7bc52b817771d1354b50169d0311da15c91e14e33f1c49835b783b478ff9d
Date: Tue, 20 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747724993
