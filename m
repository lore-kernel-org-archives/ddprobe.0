Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8F013D638
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770266034; cv=none; b=YdpyKp9j1B0emdv61YpskFwUz9+drBnyDd0hoR7g7iocwXCOta8b94Bynt9VDss0ga/8zv/HnjzCjTOyC1StCApa7zEOkrpU7DlTyE5JAqo5CFaCvSL2Hd0iohEMQ5Cy7p87UBgLQB8v1jHyeL2qAOqNYToe/7NYWpJehQRiD9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770266034; c=relaxed/simple;
	bh=+hD4ygJinqlbN54kNKIXeVWHaJMeyJBiGrWWICBlcoU=;
	h=To:Subject:From:Message-Id:Date; b=aIa4M33ndQJYQ4BaJBAYCdDNQrxSKxkHoHKGDSF2gKtW68+wyVVPUDZgngsUJwpTf7zb4Pv/RO/2qvfMRxp2W+qjmd519LoiM8E5nu0XIg28880/TsfSonfokoQRA+gwJhzmM3amJC2k2y/9vUJIU5LamaOZhu1wTob/1aYY+J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNIdscZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNIdscZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48ECC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770266033;
	bh=+hD4ygJinqlbN54kNKIXeVWHaJMeyJBiGrWWICBlcoU=;
	h=To:Subject:From:Date:From;
	b=tNIdscZUyBq8ILwdJ0J+/b8QIQH9TJEFj8fKZLw4QGHLeCpZB3N3Ikj19NAAzqco2
	 +HmW/jW/G0ktuen+tZFzQBYDTz1f0tWoJxZ66JsC3MfP6db+jppsa4YyZ/zmuc/SHt
	 21U/FmzHU/65iwxakAQ5V0LPfSIGGZSU3fv/DFvdmDH3RXclspcb3zeeIK8MkOrzeM
	 GpsD7bDez5P2TBmVH49gn1zR1+ijfxLbE6gfpcNnE2djGraual0Kr4g/xuL8GiluPe
	 wFeiG992/wZ3afQSxtEehSWVHEIQgR8UHQlQ0ikZPTsZ/TYtkxZfm0VN7G1ODAg4BG
	 IUZPZvFFxEkMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F225EA7966
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026603360.8663.7080493644799187693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc49d5fbcc259fce1054fb3223eb56170f363d815f24e58fbcaa7d784281de4
Date: Thu, 05 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770266033
