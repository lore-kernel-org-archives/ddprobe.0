Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C9AA32
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746537594; cv=none; b=DXCtpM3sLzEQwi2f/iQI5eZj36Dh5po3bd0CtiZrdPmG1Rm4OsgrJG4MecpXSu8cj8uwavUIDyn8gtzXxnQjr/B3SYM7K+eKAtE6Mz1IPvaaAqf9hJDVRzVxAN3wxzydTwLqTrv4FH10gKNMNHK5pEAgwhEYJ87pHxo4lPlwios=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746537594; c=relaxed/simple;
	bh=UiDj0yYngOZHonk7/5fVeLGiP/bE4tvAYiK9eAG/TgI=;
	h=To:Subject:From:Message-Id:Date; b=aSvpSvIeSCOToUBeR6pn/Bx9PuEAOdzELObm+1yZDaQGsCPAyN9eAHDvv8nQQSvfPPS0W4gTTiGnxbLg/5G+HK3UWXGpNu4hDf2zc047Hw0KePKNOpZ7qFfAtXtTIcvgSvj4AHBqf2aOyYGFqlXWbzgNx43AEx0ibzsejam054Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=focl3rlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="focl3rlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB5CC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746537593;
	bh=UiDj0yYngOZHonk7/5fVeLGiP/bE4tvAYiK9eAG/TgI=;
	h=To:Subject:From:Date:From;
	b=focl3rlDRRydpvtQIgOfsZHziNkpoSCKnW1WFI5GrpvkTvKn0Nh3Fmz+/jBWFKBZN
	 CPgJz629xLZbxlrSVZCpvIeTL3tdYnarud1bAe604uWbjXIfLlpNLn6p7oA3ZSWSBC
	 xCaUKxZu9Pg3YLvBkkv56OZeGVifFb+zUFUT4LvKmRKlO562hI62/27qrg4uApYC5d
	 A1+cJImdRcazgrtzyruedR00kQ10Yq2+6RPmdDdoYfaKBV4R26Emgc5KfYNQN4T1y5
	 +AotQLkyLi9UcZoNoz41JaDoPVTjRcIF9i/g89n1fUae9U41n5k/ZE0UHKx2XLnXsE
	 kVN2RKlJL0KFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E494C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653759357.30285.8168667858834641083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a0ae70224e6c1823ef237ff8952786deab0e18685013e549ee24ba8e2435e6
Date: Tue, 06 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746537593
