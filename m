Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF397E110
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732345554; cv=none; b=KiIAHeInaeWqkLN+LMCXna+00h2Fp8VQIV8lIGPiXJ+/fslrbrb1vp2tMMcrp4i/v5F1xJ+PJprmVD08EFk3qejxXQq1L7kvK7keZOAQbJnHDynJosTr2R8r01N+LORkBDwIRiQxA4SfC2aCF/D6KLbBqFtudMH9sVPxVk7grtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732345554; c=relaxed/simple;
	bh=u0uZPOZgu1GDNsOSpgYCcl3da5X4PzVpJ2MpCB5s2bQ=;
	h=To:Subject:From:Message-Id:Date; b=sJIDDpmTU4TFI8hmRERtLbXUKBV7RLysxmOhaGICnkvUvKxjUU0xpDHTKZ6eF/Hil4ra4niGcAgr2SkmO7eJ7MGY/S6CPEAXGqypQFjF/CHvhwZ/PZfm4PCnr2OEa5i0gUl1vaa6DB/7ANtT0aer+FbyTWvSQdOcTcoIXidaH7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e22iUWIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e22iUWIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC97C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732345553;
	bh=u0uZPOZgu1GDNsOSpgYCcl3da5X4PzVpJ2MpCB5s2bQ=;
	h=To:Subject:From:Date:From;
	b=e22iUWIMyvnPp7QMRpjeggpxzJA/8VJNz37onQg2xIUajFrxtobKE9bzb/RxF8MJy
	 Edua0cQ54VVzZfitH6FGAc7dNWPKZtIEduzMHr1vLJYxqYfkoR8VdMkJm0M5AdYXOP
	 KYKdSWKrbRThegy4N2NmsG78U4ZUf1yFKB9Mz9m5jMeJCIBgLDMYlyOzz630PKcckW
	 DfWn2ANOmf//TqoTFasgphPcjWHzLDQbtrYa28sq7TH5YusOzQNkyTFIbaX/li2jjN
	 WKDeKumyF5GGKCAESqMHDWNNcHoXcsVNOokNPx/LpXSQgtSk1Ya/Vfc7h+9Zezmhjj
	 yoY/PmY16XN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC15E6ADE8
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234555359.14558.18326192446329555884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82248c83befb249f3ed667871efc2359e7e155aae1d04fb2e4f319c72726f729
Date: Sat, 23 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732345553
