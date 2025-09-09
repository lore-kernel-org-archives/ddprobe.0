Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102B82D0C70
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757418594; cv=none; b=e12jjU8hDVZzGV33bS/F/TKtdsdPTzD2Tu/RNTdutFs9Lklzw7q4JG6E/56L+GY8MnO+pUYcgYsfCwjar1cVrKQLdCyAeOzyD/RZazGIWc1Q2X9tSXuVYo5zNZKgtsSmtr063xVoRH0FVZfkB2XbRh3RAWh/bRzPamtoeHT5o7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757418594; c=relaxed/simple;
	bh=1mCSBoZmHCtMKI1tHx/ODqMJRxG6OELMjtifxm9Pvvk=;
	h=To:Subject:From:Message-Id:Date; b=Abcd2KwxZWivs+z0aEHasKsRJNiSbb509g7cDkZVhlkkfRFBnkkv4seOREecjjwJ+mKHGQLN3Ztsd+CZVDZkKgSLPhhRdNcBQo2jw6Eg5Ug8ta1T9PMJgtbDPYAECdkq5VGEsnWQ2p2QxuVPVql21gSVC07ndCbuPfw44cuvFzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3nwrSpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3nwrSpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE8FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757418593;
	bh=1mCSBoZmHCtMKI1tHx/ODqMJRxG6OELMjtifxm9Pvvk=;
	h=To:Subject:From:Date:From;
	b=C3nwrSpk2MyU8HCfkXrepNEITV0tw/Lp1aSzW1QYQfZESPz2KTaY5lfX2elnFbBUj
	 A/ZM48QPwUVdrSpnljFqpt7Sq8yPCpFqf2SrOfvKBt9yLOFzONgJDXg+Jegtvu+hZu
	 +j9QYKp5oC2yjXgVSaFLLvIIxYUhz/6evHIKFiTLIk4eat2PRSEVF7uoqedx1cn23r
	 Qh7V9ia1j7kWNt4sfUtmtLjgxIzh9DdeM2Rniu6McQQiZ7+mll8RSTQyaescvbRUmq
	 F1WmAVfVEWjYnXAXcGBgpgQyZvG/NcPJEFehjhJxtjnMifK3q6kSu3riVUofvu652w
	 4laxGup9YGxoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF8CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741859358.2980.17091520001578254581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c65bdc968d284ea17a9acbe22a95b4f08fbdec06744bd89669469e31e0a9899
Date: Tue, 09 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757418593
