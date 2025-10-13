Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9592EA743
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760387394; cv=none; b=bKy+HeV77fueDBL/TmaxBRvNCPRWW9giIalemQ4glcc0+lt7opPovGCNKcgNJHIe/JIkq6xiuFCd6fnOInCNjTY7YvWqBeyZWmoXDB1pWLFU9RV/ZJ1X7DZdIVb/EVj0fe/YJh1EUHmG7S2qJCc+LLAxNw3kRDySsUYlWnUVTww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760387394; c=relaxed/simple;
	bh=w98Xr9Pd96s+zaMHIBMcbBwBWKZCb8r6MUgcH49JFt0=;
	h=To:Subject:From:Message-Id:Date; b=Jtk8WaX2p4/Pg0IQV0eUJHAW5wlUSmxcnNbxPif1cMc7EPPh8V5+bCRMAm40oti3/AWIL4xifapM9njGAKnocKbSPakYWgdOYxWfYszDEDRdiQp96JXU/+wCgUiSsKkPZrKoa6Wxq1N9Yb9P5vdhr0BaSshVIzSXrq3qmupEizU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArmFhXqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArmFhXqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B36C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760387393;
	bh=w98Xr9Pd96s+zaMHIBMcbBwBWKZCb8r6MUgcH49JFt0=;
	h=To:Subject:From:Date:From;
	b=ArmFhXqaAb7janESKYlS5YBrRJj9n97VgewfDvn+sGoYmhhfJzyakWiZCrBhd2Fb7
	 /KYTrZu6eP+FyN6X7S9tAcLITm4DQ+TBhB6o+P44upantlARtlGeMpkF8gaqSWeBqN
	 xeaMrI6aZjd3sJXNfgXvicDGpWHscfj3p0JrXT5oj88BwMFdiOC7ly0r729ED7f5WT
	 uaNeaEIM6jBZNqiwtdXlOTG5i5/G/7WpXD+M233ArwxOgZcoZ6cFaYD3BpYOBlFIVG
	 uYI9RcIZGTr0YJTFwCl84SaLW+0wkAH9U8bwyVcF6ALaki5egc+v7Tp/CWDmGIdPIi
	 YAMnBzdb3kRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099ECCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038739358.25596.8848102019043762430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115030e9677cbb66b739f46255bb0ada5b2351178872f11466af3cf2bbcc7099
Date: Mon, 13 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760387393
